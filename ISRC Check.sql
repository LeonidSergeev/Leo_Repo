 select distinct ref.ztid, ref.isrc, ref.zchan  
 from ref 
 join playevent 
 on ref.ztid = playevent.track_id 
 where ref.zchan ="umg"
 and playevent.day >= "2015-09-01"
 and playevent.day <= "2015-09-30"
 and ref.isrc is null
 ;