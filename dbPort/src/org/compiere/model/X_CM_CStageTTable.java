/******************************************************************************
 * Product: Compiere ERP & CRM Smart Business Solution                        *
 * Copyright (C) 1999-2006 ComPiere, Inc. All Rights Reserved.                *
 * This program is free software;
 you can redistribute it and/or modify it    *
 * under the terms version 2 of the GNU General Public License as published   *
 * by the Free Software Foundation. This program is distributed in the hope   *
 * that it will be useful, but WITHOUT ANY WARRANTY;
 without even the implied *
 * warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.           *
 * See the GNU General Public License for more details.                       *
 * You should have received a copy of the GNU General Public License along    *
 * with this program;
 if not, write to the Free Software Foundation, Inc.,    *
 * 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA.                     *
 * For the text or an alternative of this public license, you may reach us    *
 * ComPiere, Inc., 2620 Augustine Dr. #245, Santa Clara, CA 95054, USA        *
 * or via info@compiere.org or http://www.compiere.org/license.html           *
 *****************************************************************************/
package org.compiere.model;

/** Generated Model - DO NOT CHANGE */
import java.util.*;
import java.sql.*;
import java.math.*;
import org.compiere.util.*;
/** Generated Model for CM_CStageTTable
 *  @author Jorg Janke (generated) 
 *  @version Release 2.6.0a - $Id$ */
public class X_CM_CStageTTable extends PO
{
/** Standard Constructor
@param ctx context
@param CM_CStageTTable_ID id
@param trxName transaction
*/
public X_CM_CStageTTable (Properties ctx, int CM_CStageTTable_ID, String trxName)
{
super (ctx, CM_CStageTTable_ID, trxName);
/** if (CM_CStageTTable_ID == 0)
{
setCM_CStageTTable_ID (0);
setCM_CStage_ID (0);
setCM_TemplateTable_ID (0);
setName (null);
}
 */
}
/** Load Constructor 
@param ctx context
@param rs result set 
@param trxName transaction
*/
public X_CM_CStageTTable (Properties ctx, ResultSet rs, String trxName)
{
super (ctx, rs, trxName);
}
/** AD_Table_ID=881 */
public static final int Table_ID=881;

/** TableName=CM_CStageTTable */
public static final String Table_Name="CM_CStageTTable";

protected static KeyNamePair Model = new KeyNamePair(881,"CM_CStageTTable");

protected BigDecimal accessLevel = new BigDecimal(6);
/** AccessLevel
@return 6 - System - Client 
*/
protected int get_AccessLevel()
{
return accessLevel.intValue();
}
/** Load Meta Data
@param ctx context
@return PO Info
*/
protected POInfo initPO (Properties ctx)
{
POInfo poi = POInfo.getPOInfo (ctx, Table_ID);
return poi;
}
/** Info
@return info
*/
public String toString()
{
StringBuffer sb = new StringBuffer ("X_CM_CStageTTable[").append(get_ID()).append("]");
return sb.toString();
}
/** Set Stage T.Table.
@param CM_CStageTTable_ID Containet Stage Template Table */
public void setCM_CStageTTable_ID (int CM_CStageTTable_ID)
{
if (CM_CStageTTable_ID < 1) throw new IllegalArgumentException ("CM_CStageTTable_ID is mandatory.");
set_ValueNoCheck ("CM_CStageTTable_ID", new Integer(CM_CStageTTable_ID));
}
/** Get Stage T.Table.
@return Containet Stage Template Table */
public int getCM_CStageTTable_ID() 
{
Integer ii = (Integer)get_Value("CM_CStageTTable_ID");
if (ii == null) return 0;
return ii.intValue();
}
/** Set Web Container Stage.
@param CM_CStage_ID Web Container Stage contains the staging content like images, text etc. */
public void setCM_CStage_ID (int CM_CStage_ID)
{
if (CM_CStage_ID < 1) throw new IllegalArgumentException ("CM_CStage_ID is mandatory.");
set_ValueNoCheck ("CM_CStage_ID", new Integer(CM_CStage_ID));
}
/** Get Web Container Stage.
@return Web Container Stage contains the staging content like images, text etc. */
public int getCM_CStage_ID() 
{
Integer ii = (Integer)get_Value("CM_CStage_ID");
if (ii == null) return 0;
return ii.intValue();
}
/** Set Template Table.
@param CM_TemplateTable_ID CM Template Table Link */
public void setCM_TemplateTable_ID (int CM_TemplateTable_ID)
{
if (CM_TemplateTable_ID < 1) throw new IllegalArgumentException ("CM_TemplateTable_ID is mandatory.");
set_ValueNoCheck ("CM_TemplateTable_ID", new Integer(CM_TemplateTable_ID));
}
/** Get Template Table.
@return CM Template Table Link */
public int getCM_TemplateTable_ID() 
{
Integer ii = (Integer)get_Value("CM_TemplateTable_ID");
if (ii == null) return 0;
return ii.intValue();
}
/** Set Description.
@param Description Optional short description of the record */
public void setDescription (String Description)
{
if (Description != null && Description.length() > 255)
{
log.warning("Length > 255 - truncated");
Description = Description.substring(0,254);
}
set_Value ("Description", Description);
}
/** Get Description.
@return Optional short description of the record */
public String getDescription() 
{
return (String)get_Value("Description");
}
/** Set Name.
@param Name Alphanumeric identifier of the entity */
public void setName (String Name)
{
if (Name == null) throw new IllegalArgumentException ("Name is mandatory.");
if (Name.length() > 120)
{
log.warning("Length > 120 - truncated");
Name = Name.substring(0,119);
}
set_Value ("Name", Name);
}
/** Get Name.
@return Alphanumeric identifier of the entity */
public String getName() 
{
return (String)get_Value("Name");
}
/** Get Record ID/ColumnName
@return ID/ColumnName pair
*/public KeyNamePair getKeyNamePair() 
{
return new KeyNamePair(get_ID(), getName());
}
/** Set Other SQL Clause.
@param OtherClause Other SQL Clause */
public void setOtherClause (String OtherClause)
{
if (OtherClause != null && OtherClause.length() > 2000)
{
log.warning("Length > 2000 - truncated");
OtherClause = OtherClause.substring(0,1999);
}
set_Value ("OtherClause", OtherClause);
}
/** Get Other SQL Clause.
@return Other SQL Clause */
public String getOtherClause() 
{
return (String)get_Value("OtherClause");
}
/** Set Record ID.
@param Record_ID Direct internal record ID */
public void setRecord_ID (int Record_ID)
{
if (Record_ID <= 0) set_ValueNoCheck ("Record_ID", null);
 else 
set_ValueNoCheck ("Record_ID", new Integer(Record_ID));
}
/** Get Record ID.
@return Direct internal record ID */
public int getRecord_ID() 
{
Integer ii = (Integer)get_Value("Record_ID");
if (ii == null) return 0;
return ii.intValue();
}
/** Set Sql WHERE.
@param WhereClause Fully qualified SQL WHERE clause */
public void setWhereClause (String WhereClause)
{
if (WhereClause != null && WhereClause.length() > 2000)
{
log.warning("Length > 2000 - truncated");
WhereClause = WhereClause.substring(0,1999);
}
set_Value ("WhereClause", WhereClause);
}
/** Get Sql WHERE.
@return Fully qualified SQL WHERE clause */
public String getWhereClause() 
{
return (String)get_Value("WhereClause");
}
}
