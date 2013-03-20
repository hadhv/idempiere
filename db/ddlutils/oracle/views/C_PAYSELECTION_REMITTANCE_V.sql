DROP VIEW c_payselection_remittance_v;

CREATE OR REPLACE VIEW c_payselection_remittance_v AS 
 SELECT psl.ad_client_id, psl.ad_org_id, 
 'en_US' AS ad_language, 
 psl.c_payselection_id, psl.c_payselectionline_id, psl.c_payselectioncheck_id, psl.paymentrule, psl.line, psl.openamt, psl.payamt, psl.discountamt, psl.differenceamt, i.c_bpartner_id, i.documentno, i.dateinvoiced, i.grandtotal, i.grandtotal AS amtinwords, psl.c_invoice_id, psl.created AS c_payselectionline_created, psl.createdby AS c_payselectionline_createdby, psl.description AS c_payselectionline_description, psl.isactive AS c_payselectionline_isactive, psl.ismanual, psl.issotrx AS c_payselectionline_issotrx, psl.processed, psl.updated AS c_payselectionline_updated, psl.updatedby AS c_payselectionline_updatedby, i.ad_org_id AS c_invoice_ad_org_id, i.ad_orgtrx_id, i.ad_user_id, i.c_activity_id, i.c_bpartner_location_id, i.c_campaign_id, i.c_charge_id, i.c_conversiontype_id, i.c_currency_id, i.c_doctype_id, i.c_doctypetarget_id, i.c_dunninglevel_id, i.chargeamt, i.c_payment_id, i.c_paymentterm_id, i.c_project_id, i.created AS c_invoice_created, i.createdby AS c_invoice_createdby, i.dateacct, i.dateordered, i.dateprinted, i.description AS c_invoice_description, i.docaction, i.docstatus, i.dunninggrace, i.generateto, i.invoicecollectiontype, i.isactive AS c_invoice_isactive, i.isapproved, i.isdiscountprinted, i.isindispute, i.ispayschedulevalid, i.isprinted, i.isselfservice AS c_invoice_isselfservice, i.issotrx AS c_invoice_issotrx, i.istaxincluded, i.istransferred, i.m_pricelist_id, i.m_rma_id, i.paymentrule AS c_invoice_paymentrule, i.poreference, i.posted, i.processedon, i.processing, i.ref_invoice_id, i.reversal_id, i.sendemail, i.totallines, i.updated AS c_invoice_updated, i.updatedby AS c_invoice_updatedby, i.user1_id, i.user2_id
   FROM c_payselectionline psl
   JOIN c_invoice i ON psl.c_invoice_id = i.c_invoice_id;

