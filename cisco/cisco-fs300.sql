-- cisco fs300 switch
-- plugin_id: 9222


DELETE FROM plugin WHERE id = "9222"; 
DELETE FROM plugin_sid where plugin_id = "9222";
DELETE FROM software_cpe where plugin = 'cisco-fs300:9222';

INSERT IGNORE INTO plugin (id, type, name, description, product_type, vendor) VALUES (9222, 1, 'Cisco-FS300 Switch', 'Cisco Switch', '24', 'Cisco');
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (9222, 1, NULL, NULL, 'AAA-I-CONNECT', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (9222, 2, NULL, NULL, 'AAA-I-DISCONNECT', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (9222, 3, NULL, NULL, 'AAA-W-REJECT', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (9222, 4, NULL, NULL, 'COPY-I-FILECPY', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (9222, 5, NULL, NULL, 'COPY-N-TRAP', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (9222, 6, NULL, NULL, 'LINK-I-Up', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (9222, 7, NULL, NULL, 'LINK-W-Down', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (9222, 8, NULL, NULL, 'MNGINF-W-ACL', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (9222, 9, NULL, NULL, 'SNMP-W-SNMPAUTHFAIL', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (9222, 10, NULL, NULL, 'STP-W-PORTSTATUS', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (9222, 11, NULL, NULL, 'SYSLOG-N-SYSLOGCHANGE', 2, 2);

INSERT IGNORE INTO software_cpe (cpe, name, version, line, vendor, plugin) VALUES ('cpe:/o:cisco:FS_300_switch:fs_300', 'FS 300 Switch','fs_300','Cisco FS 300 Switch','Cisco', 'cisco-fs300:9222');
