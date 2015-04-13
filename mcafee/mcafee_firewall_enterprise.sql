-- McAfee Firewall Enterprise
-- plugin_id: 9230


DELETE FROM plugin WHERE id = '9230';
DELETE FROM plugin_sid where plugin_id = '9230';
DELETE FROM software_cpe where plugin = 'mcafee_firewall_enterprise:9230';
INSERT IGNORE INTO software_cpe (cpe, name, version, line, vendor, plugin) VALUES ('cpe:/o:McAfee:Firewall Enterprise:','Firewall Enterprise','','','McAfee', 'mcafee_firewall_enterprise:9230');
INSERT IGNORE INTO plugin (id, type, name, description, product_type, vendor) VALUES (9230, 1, 'mcafee_firewall_enterprise', 'mcafee_firewall_enterprise', '10', 'McAfee');
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (9230, 1, NULL, NULL, 'ACLD', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (9230, 2, NULL, NULL, 'DNS Proxy', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (9230, 3, NULL, NULL, 'HTTP Proxy', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (9230, 4, NULL, NULL, 'Kernel', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (9230, 5, NULL, NULL, 'Kernel IP Filter', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (9230, 6, NULL, NULL, 'Mail Proxy', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (9230, 7, NULL, NULL, 'Syslog Cron', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (9230, 8, NULL, NULL, 'Syslog Daemon', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (9230, 9, NULL, NULL, 'Syslog User', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (9230, 10, NULL, NULL, 'System', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (9230, 29000, NULL, NULL, 'Generic Event', 2, 2);
