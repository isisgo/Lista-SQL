select sname from suppliers s
where s.sno in
(
    select sub.suppliers_sno from
	(
		select suppliers_sno, projects_pjno from sppj
		group by suppliers_sno, projects_pjno
		having count(distinct sppj.parts_pno) >= 2
	) as sub
	group by sub.suppliers_sno
	having count(distinct sub.projects_pjno) >= 2
)
