DELETE FROM plugin WHERE id = '9235';
DELETE FROM plugin_sid where plugin_id = '9235';
DELETE FROM software_cpe where plugin = 'watchguard_x515:9235';
INSERT IGNORE INTO software_cpe (cpe, name, version, line, vendor, plugin) VALUES ('cpe:/o:Watchguard:x515:-','x515','-','','Watchguard', 'watchguard_x515:9235');
INSERT IGNORE INTO plugin (id, type, name, description, product_type, vendor) VALUES (9235, 1, 'watchguard_x515', 'watchguard_x515', '10', 'Watchguard');
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (9235, 1, NULL, NULL, 'admd', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (9235, 2, NULL, NULL, 'dhcpd', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (9235, 3, NULL, NULL, 'dns-proxy', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (9235, 4, NULL, NULL, 'firewall', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (9235, 5, NULL, NULL, 'http-proxy', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (9235, 6, NULL, NULL, 'https-proxy', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (9235, 7, NULL, NULL, 'iked', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (9235, 8, NULL, NULL, 'kernel', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (9235, 9, NULL, NULL, 'oss-daemon', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (9235, 10, NULL, NULL, 'pppd', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (9235, 11, NULL, NULL, 'pxy', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (9235, 12, NULL, NULL, 'sessiond', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (9235, 13, NULL, NULL, 'sigd', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (9235, 14, NULL, NULL, 'smtp-proxy', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (9235, 15, NULL, NULL, 'wapid', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (9235, 16, NULL, NULL, 'wgagent', 2, 2);
