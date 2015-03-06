-- mssqlserver 2014
-- plugin_id: 9230


DELETE FROM plugin WHERE id = "9230"; 
DELETE FROM plugin_sid where plugin_id = "9230";
DELETE FROM software_cpe where plugin = 'mssqlserver:9230';

INSERT IGNORE INTO plugin (id, type, name, description, product_type, vendor) VALUES (9230, 1, 'mssqlserver', 'mssqlserver', '24', 'Microsoft');
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (9230, 33205, NULL, NULL, 'mssqlserver', 2, 2);

INSERT IGNORE INTO software_cpe (cpe, name, version, line, vendor, plugin) VALUES ('cpe:/o:microsoft:sql:2014', 'SQL Server Audit','2014','','Microsoft', 'mssqlserver:9230');
