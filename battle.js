const tw_fight = (() =>
{
    const UNITS =
        {
            spear:   { type: 'inf',    atk:  10, def: { inf:  15, cav:  45, archer:  20 } },
            sword:   { type: 'inf',    atk:  25, def: { inf:  50, cav:  15, archer:  40 } },
            axe:     { type: 'inf',    atk:  40, def: { inf:  10, cav:   5, archer:  10 } },
            archer:  { type: 'archer', atk:  15, def: { inf:  50, cav:  40, archer:   5 } },
            spy:     { type: 'cav',    atk:   0, def: { inf:   2, cav:   1, archer:   2 } },
            light:   { type: 'cav',    atk: 130, def: { inf:  30, cav:  40, archer:  30 } },
            marcher: { type: 'archer', atk: 120, def: { inf:  40, cav:  30, archer:  50 } },
            heavy:   { type: 'cav',    atk: 150, def: { inf: 200, cav:  80, archer: 180 } },
            ram:     { type: 'inf',    atk:   2, def: { inf:  20, cav:  50, archer:  20 } },
            catapult:{ type: 'inf',    atk: 100, def: { inf: 100, cav:  50, archer: 100 } },
            knight:  { type: 'cav',    atk: 150, def: { inf: 250, cav: 400, archer: 150 } },
            snob:    { type: 'inf',    atk:  30, def: { inf: 100, cav:  50, archer: 100 } },
            militia: { type: 'inf',    atk:   5, def: { inf:  15, cav:  45, archer:  25 } },
        };
    const BASE_DEFENCE = 20;

    const arrsum = arr => arr.reduce((a,e) => a+e);
    const objsum = obj => arrsum(Object.values(obj));
    const unique = arr => arr.reduce((a,e) => { if(a.indexOf(e) == -1) { a.push(e); } return a; }, []);
    const kvpair = obj => Object.entries(obj).map(pair => ({ key: pair[0], value: pair[1] }));

    return (atk_units, def_units) =>
    {
        let losses = { atk: {}, def: {} };
        while(objsum(atk_units) > 0 && objsum(def_units) > 0)
        {
            let atk = {};
            for(let key in atk_units)
            {
                let value = atk_units[key];
                if(value == 0)
                {
                    delete atk_units[key];
                    continue;
                }
                let unit = UNITS[key];
                atk[unit.type] = (atk[unit.type] || 0) + unit.atk * value;
            }
            let types = unique(Object.keys(atk));

            let def = {};
            for(let type of types)
            {
                def[type] = arrsum(kvpair(def_units).map(pair => UNITS[pair.key].def[type] * pair.value)) + BASE_DEFENCE;
            }

            let atk_all = objsum(atk);
            let frac = {};
            let outcome = {};
            for(let type of types)
            {
                frac[type] = atk[type] / atk_all;
                outcome[type] = (atk[type] / Math.round(def[type] * frac[type])) ** 1.5;
            }

            for(let key in atk_units)
            {
                let value = atk_units[key];
                let unit = UNITS[key];
                let loss = Math.round(value / Math.max(outcome[unit.type], 1));
                atk_units[key] -= loss;
                losses.atk[key] = (losses.atk[key] || 0) + loss;
            }
            for(let key in def_units)
            {
                let value = def_units[key];
                let loss = arrsum(types.map(type => Math.round(value * Math.min(outcome[type], 1) * frac[type])));
                def_units[key] -= loss;
                losses.def[key] = (losses.def[key] || 0) + loss;
            }
        }
        return losses;
    };
})();


console.log(tw_fight({speer:1000}, {sword:250}));