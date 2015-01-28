-- Nortel Avaya
-- plugin_id: 9225


DELETE FROM plugin WHERE id = "9225"; 
DELETE FROM plugin_sid where plugin_id = "9225";
DELETE FROM software_cpe where plugin = 'nortel_avaya:9225';

INSERT IGNORE INTO plugin (id, type, name, description, product_type, vendor) VALUES (9225, 1, 'nortel_avaya', 'nortel_avaya', '24', 'nortel_avaya');
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (9225, 1, NULL, NULL, 'Connection closed (inactivity logout), IP address', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (9225, 2, NULL, NULL, 'Connection closed (user logout), IP address', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (9225, 3, NULL, NULL, 'Session closed (inactivity logout), IP address', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (9225, 4, NULL, NULL, 'Session closed (user logout), IP address', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (9225, 5, NULL, NULL, 'Session opened from IP address', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (9225, 6, NULL, NULL, 'Successful connection from IP address', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (9225, 7, NULL, NULL, 'Link Down Trap for Port', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (9225, 8, NULL, NULL, 'Link Up Trap for Port', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (9225, 9, NULL, NULL, 'PoE Port Detection Status', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (9225, 10, NULL, NULL, 'S telnet', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (9225, 11, NULL, NULL, 'Trap', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (9225, 12, NULL, NULL, 'S ssh', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (9225, 2000000000, NULL, NULL, 'generic', 2, 2);

INSERT IGNORE INTO software_cpe (cpe, name, version, line, vendor, plugin) VALUES ('cpe:/o:nortel_avaya:nortel_avaya:nortel_avaya', 'nortel_avaya','nortel_avaya','nortel_avaya','nortel_avaya', 'nortel_avaya:9225');
