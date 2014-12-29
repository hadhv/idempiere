-- Jan 21, 2009 11:11:03 AM ECT
-- Action Notice
UPDATE AD_Message SET MsgTip='Indicates that the quantity on hand is less that safety stock',Updated=TO_TIMESTAMP('2009-01-21 11:11:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Message_ID=53022
;

-- Jan 21, 2009 11:11:03 AM ECT
-- Action Notice
UPDATE AD_Message_Trl SET IsTranslated='N' WHERE AD_Message_ID=53022
;

-- Jan 21, 2009 11:19:44 AM ECT
-- Action Notice
UPDATE AD_Message SET MsgText='Beginning Available Less Than Zero',Updated=TO_TIMESTAMP('2009-01-21 11:19:44','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Message_ID=53022
;

-- Jan 21, 2009 11:19:44 AM ECT
-- Action Notice
UPDATE AD_Message_Trl SET IsTranslated='N' WHERE AD_Message_ID=53022
;

-- Jan 21, 2009 11:26:29 AM ECT
-- Action Notice
UPDATE AD_Message SET MsgTip='Indicates that a supply order should be created to satisfy a negative projected on hand. This message is created if the flag ''Create Plan'' is No or if a new demand appears within the time fence.',Updated=TO_TIMESTAMP('2009-01-21 11:26:29','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Message_ID=53011
;

-- Jan 21, 2009 11:26:29 AM ECT
-- Action Notice
UPDATE AD_Message_Trl SET IsTranslated='N' WHERE AD_Message_ID=53011
;

-- Jan 21, 2009 11:26:30 AM ECT
-- Action Notice
UPDATE AD_Message SET MsgTip=NULL,Updated=TO_TIMESTAMP('2009-01-21 11:26:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Message_ID=53012
;

-- Jan 21, 2009 11:26:30 AM ECT
-- Action Notice
UPDATE AD_Message_Trl SET IsTranslated='N' WHERE AD_Message_ID=53012
;

-- Jan 21, 2009 11:37:33 AM ECT
-- Action Notice
UPDATE AD_Element SET Description='Indicates whether planned orders will be generated by MRP', Help='Indicates whether planned orders will be generated by MRP, if this flag is not just MRP generate a ''Create'' action notice', Name='Create Plan', PrintName='Create Plan',Updated=TO_TIMESTAMP('2009-01-21 11:37:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Element_ID=53258
;

-- Jan 21, 2009 11:37:33 AM ECT
-- Action Notice
UPDATE AD_Element_Trl SET IsTranslated='N' WHERE AD_Element_ID=53258
;

-- Jan 21, 2009 11:37:33 AM ECT
-- Action Notice
UPDATE AD_Column SET ColumnName='IsCreatePlan', Name='Create Plan', Description='Indicates whether planned orders will be generated by MRP', Help='Indicates whether planned orders will be generated by MRP, if this flag is not just MRP generate a ''Create'' action notice' WHERE AD_Element_ID=53258
;

-- Jan 21, 2009 11:37:34 AM ECT
-- Action Notice
UPDATE AD_Process_Para SET ColumnName='IsCreatePlan', Name='Create Plan', Description='Indicates whether planned orders will be generated by MRP', Help='Indicates whether planned orders will be generated by MRP, if this flag is not just MRP generate a ''Create'' action notice', AD_Element_ID=53258 WHERE UPPER(ColumnName)='ISCREATEPLAN' AND IsCentrallyMaintained='Y' AND AD_Element_ID IS NULL
;

-- Jan 21, 2009 11:37:34 AM ECT
-- Action Notice
UPDATE AD_Process_Para SET ColumnName='IsCreatePlan', Name='Create Plan', Description='Indicates whether planned orders will be generated by MRP', Help='Indicates whether planned orders will be generated by MRP, if this flag is not just MRP generate a ''Create'' action notice' WHERE AD_Element_ID=53258 AND IsCentrallyMaintained='Y'
;

-- Jan 21, 2009 11:37:34 AM ECT
-- Action Notice
UPDATE AD_Field SET Name='Create Plan', Description='Indicates whether planned orders will be generated by MRP', Help='Indicates whether planned orders will be generated by MRP, if this flag is not just MRP generate a ''Create'' action notice' WHERE AD_Column_ID IN (SELECT AD_Column_ID FROM AD_Column WHERE AD_Element_ID=53258) AND IsCentrallyMaintained='Y'
;

-- Jan 21, 2009 11:37:34 AM ECT
-- Action Notice
UPDATE AD_PrintFormatItem SET PrintName='Create Plan', Name='Create Plan' WHERE IsCentrallyMaintained='Y' AND EXISTS (SELECT * FROM AD_Column c WHERE c.AD_Column_ID=AD_PrintFormatItem.AD_Column_ID AND c.AD_Element_ID=53258)
;

-- Jan 21, 2009 12:06:51 PM ECT
-- Action Notice
UPDATE AD_Message SET MsgText='No Data Planning', MsgTip='indicates that there is no data planning for this product',Updated=TO_TIMESTAMP('2009-01-21 12:06:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Message_ID=53021
;

-- Jan 21, 2009 12:06:51 PM ECT
-- Action Notice
UPDATE AD_Message_Trl SET IsTranslated='N' WHERE AD_Message_ID=53021
;

-- Jan 21, 2009 12:22:08 PM ECT
-- Action Notice
UPDATE AD_Message SET MsgTip='Indicates that a supply order was created for a quantity less than the minimum quantity set in Data Product Planning',Updated=TO_TIMESTAMP('2009-01-21 12:22:08','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Message_ID=53017
;

-- Jan 21, 2009 12:22:08 PM ECT
-- Action Notice
UPDATE AD_Message_Trl SET IsTranslated='N' WHERE AD_Message_ID=53017
;

-- Jan 21, 2009 12:24:27 PM ECT
-- Action Notice
UPDATE AD_Message SET MsgTip='Indicates that a supply order was created for a quantity less than the minimum quantity set in Product Planning Data',Updated=TO_TIMESTAMP('2009-01-21 12:24:27','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Message_ID=53017
;

-- Jan 21, 2009 12:24:27 PM ECT
-- Action Notice
UPDATE AD_Message_Trl SET IsTranslated='N' WHERE AD_Message_ID=53017
;

-- Jan 21, 2009 12:25:16 PM ECT
-- Action Notice
UPDATE AD_Menu SET Description='Product Planning Data', Name='Product Planning Data',Updated=TO_TIMESTAMP('2009-01-21 12:25:16','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Menu_ID=53031
;

-- Jan 21, 2009 12:25:16 PM ECT
-- Action Notice
UPDATE AD_Menu_Trl SET IsTranslated='N' WHERE AD_Menu_ID=53031
;

-- Jan 21, 2009 12:25:28 PM ECT
-- Action Notice
UPDATE AD_Menu SET Description='Product Planning', Name='Product Planning',Updated=TO_TIMESTAMP('2009-01-21 12:25:28','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Menu_ID=53031
;

-- Jan 21, 2009 12:25:28 PM ECT
-- Action Notice
UPDATE AD_Menu_Trl SET IsTranslated='N' WHERE AD_Menu_ID=53031
;

-- Jan 21, 2009 12:25:47 PM ECT
-- Action Notice
UPDATE AD_Menu SET Description='Maintain Product Planning Data', Name='Product Planning Data',Updated=TO_TIMESTAMP('2009-01-21 12:25:47','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Menu_ID=53032
;

-- Jan 21, 2009 12:25:47 PM ECT
-- Action Notice
UPDATE AD_Menu_Trl SET IsTranslated='N' WHERE AD_Menu_ID=53032
;

-- Jan 21, 2009 12:26:17 PM ECT
-- Action Notice
UPDATE AD_Window SET Description='Maintain Product Planning Data', Help='in the Window Product Planning Data you enter the product information which will serve as a base to execute the algorithms of Material Requirement Planning, along with MPS, open orders and inventories', Name='Product Planning Data',Updated=TO_TIMESTAMP('2009-01-21 12:26:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Window_ID=53007
;

-- Jan 21, 2009 12:26:17 PM ECT
-- Action Notice
UPDATE AD_Window_Trl SET IsTranslated='N' WHERE AD_Window_ID=53007
;

-- Jan 21, 2009 12:33:17 PM ECT
-- Action Notice
UPDATE AD_Message SET MsgTip='Indicates that a supply order was created for a quantity for a quantity greater than than maximum quantity set in the Product Planning Data',Updated=TO_TIMESTAMP('2009-01-21 12:33:17','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Message_ID=53018
;

-- Jan 21, 2009 12:33:17 PM ECT
-- Action Notice
UPDATE AD_Message_Trl SET IsTranslated='N' WHERE AD_Message_ID=53018
;

-- Jan 21, 2009 12:35:18 PM ECT
-- Action Notice
UPDATE AD_Message SET MsgText='Do not exist default Locator for this Warehouse', MsgTip='Do not exist default Locator for this Warehouse',Updated=TO_TIMESTAMP('2009-01-21 12:35:18','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Message_ID=53039
;

-- Jan 21, 2009 12:35:18 PM ECT
-- Action Notice
UPDATE AD_Message_Trl SET IsTranslated='N' WHERE AD_Message_ID=53039
;

-- Jan 21, 2009 1:01:11 PM ECT
-- Action Notice
UPDATE AD_Message SET MsgTip='Indicates that a schedule supply order is due before it is needed and should be delayed, or demand rescheduled to an earlier date.',Updated=TO_TIMESTAMP('2009-01-21 13:01:11','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Message_ID=53012
;

-- Jan 21, 2009 1:01:11 PM ECT
-- Action Notice
UPDATE AD_Message_Trl SET IsTranslated='N' WHERE AD_Message_ID=53012
;

-- Jan 21, 2009 1:05:19 PM ECT
-- Action Notice
UPDATE AD_Message SET MsgTip='Indicates that a scheduled supply order is due after is needed and should be rescheduled to an earlier date, or demand rescheduled to a later date.',Updated=TO_TIMESTAMP('2009-01-21 13:05:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Message_ID=53013
;

-- Jan 21, 2009 1:05:19 PM ECT
-- Action Notice
UPDATE AD_Message_Trl SET IsTranslated='N' WHERE AD_Message_ID=53013
;

-- Jan 21, 2009 1:11:40 PM ECT
-- Action Notice
UPDATE AD_Message SET MsgTip='Indicates that a supply order was not released when it was due, and should be either released or expedited now, or the demand rescheduled for a later date.',Updated=TO_TIMESTAMP('2009-01-21 13:11:40','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Message_ID=53016
;

-- Jan 21, 2009 1:11:40 PM ECT
-- Action Notice
UPDATE AD_Message_Trl SET IsTranslated='N' WHERE AD_Message_ID=53016
;

-- Jan 21, 2009 1:12:51 PM ECT
-- Action Notice
UPDATE AD_Message SET MsgTip='Indicates that a supply order was not released when it was due, and should be either released or expedited now, or the demand rescheduled for a later date.	',Updated=TO_TIMESTAMP('2009-01-21 13:12:51','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Message_ID=53016
;

-- Jan 21, 2009 1:12:51 PM ECT
-- Action Notice
UPDATE AD_Message_Trl SET IsTranslated='N' WHERE AD_Message_ID=53016
;

-- Jan 21, 2009 1:13:57 PM ECT
-- Action Notice
UPDATE AD_Message SET MsgText='Time Fence Conflict',Updated=TO_TIMESTAMP('2009-01-21 13:13:57','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Message_ID=53019
;

-- Jan 21, 2009 1:13:57 PM ECT
-- Action Notice
UPDATE AD_Message_Trl SET IsTranslated='N' WHERE AD_Message_ID=53019
;

-- Jan 21, 2009 1:15:03 PM ECT
-- Action Notice
UPDATE AD_Message SET MsgText='Past Due', MsgTip='Indicates that a schedule supply order receipt is past due.',Updated=TO_TIMESTAMP('2009-01-21 13:15:03','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Message_ID=53020
;

-- Jan 21, 2009 1:15:03 PM ECT
-- Action Notice
UPDATE AD_Message_Trl SET IsTranslated='N' WHERE AD_Message_ID=53020
;

-- Jan 21, 2009 1:17:33 PM ECT
-- Action Notice
UPDATE AD_Message SET MsgTip='Indicates that there is an unsatisfied material requirement inside the planning time fence for this product. You sould either manually schedule and expedite orders to fill this demand or delay fulfillment of the requirement that created the demand.',Updated=TO_TIMESTAMP('2009-01-21 13:17:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Message_ID=53019
;

-- Jan 21, 2009 1:17:33 PM ECT
-- Action Notice
UPDATE AD_Message_Trl SET IsTranslated='N' WHERE AD_Message_ID=53019
;

-- Jan 21, 2009 1:19:19 PM ECT
-- Action Notice
UPDATE AD_Message SET MsgTip='Indicates that there is an unsatisfied material requirement inside the planning time fence for this product. You should either manually schedule and expedite orders to fill this demand or delay fulfillment of the requirement that created the demand.',Updated=TO_TIMESTAMP('2009-01-21 13:19:19','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Message_ID=53019
;

-- Jan 21, 2009 1:19:19 PM ECT
-- Action Notice
UPDATE AD_Message_Trl SET IsTranslated='N' WHERE AD_Message_ID=53019
;

-- Jan 21, 2009 1:26:17 PM ECT
-- Action Notice
INSERT INTO AD_Message (AD_Client_ID,AD_Message_ID,AD_Org_ID,Created,CreatedBy,EntityType,IsActive,MsgText,MsgTip,MsgType,Updated,UpdatedBy,Value) VALUES (0,53051,0,TO_TIMESTAMP('2009-01-21 13:26:01','YYYY-MM-DD HH24:MI:SS'),100,'EE01','Y','Shipment Due','Indicates that a shiment for a Order Distribution is due. Action should be taken at the source warehouse to ensure that the orser is received on time.','I',TO_TIMESTAMP('2009-01-21 13:26:01','YYYY-MM-DD HH24:MI:SS'),100,'DRP-040')
;

-- Jan 21, 2009 1:26:17 PM ECT
-- Action Notice
INSERT INTO AD_Message_Trl (AD_Language,AD_Message_ID, MsgText,MsgTip, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Message_ID, t.MsgText,t.MsgTip, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Message t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Message_ID=53051 AND EXISTS (SELECT * FROM AD_Message_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Message_ID!=t.AD_Message_ID)
;

-- Jan 21, 2009 1:28:15 PM ECT
-- Action Notice
INSERT INTO AD_Message (AD_Client_ID,AD_Message_ID,AD_Org_ID,Created,CreatedBy,EntityType,IsActive,MsgText,MsgTip,MsgType,Updated,UpdatedBy,Value) VALUES (0,53052,0,TO_TIMESTAMP('2009-01-21 13:28:14','YYYY-MM-DD HH24:MI:SS'),100,'EE01','Y','Shipment Past Due','Indicates that a shiment for a Order Distribution is past due. You should either dalay the orders created the requirement for the product or expedite them when the product does arrive.','I',TO_TIMESTAMP('2009-01-21 13:28:14','YYYY-MM-DD HH24:MI:SS'),100,'DRP-050')
;

-- Jan 21, 2009 1:28:15 PM ECT
-- Action Notice
INSERT INTO AD_Message_Trl (AD_Language,AD_Message_ID, MsgText,MsgTip, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Message_ID, t.MsgText,t.MsgTip, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Message t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Message_ID=53052 AND EXISTS (SELECT * FROM AD_Message_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Message_ID!=t.AD_Message_ID)
;

-- Jan 21, 2009 1:30:26 PM ECT
-- Action Notice
INSERT INTO AD_Message (AD_Client_ID,AD_Message_ID,AD_Org_ID,Created,CreatedBy,EntityType,IsActive,MsgText,MsgTip,MsgType,Updated,UpdatedBy,Value) VALUES (0,53053,0,TO_TIMESTAMP('2009-01-21 13:30:22','YYYY-MM-DD HH24:MI:SS'),100,'EE01','Y','No source of supply','Indicates that the Product Planning Data for this product does not specify a valid network distribution.','I',TO_TIMESTAMP('2009-01-21 13:30:22','YYYY-MM-DD HH24:MI:SS'),100,'DRP-060')
;

-- Jan 21, 2009 1:30:26 PM ECT
-- Action Notice
INSERT INTO AD_Message_Trl (AD_Language,AD_Message_ID, MsgText,MsgTip, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Message_ID, t.MsgText,t.MsgTip, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Message t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Message_ID=53053 AND EXISTS (SELECT * FROM AD_Message_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Message_ID!=t.AD_Message_ID)
;

-- Jan 21, 2009 1:36:12 PM ECT
-- Action Notice
UPDATE AD_Message SET MsgTip='Indicates that a shiment for a Order Distribution is due. Action should be taken at the source warehouse to ensure that the order is received on time.',Updated=TO_TIMESTAMP('2009-01-21 13:36:12','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Message_ID=53051
;

-- Jan 21, 2009 1:36:12 PM ECT
-- Action Notice
UPDATE AD_Message_Trl SET IsTranslated='N' WHERE AD_Message_ID=53051
;

-- Jan 21, 2009 1:36:55 PM ECT
-- Action Notice
UPDATE AD_Message SET MsgTip='Indicates that a shipment for a Order Distribution is due.You should be taken at the source warehouse to ensure that the order is received on time.',Updated=TO_TIMESTAMP('2009-01-21 13:36:55','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Message_ID=53051
;

-- Jan 21, 2009 1:36:55 PM ECT
-- Action Notice
UPDATE AD_Message_Trl SET IsTranslated='N' WHERE AD_Message_ID=53051
;

-- Jan 21, 2009 1:37:58 PM ECT
-- Action Notice
UPDATE AD_Message SET MsgTip='Indicates that a shipment for a Order Distribution is past due. You should either delay the orders created the requirement for the product or expedite them when the product does arrive.',Updated=TO_TIMESTAMP('2009-01-21 13:37:58','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Message_ID=53052
;

-- Jan 21, 2009 1:37:58 PM ECT
-- Action Notice
UPDATE AD_Message_Trl SET IsTranslated='N' WHERE AD_Message_ID=53052
;

-- Jan 21, 2009 1:40:09 PM ECT
-- Action Notice
INSERT INTO AD_Message (AD_Client_ID,AD_Message_ID,AD_Org_ID,Created,CreatedBy,EntityType,IsActive,MsgText,MsgTip,MsgType,Updated,UpdatedBy,Value) VALUES (0,53054,0,TO_TIMESTAMP('2009-01-21 13:40:08','YYYY-MM-DD HH24:MI:SS'),100,'EE01','Y','Beginning Quantity Less Than Zero','Indicates that the quantity on hand is negative.','I',TO_TIMESTAMP('2009-01-21 13:40:08','YYYY-MM-DD HH24:MI:SS'),100,'MRP-140')
;

-- Jan 21, 2009 1:40:09 PM ECT
-- Action Notice
INSERT INTO AD_Message_Trl (AD_Language,AD_Message_ID, MsgText,MsgTip, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Message_ID, t.MsgText,t.MsgTip, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Message t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Message_ID=53054 AND EXISTS (SELECT * FROM AD_Message_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Message_ID!=t.AD_Message_ID)
;

-- Jan 21, 2009 1:53:34 PM ECT
-- Action Notice
UPDATE AD_Message SET MsgTip='Indicates that a supply order should be created to satisfy a negative projected on hand. This message is created if the flag ''Create Plan'' is No.',Updated=TO_TIMESTAMP('2009-01-21 13:53:33','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Message_ID=53011
;

-- Jan 21, 2009 1:53:34 PM ECT
-- Action Notice
UPDATE AD_Message_Trl SET IsTranslated='N' WHERE AD_Message_ID=53011
;

-- Jan 21, 2009 2:04:25 PM ECT
-- Action Notice
UPDATE AD_Message SET MsgTip='Indicate tha a supply order should be released.',Updated=TO_TIMESTAMP('2009-01-21 14:04:25','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Message_ID=53015
;

-- Jan 21, 2009 2:04:25 PM ECT
-- Action Notice
UPDATE AD_Message_Trl SET IsTranslated='N' WHERE AD_Message_ID=53015
;

-- Jan 21, 2009 2:05:30 PM ECT
-- Action Notice
UPDATE AD_Message SET MsgTip='Indicate tha a supply order should be released. if it is a draft order , it must also be approved.',Updated=TO_TIMESTAMP('2009-01-21 14:05:30','YYYY-MM-DD HH24:MI:SS'),UpdatedBy=100 WHERE AD_Message_ID=53015
;

-- Jan 21, 2009 2:05:30 PM ECT
-- Action Notice
UPDATE AD_Message_Trl SET IsTranslated='N' WHERE AD_Message_ID=53015
;

-- Jan 21, 2009 3:05:45 PM ECT
-- Action Notice
INSERT INTO AD_Message (AD_Client_ID,AD_Message_ID,AD_Org_ID,Created,CreatedBy,EntityType,IsActive,MsgText,MsgTip,MsgType,Updated,UpdatedBy,Value) VALUES (0,53055,0,TO_TIMESTAMP('2009-01-21 15:05:43','YYYY-MM-DD HH24:MI:SS'),100,'EE01','Y','Past Due Demand','Indicates that a demand order is past due.','I',TO_TIMESTAMP('2009-01-21 15:05:43','YYYY-MM-DD HH24:MI:SS'),100,'MRP-150')
;

-- Jan 21, 2009 3:05:45 PM ECT
-- Action Notice
INSERT INTO AD_Message_Trl (AD_Language,AD_Message_ID, MsgText,MsgTip, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Message_ID, t.MsgText,t.MsgTip, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Message t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Message_ID=53055 AND EXISTS (SELECT * FROM AD_Message_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Message_ID!=t.AD_Message_ID)
;

-- Jan 21, 2009 7:40:57 PM ECT
-- MRP Info
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,53760,0,'QtyGrossReq',TO_TIMESTAMP('2009-01-21 19:40:48','YYYY-MM-DD HH24:MI:SS'),100,'EE01','Y','Gross Requirements Quantity','Gross Req. Qty',TO_TIMESTAMP('2009-01-21 19:40:48','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jan 21, 2009 7:40:57 PM ECT
-- MRP Info
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=53760 AND EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Element_ID!=t.AD_Element_ID)
;

-- Jan 21, 2009 7:43:10 PM ECT
-- MRP Info
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,EntityType,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,53761,0,'QtyScheduledReceipts',TO_TIMESTAMP('2009-01-21 19:43:09','YYYY-MM-DD HH24:MI:SS'),100,'EE01','Y','Scheduled Receipts Quantity','Scheduled Receipts Qty',TO_TIMESTAMP('2009-01-21 19:43:09','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jan 21, 2009 7:43:10 PM ECT
-- MRP Info
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=53761 AND EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Element_ID!=t.AD_Element_ID)
;

-- Jan 21, 2009 7:47:08 PM ECT
-- MRP Info
INSERT INTO AD_Element (AD_Client_ID,AD_Element_ID,AD_Org_ID,ColumnName,Created,CreatedBy,Description,EntityType,Help,IsActive,Name,PrintName,Updated,UpdatedBy) VALUES (0,53762,0,'QtyOnHandProjected',TO_TIMESTAMP('2009-01-21 19:47:08','YYYY-MM-DD HH24:MI:SS'),100,'On Hand Projected Quantity','EE01','The On Hand Projected Quantity indicates the quantity of a product that is on hand in time line.','Y','On Hand Projected Quantity','On Hand Projected Qty',TO_TIMESTAMP('2009-01-21 19:47:08','YYYY-MM-DD HH24:MI:SS'),100)
;

-- Jan 21, 2009 7:47:08 PM ECT
-- MRP Info
INSERT INTO AD_Element_Trl (AD_Language,AD_Element_ID, Description,Help,Name,PO_Description,PO_Help,PO_Name,PO_PrintName,PrintName, IsTranslated,AD_Client_ID,AD_Org_ID,Created,Createdby,Updated,UpdatedBy) SELECT l.AD_Language,t.AD_Element_ID, t.Description,t.Help,t.Name,t.PO_Description,t.PO_Help,t.PO_Name,t.PO_PrintName,t.PrintName, 'N',t.AD_Client_ID,t.AD_Org_ID,t.Created,t.Createdby,t.Updated,t.UpdatedBy FROM AD_Language l, AD_Element t WHERE l.IsActive='Y' AND l.IsSystemLanguage='Y' AND l.IsBaseLanguage='N' AND t.AD_Element_ID=53762 AND EXISTS (SELECT * FROM AD_Element_Trl tt WHERE tt.AD_Language!=l.AD_Language OR tt.AD_Element_ID!=t.AD_Element_ID)
;

