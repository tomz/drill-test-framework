select max(t.id), count(t.oooa.oa.oab.oabc[0].rowId), min(t.oooa.oa.oab.oabc[1].rowValue1) minvalue, max(t.oooa.oa.oab.oabc[1].rowValue2) maxvalue from `complex.json` t;