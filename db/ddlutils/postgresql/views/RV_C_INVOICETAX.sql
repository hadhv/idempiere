﻿DROP VIEW rv_c_invoicetax;

CREATE OR REPLACE VIEW rv_c_invoicetax AS 
 SELECT i.ad_client_id, i.ad_org_id, i.isactive, t.created, t.createdby, t.updated, t.updatedby, t.c_tax_id, i.c_invoice_id, i.c_doctype_id, i.c_bpartner_id, bp.taxid, bp.istaxexempt, i.dateacct, i.dateinvoiced, i.issotrx, i.documentno, i.ispaid, i.c_currency_id, 
        CASE
            WHEN charat(d.docbasetype, 3) = 'C' THEN t.taxbaseamt * (-1)
            ELSE t.taxbaseamt
        END AS taxbaseamt, 
        CASE
            WHEN charat(d.docbasetype, 3) = 'C' THEN t.taxamt * (-1)
            ELSE t.taxamt
        END AS taxamt, 
        CASE
            WHEN charat(d.docbasetype, 3) = 'C' THEN (t.taxbaseamt + t.taxamt) * (-1)
            ELSE t.taxbaseamt + t.taxamt
        END AS taxlinetotal, 
        CASE
            WHEN charat(d.docbasetype, 3) = 'C' THEN (-1)
            ELSE 1
        END AS multiplier, t.ad_org_id AS c_invoicetax_ad_org_id, t.isactive AS c_invoicetax_isactive, t.istaxincluded AS c_invoicetax_istaxincluded, t.processed AS c_invoicetax_processed, i.ad_orgtrx_id AS c_invoice_ad_orgtrx_id, i.ad_user_id, i.c_bpartner_location_id, i.c_activity_id, i.c_campaign_id, i.c_charge_id, i.c_conversiontype_id, i.c_doctypetarget_id, i.c_dunninglevel_id, i.chargeamt, i.c_order_id, i.c_payment_id, i.c_paymentterm_id AS c_invoice_c_paymentterm_id, i.created AS c_invoice_created, i.createdby AS c_invoice_createdby, i.dateprinted, i.description AS c_invoice_description, i.docaction, i.docstatus, i.dunninggrace, i.generateto, i.invoicecollectiontype, i.isapproved, i.isdiscountprinted, i.isindispute, i.ispayschedulevalid, i.isprinted, i.isselfservice AS c_invoice_isselfservice, i.istaxincluded AS c_invoice_istaxincluded, i.istransferred, i.m_pricelist_id, i.m_rma_id, i.paymentrule, i.poreference AS c_invoice_poreference, i.posted, i.processedon, i.processing, i.ref_invoice_id, i.reversal_id, i.salesrep_id, i.sendemail, i.totallines, i.updated AS c_invoice_updated, i.updatedby AS c_invoice_updatedby, i.user1_id, i.user2_id, bp.acqusitioncost AS c_bp_acqusitioncost, bp.actuallifetimevalue AS c_bp_actuallifetimevalue, bp.ad_language AS c_bp_ad_language, bp.ad_orgbp_id AS c_bp_ad_orgbp_id, bp.ad_org_id AS c_bp_ad_org_id, bp.bpartner_parent_id AS c_bp_bpartner_parent_id, bp.c_bp_group_id AS c_bp_c_bp_group_id, bp.c_dunning_id AS c_bp_c_dunning_id, bp.c_greeting_id AS c_bp_c_greeting_id, bp.c_invoiceschedule_id AS c_bp_c_invoiceschedule_id, bp.c_paymentterm_id AS c_bp_c_paymentterm_id, bp.created AS c_bp_created, bp.createdby AS c_bp_createdby, bp.c_taxgroup_id AS c_bp_c_taxgroup_id, bp.deliveryrule AS c_bp_deliveryrule, bp.deliveryviarule AS c_bp_deliveryviarule, bp.description AS c_bp_description, bp.dunninggrace AS c_bp_dunninggrace, bp.duns, bp.firstsale AS c_bp_firstsale, bp.flatdiscount AS c_bp_flatdiscount, bp.freightcostrule AS c_bp_freightcostrule, bp.invoicerule AS c_bp_invoicerule, bp.isactive AS c_bp_isactive, bp.iscustomer AS c_bp_iscustomer, bp.isdiscountprinted AS c_bp_isdiscountprinted, bp.isemployee AS c_bp_isemployee, bp.ismanufacturer AS c_bp_ismanufacturer, bp.isonetime AS c_bp_isonetime, bp.ispotaxexempt AS c_bp_ispotaxexempt, bp.isprospect AS c_bp_isprospect, bp.issalesrep AS c_bp_issalesrep, bp.issummary AS c_bp_issummary, bp.isvendor, bp.logo_id AS c_bp_logo_id, bp.m_discountschema_id, bp.m_pricelist_id AS c_bp_m_pricelist_id, bp.naics, bp.name AS c_bp_name, bp.name2 AS c_bp_name2, bp.numberemployees, bp.paymentrule AS c_bp_paymentrule, bp.paymentrulepo AS c_bp_paymentrulepo, bp.po_discountschema_id, bp.po_paymentterm_id, bp.po_pricelist_id, bp.poreference AS c_bp_poreference, bp.potentiallifetimevalue, bp.rating AS c_bp_rating, bp.salesrep_id AS c_bp_salesrep_id, bp.salesvolume, bp.sendemail AS c_bp_sendemail, bp.shareofcustomer, bp.shelflifeminpct, bp.so_creditlimit, bp.socreditstatus, bp.so_creditused, bp.so_description, bp.totalopenbalance AS c_bp_totalopenbalance, bp.updated AS c_bp_updated, bp.updatedby AS c_bp_updatedby, bp.url AS c_bp_url, bp.value AS c_bp_value
   FROM c_invoicetax t
   JOIN c_invoice i ON t.c_invoice_id = i.c_invoice_id
   JOIN c_doctype d ON i.c_doctype_id = d.c_doctype_id
   JOIN c_bpartner bp ON i.c_bpartner_id = bp.c_bpartner_id;

