select sum from factmotivos a, rubros_fact_cxc b,
factura1 c, factura4 d
where c.almacen = d.almacen
and c.tipo = d.tipo
and c.num_documento = d.num_documento
and c.tipo = a.tipo
and d.rubro_fact_cxc = b.rubro_fact_cxc
