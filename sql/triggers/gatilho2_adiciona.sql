.mode columns
.header on
.nullvalue NULL

PRAGMA foreign_keys = ON;

CREATE TRIGGER IF NOT EXISTS update_pontos_equipa1
AFTER UPDATE OF Acabado on Jogo
FOR EACH ROW
when exists 
(
    with t1 as
    (
        select e.pais as pais, j.idJogo as Jogo, count(*) as golos
        from Golo g, Evento ev, Equipa e, Jogo j
        where j.idJogo = ev.idJogo and ev.idEvento = g.idGolo and g.idMarca = e.idEquipa and e.idEquipa = j.idEquipa1
        group by 2
        order by 2
    ),

    t2 as
    (
        select e.pais as pais, j.idJogo as Jogo, count(*) as golos
        from Golo g, Evento ev, Equipa e, Jogo j
        where j.idJogo = ev.idJogo and ev.idEvento = g.idGolo and g.idMarca = e.idEquipa and e.idEquipa = j.idEquipa2
        group by 2
        order by 2
    ),

    t3 as
    (
    select j.idJogo as Jogo, e1.pais as pais1, coalesce(t1.golos, 0) as golos1, e2.pais as pais2, coalesce(t2.golos, 0) as golos2
    from Jogo j left join t1 on j.idJogo = t1.Jogo left join t2 on j.idjogo = t2.jogo, Equipa e1, Equipa e2
    where e1.idEquipa = j.idEquipa1 and e2.idEquipa = j.idEquipa2
    order by 1
    )
    select * 
    from t3
    where old.idJogo = t3.Jogo and t3.golos1 > t3.golos2 and not EXISTS(select * from Jogo_elem j where j.idJogo_fase_elem = old.idJogo)
)
BEGIN
    Update Equipa
    Set pontos = pontos + 3
    where idEquipa = old.idEquipa1;
END;

CREATE TRIGGER IF NOT EXISTS update_pontos_equipa2
AFTER UPDATE OF Acabado on Jogo
FOR EACH ROW
when exists 
(
    with t1 as
    (
        select e.pais as pais, j.idJogo as Jogo, count(*) as golos
        from Golo g, Evento ev, Equipa e, Jogo j
        where j.idJogo = ev.idJogo and ev.idEvento = g.idGolo and g.idMarca = e.idEquipa and e.idEquipa = j.idEquipa1
        group by 2
        order by 2
    ),

    t2 as
    (
        select e.pais as pais, j.idJogo as Jogo, count(*) as golos
        from Golo g, Evento ev, Equipa e, Jogo j
        where j.idJogo = ev.idJogo and ev.idEvento = g.idGolo and g.idMarca = e.idEquipa and e.idEquipa = j.idEquipa2
        group by 2
        order by 2
    ),

    t3 as
    (
    select j.idJogo as Jogo, e1.pais as pais1, coalesce(t1.golos, 0) as golos1, e2.pais as pais2, coalesce(t2.golos, 0) as golos2
    from Jogo j left join t1 on j.idJogo = t1.Jogo left join t2 on j.idjogo = t2.jogo, Equipa e1, Equipa e2
    where e1.idEquipa = j.idEquipa1 and e2.idEquipa = j.idEquipa2
    order by 1
    )
    select * 
    from t3
    where old.idJogo = t3.Jogo and t3.golos1 < t3.golos2 and not EXISTS(select * from Jogo_elem j where j.idJogo_fase_elem = old.idJogo)
)
BEGIN
    Update Equipa
    Set pontos = pontos + 3
    where idEquipa = old.idEquipa2;
END;

CREATE TRIGGER IF NOT EXISTS update_pontos_equipa1_equipa2
AFTER UPDATE OF Acabado on Jogo
FOR EACH ROW
when exists 
(
    with t1 as
    (
        select e.pais as pais, j.idJogo as Jogo, count(*) as golos
        from Golo g, Evento ev, Equipa e, Jogo j
        where j.idJogo = ev.idJogo and ev.idEvento = g.idGolo and g.idMarca = e.idEquipa and e.idEquipa = j.idEquipa1
        group by 2
        order by 2
    ),

    t2 as
    (
        select e.pais as pais, j.idJogo as Jogo, count(*) as golos
        from Golo g, Evento ev, Equipa e, Jogo j
        where j.idJogo = ev.idJogo and ev.idEvento = g.idGolo and g.idMarca = e.idEquipa and e.idEquipa = j.idEquipa2
        group by 2
        order by 2
    ),

    t3 as
    (
    select j.idJogo as Jogo, e1.pais as pais1, coalesce(t1.golos, 0) as golos1, e2.pais as pais2, coalesce(t2.golos, 0) as golos2
    from Jogo j left join t1 on j.idJogo = t1.Jogo left join t2 on j.idjogo = t2.jogo, Equipa e1, Equipa e2
    where e1.idEquipa = j.idEquipa1 and e2.idEquipa = j.idEquipa2
    order by 1
    )
    select * 
    from t3
    where old.idJogo = t3.Jogo and t3.golos1 = t3.golos2 and not EXISTS(select * from Jogo_elem j where j.idJogo_fase_elem = old.idJogo)
)
BEGIN
    Update Equipa
    Set pontos = pontos + 1
    where idEquipa = old.idEquipa1 or idEquipa = old.idEquipa2;
END;