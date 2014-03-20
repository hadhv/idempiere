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

/**
 * 
 * @author Low Heng Sin
 *
 */
public class Locationbox extends EditorBox
{
	/**
	 * 
	 */
	private static final long serialVersionUID = -9199586798474147872L;

	public Locationbox()
    {
         super();
         txt.setReadonly(true);
    }

     public Locationbox(String text)
     {
         this();
         setText(text);
     }

	@Override
	public void setEnabled(boolean enabled) {
		super.setEnabled(enabled);
		txt.setReadonly(true);
	}

	@Override
	public boolean isEnabled() {
		return btn.isEnabled();
	}
     
     
}
