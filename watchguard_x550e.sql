-- Watchguard x550e
-- plugin_id: 9224


DELETE FROM plugin WHERE id = "9224"; 
DELETE FROM plugin_sid where plugin_id = "9224";
DELETE FROM software_cpe where plugin = 'watchguard_x550e:9224';

INSERT IGNORE INTO plugin (id, type, name, description, product_type, vendor) VALUES (9224, 1, 'watchguard_x550e', 'watchguard_x550e', '24', 'watchguard');
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (9224, 1, NULL, NULL, 'cfm.2[1814]', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (9224, 2, NULL, NULL, 'cfm[1814]', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (9224, 3, NULL, NULL, 'firewall', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (9224, 4, NULL, NULL, 'firewall[956]', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (9224, 5, NULL, NULL, 'http-proxy[1814]', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (9224, 6, NULL, NULL, 'http-proxy[1814]http-proxy[1814]', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (9224, 7, NULL, NULL, 'http-proxy[1814]http-proxy[1814]scand[1721]', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (9224, 8, NULL, NULL, 'https-proxy[1814]', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (9224, 9, NULL, NULL, 'keeper[1732]', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (9224, 10, NULL, NULL, 'kernel', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (9224, 11, NULL, NULL, 'link-mon[1746]', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (9224, 12, NULL, NULL, 'link-mon[1776]', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (9224, 13, NULL, NULL, 'link-mon[955]', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (9224, 14, NULL, NULL, 'networkd[945]', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (9224, 15, NULL, NULL, 'scand[1721]', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (9224, 16, NULL, NULL, 'sessiond[1739]', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (9224, 17, NULL, NULL, 'wgagent[1731]', 2, 2);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (9224, 18, NULL, NULL, 'wrapper[1801]', 2, 2);


INSERT IGNORE INTO software_cpe (cpe, name, version, line, vendor, plugin) VALUES ('cpe:/o:watchguard:x550e:x550e', 'watchguard_x550e','x550e','watchguard x550e','watchguard', 'watchguard_x550e:9224');
