-- Motorola RFS4000
-- plugin_id: 9223


DELETE FROM plugin WHERE id = "9223"; 
DELETE FROM plugin_sid where plugin_id = "9223";

INSERT IGNORE INTO plugin (id, type, name, description, product_type, vendor) VALUES (9223, 1, 'Motorola RFS4000', 'Motorola 802.11N ISC', '24', 'Motorola');
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (9223, 1, NULL, NULL, 'AUTH-6-INFO', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (9223, 2, NULL, NULL, 'DATAPLANE-4-ARPPOISON', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (9223, 3, NULL, NULL, 'DATAPLANE-4-DOSATTACK', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (9223, 4, NULL, NULL, 'DATAPLANE-5-IGMPSNOOP', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (9223, 5, NULL, NULL, 'DOT11-5-WPA_WPA2_FAILED', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (9223, 6, NULL, NULL, 'DOT11-6-CLIENT_ASSOCIATED', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (9223, 7, NULL, NULL, 'DOT11-6-CLIENT_DISASSOCIATED', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (9223, 8, NULL, NULL, 'DOT11-6-CLIENT_INFO', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (9223, 9, NULL, NULL, 'DOT11-6-WPA_WPA2_SUCCESS', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (9223, 10, NULL, NULL, 'NSM-6-DHCPDEFRT', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (9223, 11, NULL, NULL, 'NSM-6-DHCPIP', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (9223, 12, NULL, NULL, 'SYSTEM-3-UI_USER_AUTH_FAIL', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (9223, 13, NULL, NULL, 'SYSTEM-5-UI_USER_AUTH_SUCCESS', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (9223, 14, NULL, NULL, 'SYSTEM-6-LOGOUT', 2, 2);