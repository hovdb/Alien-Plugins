-- McAfee Firewall Enterprise
-- plugin_id: 9230


DELETE FROM plugin WHERE id = "9230"; 
DELETE FROM plugin_sid where plugin_id = "9230";
DELETE FROM software_cpe where plugin = 'mcaffee_firewall_enterprise:9230';

INSERT IGNORE INTO plugin (id, type, name, description, product_type, vendor) VALUES (9230, 1, 'mcafee_firewall_enterprise', 'firewall', '24', 'mcafee');
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (9230, 1, NULL, NULL, 'http proxy reason', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (9230, 2, NULL, NULL, 'http proxy rule', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (9230, 3, NULL, NULL, 'http req', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (9230, 4, NULL, NULL, 'netprobe', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (9230, 5, NULL, NULL, 'config change', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (9230, 6, NULL, NULL, 'http URL', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (9230, 7, NULL, NULL, 'generic-event', 2, 2);


INSERT IGNORE INTO software_cpe (cpe, name, version, line, vendor, plugin) VALUES ('cpe:/o:mcafee:firewall:enterprise', 'Firewall','Enterprise','','McAfee', 'mcafee_firewall_enterprise:9230');
