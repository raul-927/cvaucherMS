SELECT	u.username, g.id, g.group_name, ga.authority 
FROM	users u, groups g, groups_members gm, groups_authorities ga 
WHERE	u.username  = 'admin' 
AND		u.username = gm.username 
AND 	g.id = ga.group_id
AND		ga.group_id = gm.group_id