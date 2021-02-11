SELECT p.pjname FROM projects p
WHERE p.pjno in
(
	select distinct projects_pjno from sppj
	group by projects_pjno
	having max(sppj.suppliers_sno) = min(sppj.suppliers_sno) and max(sppj.suppliers_sno) = 'S1'
) 