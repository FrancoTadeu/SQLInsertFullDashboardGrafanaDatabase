-- This will insert into Grafana Database, on table dashboard a full new dashboard at your desire
-- You must only change the JSON code as needed

BEGIN;
LOCK TABLE dashboard IN ACCESS EXCLUSIVE MODE;

INSERT INTO dashboard
(version, slug,
 title, data,
 org_id, created,
 updated, updated_by,
 created_by, gnet_id,
 plugin_id, folder_id,
 is_folder, has_acl,
 uid, is_public) 
 VALUES 
 ('1', 'Monitoramento - WebService', 'Monitoramento - WebService',
'{"id":null,"uid":"cLV5GDCkz","title":"New dashboard","tags":[],"style":"dark","timezone":"browser","editable":true,"graphTooltip":1,"panels":[],"time":{"from":"now-6h","to":"now"},"timepicker":{"time_options":[],"refresh_intervals":[]},"templating":{"list":[]},"annotations":{"list":[]},"refresh":"5s","schemaVersion":17,"version":0,"links":[]}',
'1', '2022-08-19 15:38:00',
'2022-08-19 15:38:00', '1',
'1', '0',
null, '0',
'0', '0',
-- UNIQUE DASHBOARD ID MUST BE GENERATED
'8d2116550c5d4cccb1247f6c6b504f15', '0');

COMMIT;
