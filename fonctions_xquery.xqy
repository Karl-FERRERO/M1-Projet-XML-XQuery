xquery version "3.0";

declare function local:getListeDepartements()  {
    
    for $x in distinct-values(doc("merimee-MH.xml")/csv_data/row/DPT)
    order by $x
    return <DPT>{data($x)}</DPT>
};

declare function local:getListeRegions()  {
    
    for $x in distinct-values(doc("merimee-MH.xml")/csv_data/row/REG)
    order by $x
    return <REG>{data($x)}</REG>
};

declare function local:getInformationsImmeuble($ref as xs:string)  {
    
    for $x in doc("merimee-MH.xml")/csv_data/row
    where $x/REF=$ref
    order by $x
    return <ETUD>{data($x/ETUD)}</ETUD>
};


local:getListeRegions()
