CREATE OR REPLACE VIEW rv_c_invoice AS 
 SELECT i.c_invoice_id, i.ad_client_id, i.ad_org_id, i.isactive, i.created, i.createdby, i.updated, i.updatedby, i.issotrx, i.documentno, i.docstatus, i.docaction, i.isprinted, i.isdiscountprinted, i.processing, i.processed, i.istransferred, i.ispaid, i.c_doctype_id, i.c_doctypetarget_id, i.c_order_id, i.description, i.isapproved, i.salesrep_id, i.dateinvoiced, i.dateprinted, i.dateacct, i.c_bpartner_id, i.c_bpartner_location_id, i.ad_user_id, b.c_bp_group_id, i.poreference, i.dateordered, i.c_currency_id, i.c_conversiontype_id, i.paymentrule, i.c_paymentterm_id, i.m_pricelist_id, i.c_campaign_id, i.c_project_id, i.c_activity_id, i.ispayschedulevalid, i.invoicecollectiontype, loc.c_country_id, loc.c_region_id, loc.postal, loc.city, i.c_charge_id, 
        CASE
            WHEN charat(d.docbasetype, 3) = 'C' THEN i.chargeamt * (-1)
            ELSE i.chargeamt
        END AS chargeamt, 
        CASE
            WHEN charat(d.docbasetype, 3) = 'C' THEN i.totallines * (-1)
            ELSE i.totallines
        END AS totallines, 
        CASE
            WHEN charat(d.docbasetype, 3) = 'C' THEN i.grandtotal * (-1)
            ELSE i.grandtotal
        END AS grandtotal, 
        CASE
            WHEN charat(d.docbasetype, 3) = 'C' THEN (-1)
            ELSE 1
        END AS multiplier, i.ad_orgtrx_id AS c_invoice_ad_orgtrx_id, i.c_conversiontype_id AS c_invoice_c_conversiontype_id, i.c_dunninglevel_id, i.c_payment_id, i.dateordered AS c_invoice_dateordered, i.dunninggrace, i.generateto, i.isindispute, i.ispayschedulevalid AS c_invoice_ispayschedulevalid, i.isselfservice AS c_invoice_isselfservice, i.istaxincluded, i.m_rma_id, i.posted, i.processedon, i.ref_invoice_id, i.reversal_id, i.sendemail, i.user1_id, i.user2_id, b.acqusitioncost AS c_bp_acqusitioncost, b.actuallifetimevalue AS c_bp_actuallifetimevalue, b.ad_language AS c_bp_ad_language, b.ad_orgbp_id AS c_bp_ad_orgbp_id, b.ad_org_id AS c_bp_ad_org_id, b.bpartner_parent_id AS c_bp_bpartner_parent_id, b.c_dunning_id AS c_bp_c_dunning_id, b.c_greeting_id AS c_bp_c_greeting_id, b.c_invoiceschedule_id AS c_bp_c_invoiceschedule_id, b.c_paymentterm_id AS c_bp_c_paymentterm_id, b.created AS c_bp_created, b.createdby AS c_bp_createdby, b.c_taxgroup_id AS c_bp_c_taxgroup_id, b.deliveryrule AS c_bp_deliveryrule, b.deliveryviarule AS c_bp_deliveryviarule, b.description AS c_bp_description, b.dunninggrace AS c_bp_dunninggrace, b.duns AS c_bp_duns, b.firstsale AS c_bp_firstsale, b.flatdiscount AS c_bp_flatdiscount, b.freightcostrule AS c_bp_freightcostrule, b.invoicerule AS c_bp_invoicerule, b.isactive AS c_bp_isactive, b.iscustomer AS c_bp_iscustomer, b.isdiscountprinted AS c_bp_isdiscountprinted, b.isemployee AS c_bp_isemployee, b.ismanufacturer AS c_bp_ismanufacturer, b.isonetime AS c_bp_isonetime, b.ispotaxexempt AS c_bp_ispotaxexempt, b.isprospect AS c_bp_isprospect, b.issalesrep AS c_bp_issalesrep, b.issummary AS c_bp_issummary, b.istaxexempt AS c_bp_istaxexempt, b.isvendor AS c_bp_isvendor, b.logo_id AS c_bp_logo_id, b.m_discountschema_id AS c_bp_m_discountschema_id, b.m_pricelist_id AS c_bp_m_pricelist_id, b.naics AS c_bp_naics, b.name AS c_bp_name, b.name2 AS c_bp_name2, b.numberemployees AS c_bp_numberemployees, b.paymentrule AS c_bp_paymentrule, b.paymentrulepo AS c_bp_paymentrulepo, b.po_discountschema_id AS c_bp_po_discountschema_id, b.po_paymentterm_id AS c_bp_po_paymentterm_id, b.po_pricelist_id AS c_bp_po_pricelist_id, b.poreference AS c_bp_poreference, b.potentiallifetimevalue AS c_bp_potentiallifetimevalue, b.rating AS c_bp_rating, b.referenceno AS c_bp_referenceno, b.salesrep_id AS c_bp_salesrep_id, b.salesvolume AS c_bp_salesvolume, b.sendemail AS c_bp_sendemail, b.shareofcustomer AS c_bp_shareofcustomer, b.shelflifeminpct AS c_bp_shelflifeminpct, b.so_creditlimit AS c_bp_so_creditlimit, b.socreditstatus AS c_bp_socreditstatus, b.so_creditused AS c_bp_so_creditused, b.so_description AS c_bp_so_description, b.taxid, b.totalopenbalance AS c_bp_totalopenbalance, b.updated AS c_bp_updated, b.updatedby AS c_bp_updatedby, b.url AS c_bp_url, b.value AS c_bp_value, bpl.ad_org_id AS c_bp_location_ad_org_id, bpl.c_bpartner_id AS c_bp_location_c_bpartner_id, bpl.c_location_id AS c_bp_location_c_location_id, bpl.created AS c_bp_location_created, bpl.createdby AS c_bp_location_createdby, bpl.c_salesregion_id, bpl.fax AS c_bp_location_fax, bpl.isactive AS c_bp_location_isactive, bpl.isbillto, bpl.isdn, bpl.ispayfrom, bpl.isremitto, bpl.isshipto, bpl.name AS c_bp_location_name, bpl.phone AS c_bp_location_phone, bpl.phone2 AS c_bp_location_phone2, bpl.updated AS c_bp_location_updated, bpl.updatedby AS c_bp_location_updatedby, loc.address1, loc.address2, loc.address3, loc.address4, loc.ad_org_id AS c_location_ad_org_id, loc.c_city_id, loc.created AS c_location_created, loc.createdby AS c_location_createdby, loc.isactive AS c_location_isactive, loc.postal_add, loc.regionname, loc.updated AS c_location_updated, loc.updatedby AS c_location_updatedby
   FROM c_invoice i
   JOIN c_doctype d ON i.c_doctype_id = d.c_doctype_id
   JOIN c_bpartner b ON i.c_bpartner_id = b.c_bpartner_id
   JOIN c_bpartner_location bpl ON i.c_bpartner_location_id = bpl.c_bpartner_location_id
   JOIN c_location loc ON bpl.c_location_id = loc.c_location_id;

