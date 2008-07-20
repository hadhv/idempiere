/******************************************************************************
 * Copyright (C) 2008 Low Heng Sin                                            *
 * This program is free software; you can redistribute it and/or modify it    *
 * under the terms version 2 of the GNU General Public License as published   *
 * by the Free Software Foundation. This program is distributed in the hope   *
 * that it will be useful, but WITHOUT ANY WARRANTY; without even the implied *
 * warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.           *
 * See the GNU General Public License for more details.                       *
 * You should have received a copy of the GNU General Public License along    *
 * with this program; if not, write to the Free Software Foundation, Inc.,    *
 * 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA.                     *
 *****************************************************************************/
package org.adempiere.webui.component;

import java.util.ArrayList;
import java.util.Enumeration;
import java.util.List;
import java.util.logging.Level;

import org.compiere.model.MTree;
import org.compiere.model.MTreeNode;
import org.compiere.util.CLogger;
import org.compiere.util.Env;
import org.zkoss.lang.Objects;
import org.zkoss.zk.ui.event.Event;
import org.zkoss.zk.ui.event.EventListener;
import org.zkoss.zk.ui.event.Events;
import org.zkoss.zul.SimpleTreeNode;
import org.zkoss.zul.Tree;
import org.zkoss.zul.Treecell;
import org.zkoss.zul.Treecol;
import org.zkoss.zul.Treecols;
import org.zkoss.zul.Treeitem;
import org.zkoss.zul.TreeitemRenderer;
import org.zkoss.zul.Treerow;
import org.zkoss.zul.event.TreeDataEvent;

/**
 * 
 * @author Low Heng Sin
 *
 */
public class SimpleTreeModel extends org.zkoss.zul.SimpleTreeModel implements TreeitemRenderer, EventListener {

	private static final CLogger logger = CLogger.getCLogger(SimpleTreeModel.class);
	
	private boolean itemDraggable;
	private List<EventListener> onDropListners = new ArrayList<EventListener>();

	public SimpleTreeModel(SimpleTreeNode root) {
		super(root);
	}
	
	public static SimpleTreeModel initADTree(Tree tree, int AD_Tree_ID, int windowNo) { 
		MTree vTree = new MTree (Env.getCtx(), AD_Tree_ID, false, true, null);
		MTreeNode root = vTree.getRoot();
		SimpleTreeModel treeModel = SimpleTreeModel.createFrom(root);
		treeModel.setItemDraggable(true);
		treeModel.addOnDropEventListener(new ADTreeOnDropListener(tree, treeModel, vTree, windowNo));
		
		Treecols treeCols = new Treecols();
		tree.appendChild(treeCols);
		Treecol treeCol = new Treecol();
		treeCols.appendChild(treeCol);
		tree.setPageSize(-1);
		try {
			tree.setTreeitemRenderer(treeModel);
			tree.setModel(treeModel);
		} catch (Exception e) {
			logger.log(Level.SEVERE, "Failed to setup tree");
		}
		
		return treeModel;
	}
	
	public static SimpleTreeModel createFrom(MTreeNode root) {
		SimpleTreeModel model = null;
		Enumeration nodeEnum = root.children();
	    
		SimpleTreeNode stRoot = new SimpleTreeNode(root, new ArrayList());
        while(nodeEnum.hasMoreElements()) {
        	MTreeNode childNode = (MTreeNode)nodeEnum.nextElement();
        	SimpleTreeNode stNode = new SimpleTreeNode(childNode, new ArrayList());
        	stRoot.getChildren().add(stNode);
        	if (childNode.getChildCount() > 0) {
        		populate(stNode, childNode);
        	}
        }
        model = new SimpleTreeModel(stRoot);
		return model;
	}

	private static void populate(SimpleTreeNode stNode, MTreeNode root) {
		Enumeration nodeEnum = root.children();
		while(nodeEnum.hasMoreElements()) {
			MTreeNode childNode = (MTreeNode)nodeEnum.nextElement();
			SimpleTreeNode stChildNode = new SimpleTreeNode(childNode, new ArrayList());
			stNode.getChildren().add(stChildNode);
			if (childNode.getChildCount() > 0) {
				populate(stChildNode, childNode);
			}
		}
	}

	public void render(Treeitem ti, Object node) {
		Treecell tc = new Treecell(Objects.toString(node));
		Treerow tr = null;
		if(ti.getTreerow()==null){
			tr = new Treerow();			
			tr.setParent(ti);
			if (isItemDraggable()) {
				tr.setDraggable("true");
			}
			if (!onDropListners.isEmpty()) {
				tr.setDroppable("true");
				tr.addEventListener(Events.ON_DROP, this);
			}
		}else{
			tr = ti.getTreerow(); 
			tr.getChildren().clear();
		}				
		tc.setParent(tr);
		
		ti.setValue(node);
	}

	/**
	 * Add to root
	 * @param newNode
	 */
	public void addNode(SimpleTreeNode newNode) {
		SimpleTreeNode root = (SimpleTreeNode) getRoot();
		root.getChildren().add(newNode);
		fireEvent(root, root.getChildCount() - 1, root.getChildCount() - 1, TreeDataEvent.INTERVAL_ADDED);
	}

	@Override
	public SimpleTreeNode getRoot() {
		return (SimpleTreeNode) super.getRoot();
	}

	@Override
	public SimpleTreeNode getChild(Object parent, int index) {
		return (SimpleTreeNode) super.getChild(parent, index);
	}

	public void removeNode(SimpleTreeNode treeNode) {
		int path[] = this.getPath(getRoot(), treeNode);
		
		if (path != null && path.length > 0) {
			SimpleTreeNode parentNode = getRoot();
			int index = path.length - 1;
			for (int i = 0; i < index; i++) {
				parentNode = getChild(parentNode, path[i]);
			}
			
			
			parentNode.getChildren().remove(path[index]);
			fireEvent(parentNode, path[index], path[index], TreeDataEvent.INTERVAL_REMOVED);
		}
	}
	
	public void setItemDraggable(boolean b) {
		itemDraggable = b;
	}
	
	public boolean isItemDraggable() {
		return itemDraggable;
	}
	
	public void addOnDropEventListener(EventListener listener) {
		onDropListners.add(listener);
	}

	public void onEvent(Event event) throws Exception {
		if (Events.ON_DROP.equals(event.getName())) {
			for (EventListener listener : onDropListners) {
				listener.onEvent(event);
			}
		}
	}

	public SimpleTreeNode getParent(SimpleTreeNode treeNode) {
		int path[] = this.getPath(getRoot(), treeNode);
		
		if (path != null && path.length > 0) {
			SimpleTreeNode parentNode = getRoot();
			int index = path.length - 1;
			for (int i = 0; i < index; i++) {
				parentNode = getChild(parentNode, path[i]);
			}
						
			return parentNode;
		}
		
		return null;
	}

	public void addNode(SimpleTreeNode newParent, SimpleTreeNode newNode,
			int index) {
		newParent.getChildren().add(index, newNode);
		fireEvent(newParent, index, index, TreeDataEvent.INTERVAL_ADDED);
	}
	
	public SimpleTreeNode find(SimpleTreeNode fromNode, int recordId) {
		if (fromNode == null)
			fromNode = getRoot();
		MTreeNode data = (MTreeNode) fromNode.getData();
		if (data.getNode_ID() == recordId) 
			return fromNode;
		if (isLeaf(fromNode)) 
			return null;
		int cnt = getChildCount(fromNode);
		for(int i = 0; i < cnt; i++ ) {
			SimpleTreeNode child = getChild(fromNode, i);
			SimpleTreeNode treeNode = find(child, recordId);
			if (treeNode != null)
				return treeNode;
		}
		return null;
	}
}
