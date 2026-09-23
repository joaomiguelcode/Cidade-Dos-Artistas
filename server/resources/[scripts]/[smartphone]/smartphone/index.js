var Zr, Qr, ei, ti, bi, gi, MO, e, t, n = Object.prototype.hasOwnProperty,
    l = Object.getOwnPropertySymbols,
    a = Object.prototype.propertyIsEnumerable,
    s = Object.assign,
    o = (e, t) => {
        var o = {};
        for (var r in e) n.call(e, r) && 0 > t.indexOf(r) && (o[r] = e[r]);
        if (null != e && l)
            for (var r of l(e)) 0 > t.indexOf(r) && a.call(e, r) && (o[r] = e[r]);
        return o
    };

function r(e, t) {
    let l = Object.create(null),
        n = e.split(",");
    for (let e = 0; e < n.length; e++) l[n[e]] = !0;
    return t ? e => !!l[e.toLowerCase()] : e => !!l[e]
} ! function (e = ".", t = "__import__") {
    try {
        self[t] = Function("u", "return import(u)")
    } catch (l) {
        let n = new URL(e, location),
            a = e => {
                URL.revokeObjectURL(e.src), e.remove()
            };
        self[t] = e => new Promise(((l, o) => {
            let r = new URL(e, n);
            if (self[t].moduleMap[r]) return l(self[t].moduleMap[r]);
            let s = new Blob([`import * as m from '${r}';`, `${t}.moduleMap['${r}']=m;`], {
                type: "text/javascript"
            }),
                i = Object.assign(document.createElement("script"), {
                    type: "module",
                    src: URL.createObjectURL(s),
                    onerror() {
                        o(Error(`Failed to import: ${e}`)), a(i)
                    },
                    onload() {
                        l(self[t].moduleMap[r]), a(i)
                    }
                });
            document.head.appendChild(i)
        })), self[t].moduleMap = {}
    }
}("/dist/assets/");
const i = r("Infinity,undefined,NaN,isFinite,isNaN,parseFloat,parseInt,decodeURI,decodeURIComponent,encodeURI,encodeURIComponent,Math,Number,Date,Array,Object,Boolean,String,RegExp,Map,Set,JSON,Intl,BigInt"),
    c = r("itemscope,allowfullscreen,formnovalidate,ismap,nomodule,novalidate,readonly");

function u(e) {
    if (P(e)) {
        let t = {};
        for (let l = 0; l < e.length; l++) {
            let n = e[l],
                a = u(V(n) ? f(n) : n);
            if (a)
                for (let e in a) t[e] = a[e]
        }
        return t
    }
    if (N(e)) return e
}
const d = /;(?![^(]*\))/g,
    p = /:(.+)/;

function f(e) {
    let t = {};
    return e.split(d).forEach((e => {
        if (e) {
            let l = e.split(p);
            l.length > 1 && (t[l[0].trim()] = l[1].trim())
        }
    })), t
}

function m(e) {
    let t = "";
    if (V(e)) t = e;
    else if (P(e))
        for (let l = 0; l < e.length; l++) {
            let n = m(e[l]);
            n && (t += n + " ")
        } else if (N(e))
        for (let l in e) e[l] && (t += l + " ");
    return t.trim()
}

function h(e, t) {
    if (e === t) return !0;
    let l = O(e),
        n = O(t);
    if (l || n) return !(!l || !n) && e.getTime() === t.getTime();
    if (l = P(e), n = P(t), l || n) return !(!l || !n) && function (e, t) {
        if (e.length !== t.length) return !1;
        let l = !0;
        for (let n = 0; l && n < e.length; n++) l = h(e[n], t[n]);
        return l
    }(e, t);
    if (l = N(e), n = N(t), l || n) {
        if (!l || !n || Object.keys(e).length !== Object.keys(t).length) return !1;
        for (let l in e) {
            let n = e.hasOwnProperty(l),
                a = t.hasOwnProperty(l);
            if (n && !a || !n && a || !h(e[l], t[l])) return !1
        }
    }
    return String(e) === String(t)
}

function b(e, t) {
    return e.findIndex((e => h(e, t)))
}
const g = e => null == e ? "" : N(e) ? JSON.stringify(e, v, 2) : String(e),
    v = (e, t) => L(t) ? {
        [`Map(${t.size})`]: [...t.entries()].reduce(((e, [t, l]) => (e[`${t} =>`] = l, e)), {})
    } : I(t) ? {
        [`Set(${t.size})`]: [...t.values()]
    } : !N(t) || P(t) || F(t) ? t : String(t),
    x = {},
    y = [],
    k = () => { },
    w = () => !1,
    C = /^on[^a-z]/,
    _ = e => C.test(e),
    A = e => e.startsWith("onUpdate:"),
    S = Object.assign,
    T = (e, t) => {
        let l = e.indexOf(t);
        l > -1 && e.splice(l, 1)
    },
    E = Object.prototype.hasOwnProperty,
    R = (e, t) => E.call(e, t),
    P = Array.isArray,
    L = e => "[object Map]" === j(e),
    I = e => "[object Set]" === j(e),
    O = e => e instanceof Date,
    M = e => "function" == typeof e,
    V = e => "string" == typeof e,
    D = e => "symbol" == typeof e,
    N = e => null !== e && "object" == typeof e,
    U = e => N(e) && M(e.then) && M(e.catch),
    $ = Object.prototype.toString,
    j = e => $.call(e),
    F = e => "[object Object]" === j(e),
    z = e => V(e) && "NaN" !== e && "-" !== e[0] && "" + parseInt(e, 10) === e,
    B = r(",key,ref,onVnodeBeforeMount,onVnodeMounted,onVnodeBeforeUpdate,onVnodeUpdated,onVnodeBeforeUnmount,onVnodeUnmounted"),
    H = e => {
        let t = Object.create(null);
        return l => t[l] || (t[l] = e(l))
    },
    q = /-(\w)/g,
    G = H((e => e.replace(q, ((e, t) => t ? t.toUpperCase() : "")))),
    W = /\B([A-Z])/g,
    K = H((e => e.replace(W, "-$1").toLowerCase())),
    J = H((e => e.charAt(0).toUpperCase() + e.slice(1))),
    X = H((e => e ? `on${J(e)}` : "")),
    Y = (e, t) => e !== t && (e == e || t == t),
    Z = (e, t) => {
        for (let l = 0; l < e.length; l++) e[l](t)
    },
    Q = (e, t, l) => {
        Object.defineProperty(e, t, {
            configurable: !0,
            enumerable: !1,
            value: l
        })
    },
    ee = e => {
        let t = parseFloat(e);
        return isNaN(t) ? e : t
    },
    te = new WeakMap,
    ne = [];
let le;
const ae = Symbol(""),
    se = Symbol("");

function oe(e, t = x) {
    var l;
    (l = e) && !0 === l._isEffect && (e = e.raw);
    let n = function (e, t) {
        let l = function () {
            if (!l.active) return t.scheduler ? void 0 : e();
            if (!ne.includes(l)) {
                ce(l);
                try {
                    return de.push(ue), ue = !0, ne.push(l), le = l, e()
                } finally {
                    ne.pop(), fe(), le = ne[ne.length - 1]
                }
            }
        };
        return l.id = ie++, l.allowRecurse = !!t.allowRecurse, l._isEffect = !0, l.active = !0, l.raw = e, l.deps = [], l.options = t, l
    }(e, t);
    return t.lazy || n(), n
}

function re(e) {
    e.active && (ce(e), e.options.onStop && e.options.onStop(), e.active = !1)
}
let ie = 0;

function ce(e) {
    let {
        deps: t
    } = e;
    if (t.length) {
        for (let l = 0; l < t.length; l++) t[l].delete(e);
        t.length = 0
    }
}
let ue = !0;
const de = [];

function pe() {
    de.push(ue), ue = !1
}

function fe() {
    let e = de.pop();
    ue = void 0 === e || e
}

function me(e, t, l) {
    if (!ue || void 0 === le) return;
    let n = te.get(e);
    n || te.set(e, n = new Map);
    let a = n.get(l);
    a || n.set(l, a = new Set), a.has(le) || (a.add(le), le.deps.push(a))
}

function he(e, t, l, n, a, o) {
    let r = te.get(e);
    if (!r) return;
    let s = new Set,
        i = e => {
            e && e.forEach((e => {
                (e !== le || e.allowRecurse) && s.add(e)
            }))
        };
    if ("clear" === t) r.forEach(i);
    else if ("length" === l && P(e)) r.forEach(((e, t) => {
        ("length" === t || t >= n) && i(e)
    }));
    else switch (void 0 !== l && i(r.get(l)), t) {
        case "add":
            P(e) ? z(l) && i(r.get("length")) : (i(r.get(ae)), L(e) && i(r.get(se)));
            break;
        case "delete":
            P(e) || (i(r.get(ae)), L(e) && i(r.get(se)));
            break;
        case "set":
            L(e) && i(r.get(ae))
    }
    s.forEach((e => {
        e.options.scheduler ? e.options.scheduler(e) : e()
    }))
}
const be = r("__proto__,__v_isRef,__isVue"),
    ge = new Set(Object.getOwnPropertyNames(Symbol).map((e => Symbol[e])).filter(D)),
    ve = Ce(),
    xe = Ce(!1, !0),
    ye = Ce(!0),
    ke = Ce(!0, !0),
    we = {};

function Ce(e = !1, t = !1) {
    return function (l, n, a) {
        if ("__v_isReactive" === n) return !e;
        if ("__v_isReadonly" === n) return e;
        if ("__v_raw" === n && a === (e ? Xe : Je).get(l)) return l;
        let o = P(l);
        if (!e && o && R(we, n)) return Reflect.get(we, n, a);
        let r = Reflect.get(l, n, a);
        return (D(n) ? ge.has(n) : be(n)) || (e || me(l, 0, n), t) ? r : ot(r) ? o && z(n) ? r : r.value : N(r) ? e ? Qe(r) : Ze(r) : r
    }
}

function _e(e = !1) {
    return function (t, l, n, a) {
        let o = t[l];
        if (!e && (n = at(n), !P(t) && ot(o) && !ot(n))) return o.value = n, !0;
        let r = P(t) && z(l) ? Number(l) < t.length : R(t, l),
            s = Reflect.set(t, l, n, a);
        return t === at(a) && (r ? Y(n, o) && he(t, "set", l, n) : he(t, "add", l, n)), s
    }
} ["includes", "indexOf", "lastIndexOf"].forEach((e => {
    let t = Array.prototype[e];
    we[e] = function (...e) {
        let l = at(this);
        for (let e = 0, t = this.length; e < t; e++) me(l, 0, e + "");
        let n = t.apply(l, e);
        return -1 === n || !1 === n ? t.apply(l, e.map(at)) : n
    }
})), ["push", "pop", "shift", "unshift", "splice"].forEach((e => {
    let t = Array.prototype[e];
    we[e] = function (...e) {
        pe();
        let l = t.apply(this, e);
        return fe(), l
    }
}));
const Ae = {
    get: ve,
    set: _e(),
    deleteProperty: function (e, t) {
        let l = R(e, t);
        e[t];
        let n = Reflect.deleteProperty(e, t);
        return n && l && he(e, "delete", t, void 0), n
    },
    has: function (e, t) {
        let l = Reflect.has(e, t);
        return D(t) && ge.has(t) || me(e, 0, t), l
    },
    ownKeys: function (e) {
        return me(e, 0, P(e) ? "length" : ae), Reflect.ownKeys(e)
    }
},
    Se = {
        get: ye,
        set: (e, t) => !0,
        deleteProperty: (e, t) => !0
    },
    Te = S({}, Ae, {
        get: xe,
        set: _e(!0)
    });
S({}, Se, {
    get: ke
});
const Ee = e => N(e) ? Ze(e) : e,
    Re = e => N(e) ? Qe(e) : e,
    Pe = e => e,
    Le = e => Reflect.getPrototypeOf(e);

function Ie(e, t, l = !1, n = !1) {
    let a = at(e = e.__v_raw),
        o = at(t);
    t === o || l || me(a, 0, t), l || me(a, 0, o);
    let {
        has: r
    } = Le(a), s = l ? Re : n ? Pe : Ee;
    return r.call(a, t) ? s(e.get(t)) : r.call(a, o) ? s(e.get(o)) : void 0
}

function Oe(e, t = !1) {
    let l = this.__v_raw,
        n = at(l),
        a = at(e);
    return e === a || t || me(n, 0, e), t || me(n, 0, a), e === a ? l.has(e) : l.has(e) || l.has(a)
}

function Me(e, t = !1) {
    return e = e.__v_raw, t || me(at(e), 0, ae), Reflect.get(e, "size", e)
}

function Ve(e) {
    e = at(e);
    let t = at(this);
    return Le(t).has.call(t, e) || (t.add(e), he(t, "add", e, e)), this
}

function De(e, t) {
    t = at(t);
    let l = at(this),
        {
            has: n,
            get: a
        } = Le(l),
        o = n.call(l, e);
    o || (e = at(e), o = n.call(l, e));
    let r = a.call(l, e);
    return l.set(e, t), o ? Y(t, r) && he(l, "set", e, t) : he(l, "add", e, t), this
}

function Ne(e) {
    let t = at(this),
        {
            has: l,
            get: n
        } = Le(t),
        a = l.call(t, e);
    a || (e = at(e), a = l.call(t, e)), n && n.call(t, e);
    let o = t.delete(e);
    return a && he(t, "delete", e, void 0), o
}

function Ue() {
    let e = at(this),
        t = 0 !== e.size,
        l = e.clear();
    return t && he(e, "clear", void 0, void 0), l
}

function $e(e, t) {
    return function (l, n) {
        let a = this,
            o = a.__v_raw,
            r = at(o),
            s = e ? Re : t ? Pe : Ee;
        return e || me(r, 0, ae), o.forEach(((e, t) => l.call(n, s(e), s(t), a)))
    }
}

function je(e, t, l) {
    return function (...n) {
        let a = this.__v_raw,
            o = at(a),
            r = L(o),
            s = "entries" === e || e === Symbol.iterator && r,
            i = a[e](...n),
            c = t ? Re : l ? Pe : Ee;
        return t || me(o, 0, "keys" === e && r ? se : ae), {
            next() {
                let {
                    value: e,
                    done: t
                } = i.next();
                return t ? {
                    value: e,
                    done: t
                } : {
                    value: s ? [c(e[0]), c(e[1])] : c(e),
                    done: t
                }
            },
            [Symbol.iterator]() {
                return this
            }
        }
    }
}

function Fe(e) {
    return function (...t) {
        return "delete" !== e && this
    }
}
const ze = {
    get(e) {
        return Ie(this, e)
    },
    get size() {
        return Me(this)
    },
    has: Oe,
    add: Ve,
    set: De,
    delete: Ne,
    clear: Ue,
    forEach: $e(!1, !1)
},
    Be = {
        get(e) {
            return Ie(this, e, !1, !0)
        },
        get size() {
            return Me(this)
        },
        has: Oe,
        add: Ve,
        set: De,
        delete: Ne,
        clear: Ue,
        forEach: $e(!1, !0)
    },
    He = {
        get(e) {
            return Ie(this, e, !0)
        },
        get size() {
            return Me(this, !0)
        },
        has(e) {
            return Oe.call(this, e, !0)
        },
        add: Fe("add"),
        set: Fe("set"),
        delete: Fe("delete"),
        clear: Fe("clear"),
        forEach: $e(!0, !1)
    };

function qe(e, t) {
    let l = t ? Be : e ? He : ze;
    return (t, n, a) => "__v_isReactive" === n ? !e : "__v_isReadonly" === n ? e : "__v_raw" === n ? t : Reflect.get(R(l, n) && n in t ? l : t, n, a)
} ["keys", "values", "entries", Symbol.iterator].forEach((e => {
    ze[e] = je(e, !1, !1), He[e] = je(e, !0, !1), Be[e] = je(e, !1, !0)
}));
const Ge = {
    get: qe(!1, !1)
},
    We = {
        get: qe(!1, !0)
    },
    Ke = {
        get: qe(!0, !1)
    },
    Je = new WeakMap,
    Xe = new WeakMap;

function Ye(e) {
    return e.__v_skip || !Object.isExtensible(e) ? 0 : function (e) {
        switch (e) {
            case "Object":
            case "Array":
                return 1;
            case "Map":
            case "Set":
            case "WeakMap":
            case "WeakSet":
                return 2;
            default:
                return 0
        }
    }(j(e).slice(8, -1))
}

function Ze(e) {
    return e && e.__v_isReadonly ? e : et(e, !1, Ae, Ge)
}

function Qe(e) {
    return et(e, !0, Se, Ke)
}

function et(e, t, l, n) {
    if (!N(e) || e.__v_raw && (!t || !e.__v_isReactive)) return e;
    let a = t ? Xe : Je,
        o = a.get(e);
    if (o) return o;
    let r = Ye(e);
    if (0 === r) return e;
    let s = new Proxy(e, 2 === r ? n : l);
    return a.set(e, s), s
}

function tt(e) {
    return nt(e) ? tt(e.__v_raw) : !(!e || !e.__v_isReactive)
}

function nt(e) {
    return !(!e || !e.__v_isReadonly)
}

function lt(e) {
    return tt(e) || nt(e)
}

function at(e) {
    return e && at(e.__v_raw) || e
}
const st = e => N(e) ? Ze(e) : e;

function ot(e) {
    return Boolean(e && !0 === e.__v_isRef)
}

function rt(e) {
    return ct(e)
}
class it {
    constructor(e, t = !1) {
        this._rawValue = e, this._shallow = t, this.__v_isRef = !0, this._value = t ? e : st(e)
    }
    get value() {
        return me(at(this), 0, "value"), this._value
    }
    set value(e) {
        Y(at(e), this._rawValue) && (this._rawValue = e, this._value = this._shallow ? e : st(e), he(at(this), "set", "value", e))
    }
}

function ct(e, t = !1) {
    return ot(e) ? e : new it(e, t)
}

function ut(e) {
    return ot(e) ? e.value : e
}
const dt = {
    get: (e, t, l) => ut(Reflect.get(e, t, l)),
    set(e, t, l, n) {
        let a = e[t];
        return ot(a) && !ot(l) ? (a.value = l, !0) : Reflect.set(e, t, l, n)
    }
};

function pt(e) {
    return tt(e) ? e : new Proxy(e, dt)
}
class ft {
    constructor(e, t) {
        this._object = e, this._key = t, this.__v_isRef = !0
    }
    get value() {
        return this._object[this._key]
    }
    set value(e) {
        this._object[this._key] = e
    }
}
class mt {
    constructor(e, t, l) {
        this._setter = t, this._dirty = !0, this.__v_isRef = !0, this.effect = oe(e, {
            lazy: !0,
            scheduler: () => {
                this._dirty || (this._dirty = !0, he(at(this), "set", "value"))
            }
        }), this.__v_isReadonly = l
    }
    get value() {
        return this._dirty && (this._value = this.effect(), this._dirty = !1), me(at(this), 0, "value"), this._value
    }
    set value(e) {
        this._setter(e)
    }
}

function ht(e, t, l, n) {
    let a;
    try {
        a = n ? e(...n) : e()
    } catch (e) {
        gt(e, t, l)
    }
    return a
}

function bt(e, t, l, n) {
    if (M(e)) {
        let a = ht(e, t, l, n);
        return a && U(a) && a.catch((e => {
            gt(e, t, l)
        })), a
    }
    let a = [];
    for (let o = 0; o < e.length; o++) a.push(bt(e[o], t, l, n));
    return a
}

function gt(e, t, l, n = !0) {
    if (t && t.vnode, t) {
        let n = t.parent,
            a = t.proxy,
            o = l;
        for (; n;) {
            let t = n.ec;
            if (t)
                for (let l = 0; l < t.length; l++)
                    if (!1 === t[l](e, a, o)) return;
            n = n.parent
        }
        let r = t.appContext.config.errorHandler;
        if (r) return void ht(r, null, 10, [e, a, o])
    } ! function (e, t, l, n = !0) {
        console.error(e)
    }(e, 0, 0, n)
}
let vt = !1,
    xt = !1;
const yt = [];
let kt = 0;
const wt = [];
let Ct = null,
    _t = 0;
const At = [];
let St = null,
    Tt = 0;
const Et = Promise.resolve();
let Rt = null,
    Pt = null;

function Lt(e) {
    let t = Rt || Et;
    return e ? t.then(this ? e.bind(this) : e) : t
}

function It(e) {
    if (!(yt.length && yt.includes(e, vt && e.allowRecurse ? kt + 1 : kt) || e === Pt)) {
        let t = function (e) {
            let t = kt + 1,
                l = yt.length,
                n = Nt(e);
            for (; t < l;) {
                let e = t + l >>> 1;
                Nt(yt[e]) < n ? t = e + 1 : l = e
            }
            return t
        }(e);
        t > -1 ? yt.splice(t, 0, e) : yt.push(e), Ot()
    }
}

function Ot() {
    vt || xt || (xt = !0, Rt = Et.then(Ut))
}

function Mt(e, t, l, n) {
    P(e) ? l.push(...e) : t && t.includes(e, e.allowRecurse ? n + 1 : n) || l.push(e), Ot()
}

function Vt(e, t = null) {
    if (wt.length) {
        for (Pt = t, Ct = [...new Set(wt)], wt.length = 0, _t = 0; _t < Ct.length; _t++) Ct[_t]();
        Ct = null, _t = 0, Pt = null, Vt(e, t)
    }
}

function Dt(e) {
    if (At.length) {
        let e = [...new Set(At)];
        if (At.length = 0, St) return void St.push(...e);
        for ((St = e).sort(((e, t) => Nt(e) - Nt(t))), Tt = 0; Tt < St.length; Tt++) St[Tt]();
        St = null, Tt = 0
    }
}
const Nt = e => null == e.id ? 1 / 0 : e.id;

function Ut(e) {
    xt = !1, vt = !0, Vt(e), yt.sort(((e, t) => Nt(e) - Nt(t)));
    try {
        for (kt = 0; kt < yt.length; kt++) {
            let e = yt[kt];
            e && ht(e, null, 14)
        }
    } finally {
        kt = 0, yt.length = 0, Dt(), vt = !1, Rt = null, (yt.length || At.length) && Ut(e)
    }
}

function $t(e, t, ...l) {
    let n = e.vnode.props || x,
        a = l,
        o = t.startsWith("update:"),
        r = o && t.slice(7);
    if (r && r in n) {
        let e = `${"modelValue" === r ? "model" : r}Modifiers`,
            {
                number: t,
                trim: o
            } = n[e] || x;
        o ? a = l.map((e => e.trim())) : t && (a = l.map(ee))
    }
    let s = X(G(t)),
        i = n[s];
    !i && o && (i = n[s = X(K(t))]), i && bt(i, e, 6, a);
    let c = n[s + "Once"];
    if (c) {
        if (e.emitted) {
            if (e.emitted[s]) return
        } else (e.emitted = {})[s] = !0;
        bt(c, e, 6, a)
    }
}

function jt(e, t, l = !1) {
    if (!t.deopt && void 0 !== e.__emits) return e.__emits;
    let n = e.emits,
        a = {},
        o = !1;
    if (!M(e)) {
        let n = e => {
            o = !0, S(a, jt(e, t, !0))
        };
        !l && t.mixins.length && t.mixins.forEach(n), e.extends && n(e.extends), e.mixins && e.mixins.forEach(n)
    }
    return n || o ? (P(n) ? n.forEach((e => a[e] = null)) : S(a, n), e.__emits = a) : e.__emits = null
}

function Ft(e, t) {
    return !(!e || !_(t)) && (R(e, (t = t.slice(2).replace(/Once$/, ""))[0].toLowerCase() + t.slice(1)) || R(e, K(t)) || R(e, t))
}
let zt = null;

function Bt(e) {
    zt = e
}

function Ht(e) {
    let t, {
        type: l,
        vnode: n,
        proxy: a,
        withProxy: o,
        props: r,
        propsOptions: [s],
        slots: i,
        attrs: c,
        emit: u,
        render: d,
        renderCache: p,
        data: f,
        setupState: m,
        ctx: h
    } = e;
    zt = e;
    try {
        let e;
        if (4 & n.shapeFlag) {
            let l = o || a;
            t = Vl(d.call(l, l, p, r, m, f, h)), e = c
        } else {
            t = Vl(l(r, l.length > 1 ? {
                attrs: c,
                slots: i,
                emit: u
            } : null)), e = l.props ? c : Gt(c)
        }
        let g = t;
        if (!1 !== l.inheritAttrs && e) {
            let t = Object.keys(e),
                {
                    shapeFlag: l
                } = g;
            t.length && (1 & l || 6 & l) && (s && t.some(A) && (e = Wt(e, s)), g = Ll(g, e))
        }
        n.dirs && (g.dirs = g.dirs ? g.dirs.concat(n.dirs) : n.dirs), n.transition && (g.transition = n.transition), t = g
    } catch (l) {
        gt(l, e, 1), t = Pl(vl)
    }
    return zt = null, t
}

function qt(e) {
    let t;
    for (let l = 0; l < e.length; l++) {
        let n = e[l];
        if (!Al(n)) return;
        if (n.type !== vl || "v-if" === n.children) {
            if (t) return;
            t = n
        }
    }
    return t
}
const Gt = e => {
    let t;
    for (let l in e) ("class" === l || "style" === l || _(l)) && ((t || (t = {}))[l] = e[l]);
    return t
},
    Wt = (e, t) => {
        let l = {};
        for (let n in e) A(n) && n.slice(9) in t || (l[n] = e[n]);
        return l
    };

function Kt(e, t, l) {
    let n = Object.keys(t);
    if (n.length !== Object.keys(e).length) return !0;
    for (let a = 0; a < n.length; a++) {
        let o = n[a];
        if (t[o] !== e[o] && !Ft(l, o)) return !0
    }
    return !1
}

function Jt(e) {
    return M(e) && (e = e()), P(e) && (e = qt(e)), Vl(e)
}
let Xt = 0;
const Yt = e => Xt += e;

function Zt(e, t, l = {}, n) {
    let a = e[t];
    Xt++, wl();
    let o = a && Qt(a(l)),
        r = _l(bl, {
            key: l.key || `_${t}`
        }, o || (n ? n() : []), o && 1 === e._ ? 64 : -2);
    return Xt--, r
}

function Qt(e) {
    return e.some((e => !Al(e) || e.type !== vl && !(e.type === bl && !Qt(e.children)))) ? e : null
}

function en(e, t = zt) {
    if (!t) return e;
    let l = (...l) => {
        Xt || wl(!0);
        let n = zt;
        Bt(t);
        let a = e(...l);
        return Bt(n), Xt || Cl(), a
    };
    return l._c = !0, l
}
let tn = null;
const nn = [];

function ln(e) {
    nn.push(tn = e)
}

function an() {
    nn.pop(), tn = nn[nn.length - 1] || null
}

function sn(e) {
    return t => en((function () {
        ln(e);
        let l = t.apply(this, arguments);
        return an(), l
    }))
}

function on(e, t, l, n = !1) {
    let a = {},
        o = {};
    Q(o, Tl, 1), rn(e, t, a, o), l ? e.props = n ? a : et(a, !1, Te, We) : e.type.props ? e.props = a : e.props = o, e.attrs = o
}

function rn(e, t, l, n) {
    let [a, o] = e.propsOptions;
    if (t)
        for (let o in t) {
            let r, s = t[o];
            B(o) || (a && R(a, r = G(o)) ? l[r] = s : Ft(e.emitsOptions, o) || (n[o] = s))
        }
    if (o) {
        let t = at(l);
        for (let n = 0; n < o.length; n++) {
            let r = o[n];
            l[r] = cn(a, t, r, t[r], e)
        }
    }
}

function cn(e, t, l, n, a) {
    let o = e[l];
    if (null != o) {
        let e = R(o, "default");
        if (e && void 0 === n) {
            let e = o.default;
            o.type !== Function && M(e) ? (aa(a), n = e(t), aa(null)) : n = e
        }
        o[0] && (R(t, l) || e ? o[1] && ("" === n || n === K(l)) && (n = !0) : n = !1)
    }
    return n
}

function un(e, t, l = !1) {
    if (!t.deopt && e.__props) return e.__props;
    let n = e.props,
        a = {},
        o = [],
        r = !1;
    if (!M(e)) {
        let n = e => {
            r = !0;
            let [l, n] = un(e, t, !0);
            S(a, l), n && o.push(...n)
        };
        !l && t.mixins.length && t.mixins.forEach(n), e.extends && n(e.extends), e.mixins && e.mixins.forEach(n)
    }
    if (!n && !r) return e.__props = y;
    if (P(n))
        for (let e = 0; e < n.length; e++) {
            let t = G(n[e]);
            dn(t) && (a[t] = x)
        } else if (n)
        for (let e in n) {
            let t = G(e);
            if (dn(t)) {
                let l = n[e],
                    r = a[t] = P(l) || M(l) ? {
                        type: l
                    } : l;
                if (r) {
                    let e = mn(Boolean, r.type),
                        l = mn(String, r.type);
                    r[0] = e > -1, r[1] = l < 0 || e < l, (e > -1 || R(r, "default")) && o.push(t)
                }
            }
        }
    return e.__props = [a, o]
}

function dn(e) {
    return "$" !== e[0]
}

function pn(e) {
    let t = e && e.toString().match(/^\s*function (\w+)/);
    return t ? t[1] : ""
}

function fn(e, t) {
    return pn(e) === pn(t)
}

function mn(e, t) {
    if (P(t)) {
        for (let l = 0, n = t.length; l < n; l++)
            if (fn(t[l], e)) return l
    } else if (M(t)) return fn(t, e) ? 0 : -1;
    return -1
}

function hn(e, t, l = na, n = !1) {
    if (l) {
        let a = l[e] || (l[e] = []),
            o = t.__weh || (t.__weh = (...n) => {
                if (l.isUnmounted) return;
                pe(), aa(l);
                let a = bt(t, l, e, n);
                return aa(null), fe(), a
            });
        return n ? a.unshift(o) : a.push(o), o
    }
}
const bn = e => (t, l = na) => !oa && hn(e, t, l),
    gn = bn("bm"),
    vn = bn("m"),
    xn = bn("bu"),
    yn = bn("u"),
    kn = bn("bum"),
    wn = bn("um"),
    Cn = bn("rtg"),
    _n = bn("rtc");

function An(e, t) {
    return En(e, null, t)
}
const Sn = {};

function Tn(e, t, l) {
    return En(e, t, l)
}

function En(e, t, {
    immediate: l,
    deep: n,
    flush: a,
    onTrack: o,
    onTrigger: r
} = x, s = na) {
    let i, c, u = !1;
    if (ot(e) ? (i = () => e.value, u = !!e._shallow) : tt(e) ? (i = () => e, n = !0) : i = P(e) ? () => e.map((e => ot(e) ? e.value : tt(e) ? Pn(e) : M(e) ? ht(e, s, 2, [s && s.proxy]) : void 0)) : M(e) ? t ? () => ht(e, s, 2, [s && s.proxy]) : () => {
        if (!s || !s.isUnmounted) return c && c(), ht(e, s, 3, [p])
    } : k, t && n) {
        let e = i;
        i = () => Pn(e())
    }
    let d, p = e => {
        c = h.options.onStop = () => {
            ht(e, s, 4)
        }
    },
        f = P(e) ? [] : Sn,
        m = () => {
            if (h.active)
                if (t) {
                    let e = h();
                    (n || u || Y(e, f)) && (c && c(), bt(t, s, 3, [e, f === Sn ? void 0 : f, p]), f = e)
                } else h()
        };
    m.allowRecurse = !!t, d = "sync" === a ? m : "post" === a ? () => sl(m, s && s.suspense) : () => {
        !s || s.isMounted ? Mt(m, Ct, wt, _t) : m()
    };
    let h = oe(i, {
        lazy: !0,
        onTrack: o,
        onTrigger: r,
        scheduler: d
    });
    return ca(h, s), t ? l ? m() : f = h() : "post" === a ? sl(h, s && s.suspense) : h(), () => {
        re(h), s && T(s.effects, h)
    }
}

function Rn(e, t, l) {
    let n = this.proxy;
    return En(V(e) ? () => n[e] : e.bind(n), t.bind(n), l, this)
}

function Pn(e, t = new Set) {
    if (!N(e) || t.has(e)) return e;
    if (t.add(e), ot(e)) Pn(e.value, t);
    else if (P(e))
        for (let l = 0; l < e.length; l++) Pn(e[l], t);
    else if (I(e) || L(e)) e.forEach((e => {
        Pn(e, t)
    }));
    else
        for (let l in e) Pn(e[l], t);
    return e
}

function Ln() {
    let e = {
        isMounted: !1,
        isLeaving: !1,
        isUnmounting: !1,
        leavingVNodes: new Map
    };
    return vn((() => {
        e.isMounted = !0
    })), kn((() => {
        e.isUnmounting = !0
    })), e
}
const In = [Function, Array],
    On = {
        name: "BaseTransition",
        props: {
            mode: String,
            appear: Boolean,
            persisted: Boolean,
            onBeforeEnter: In,
            onEnter: In,
            onAfterEnter: In,
            onEnterCancelled: In,
            onBeforeLeave: In,
            onLeave: In,
            onAfterLeave: In,
            onLeaveCancelled: In,
            onBeforeAppear: In,
            onAppear: In,
            onAfterAppear: In,
            onAppearCancelled: In
        },
        setup(e, {
            slots: t
        }) {
            let l, n = la(),
                a = Ln();
            return () => {
                let o = t.default && $n(t.default(), !0);
                if (!o || !o.length) return;
                let r = at(e),
                    {
                        mode: s
                    } = r,
                    i = o[0];
                if (a.isLeaving) return Dn(i);
                let c = Nn(i);
                if (!c) return Dn(i);
                let u = Vn(c, r, a, n);
                Un(c, u);
                let d = n.subTree,
                    p = d && Nn(d),
                    f = !1,
                    {
                        getTransitionKey: m
                    } = c.type;
                if (m) {
                    let e = m();
                    void 0 === l ? l = e : e !== l && (l = e, f = !0)
                }
                if (p && p.type !== vl && (!Sl(c, p) || f)) {
                    let e = Vn(p, r, a, n);
                    if (Un(p, e), "out-in" === s) return a.isLeaving = !0, e.afterLeave = () => {
                        a.isLeaving = !1, n.update()
                    }, Dn(i);
                    "in-out" === s && (e.delayLeave = (e, t, l) => {
                        Mn(a, p)[String(p.key)] = p, e._leaveCb = () => {
                            t(), e._leaveCb = void 0, delete u.delayedLeave
                        }, u.delayedLeave = l
                    })
                }
                return i
            }
        }
    };

function Mn(e, t) {
    let {
        leavingVNodes: l
    } = e, n = l.get(t.type);
    return n || (n = Object.create(null), l.set(t.type, n)), n
}

function Vn(e, t, l, n) {
    let {
        appear: a,
        mode: o,
        persisted: r = !1,
        onBeforeEnter: s,
        onEnter: i,
        onAfterEnter: c,
        onEnterCancelled: u,
        onBeforeLeave: d,
        onLeave: p,
        onAfterLeave: f,
        onLeaveCancelled: m,
        onBeforeAppear: h,
        onAppear: g,
        onAfterAppear: b,
        onAppearCancelled: v
    } = t, x = String(e.key), y = Mn(l, e), w = (e, t) => {
        e && bt(e, n, 9, t)
    }, k = {
        mode: o,
        persisted: r,
        beforeEnter(t) {
            let n = s;
            if (!l.isMounted) {
                if (!a) return;
                n = h || s
            }
            t._leaveCb && t._leaveCb(!0);
            let o = y[x];
            o && Sl(e, o) && o.el._leaveCb && o.el._leaveCb(), w(n, [t])
        },
        enter(e) {
            let t = i,
                n = c,
                o = u;
            if (!l.isMounted) {
                if (!a) return;
                t = g || i, n = b || c, o = v || u
            }
            let r = !1,
                s = e._enterCb = t => {
                    r || (r = !0, w(t ? o : n, [e]), k.delayedLeave && k.delayedLeave(), e._enterCb = void 0)
                };
            t ? (t(e, s), t.length <= 1 && s()) : s()
        },
        leave(t, n) {
            let a = String(e.key);
            if (t._enterCb && t._enterCb(!0), l.isUnmounting) return n();
            w(d, [t]);
            let o = !1,
                r = t._leaveCb = l => {
                    o || (o = !0, n(), w(l ? m : f, [t]), t._leaveCb = void 0, y[a] === e && delete y[a])
                };
            y[a] = e, p ? (p(t, r), p.length <= 1 && r()) : r()
        },
        clone: e => Vn(e, t, l, n)
    };
    return k
}

function Dn(e) {
    if (jn(e)) return (e = Ll(e)).children = null, e
}

function Nn(e) {
    return jn(e) ? e.children ? e.children[0] : void 0 : e
}

function Un(e, t) {
    6 & e.shapeFlag && e.component ? Un(e.component.subTree, t) : 128 & e.shapeFlag ? (e.ssContent.transition = t.clone(e.ssContent), e.ssFallback.transition = t.clone(e.ssFallback)) : e.transition = t
}

function $n(e, t = !1) {
    let l = [],
        n = 0;
    for (let a = 0; a < e.length; a++) {
        let o = e[a];
        o.type === bl ? (128 & o.patchFlag && n++, l = l.concat($n(o.children, t))) : (t || o.type !== vl) && l.push(o)
    }
    if (n > 1)
        for (let e = 0; e < l.length; e++) l[e].patchFlag = -2;
    return l
}
const jn = e => e.type.__isKeepAlive,
    Fn = {
        name: "KeepAlive",
        __isKeepAlive: !0,
        props: {
            include: [String, RegExp, Array],
            exclude: [String, RegExp, Array],
            max: [String, Number]
        },
        setup(e, {
            slots: t
        }) {
            let l = new Map,
                n = new Set,
                a = null,
                o = la(),
                r = o.suspense,
                s = o.ctx,
                {
                    renderer: {
                        p: i,
                        m: c,
                        um: u,
                        o: {
                            createElement: d
                        }
                    }
                } = s,
                p = d("div");

            function f(e) {
                qn(e), u(e, o, r)
            }

            function m(e) {
                l.forEach(((t, l) => {
                    let n = ua(t.type);
                    !n || e && e(n) || h(l)
                }))
            }

            function h(e) {
                let t = l.get(e);
                a && t.type === a.type ? a && qn(a) : f(t), l.delete(e), n.delete(e)
            }
            s.activate = (e, t, l, n, a) => {
                let o = e.component;
                c(e, t, l, 0, r), i(o.vnode, e, t, l, o, r, n, a), sl((() => {
                    o.isDeactivated = !1, o.a && Z(o.a);
                    let t = e.props && e.props.onVnodeMounted;
                    t && il(t, o.parent, e)
                }), r)
            }, s.deactivate = e => {
                let t = e.component;
                c(e, p, null, 1, r), sl((() => {
                    t.da && Z(t.da);
                    let l = e.props && e.props.onVnodeUnmounted;
                    l && il(l, t.parent, e), t.isDeactivated = !0
                }), r)
            }, Tn((() => [e.include, e.exclude]), (([e, t]) => {
                e && m((t => zn(e, t))), t && m((e => !zn(t, e)))
            }), {
                flush: "post",
                deep: !0
            });
            let g = null,
                b = () => {
                    null != g && l.set(g, Gn(o.subTree))
                };
            return vn(b), yn(b), kn((() => {
                l.forEach((e => {
                    let {
                        subTree: t,
                        suspense: l
                    } = o, n = Gn(t);
                    if (e.type !== n.type) f(e);
                    else {
                        qn(n);
                        let e = n.component.da;
                        e && sl(e, l)
                    }
                }))
            })), () => {
                if (g = null, !t.default) return null;
                let o = t.default(),
                    r = o[0];
                if (o.length > 1) return a = null, o;
                if (!Al(r) || !(4 & r.shapeFlag || 128 & r.shapeFlag)) return a = null, r;
                let s = Gn(r),
                    i = s.type,
                    c = ua(i),
                    {
                        include: u,
                        exclude: d,
                        max: p
                    } = e;
                if (u && (!c || !zn(u, c)) || d && c && zn(d, c)) return a = s, r;
                let f = null == s.key ? i : s.key,
                    m = l.get(f);
                return s.el && (s = Ll(s), 128 & r.shapeFlag && (r.ssContent = s)), g = f, m ? (s.el = m.el, s.component = m.component, s.transition && Un(s, s.transition), s.shapeFlag |= 512, n.delete(f), n.add(f)) : (n.add(f), p && n.size > parseInt(p, 10) && h(n.values().next().value)), s.shapeFlag |= 256, a = s, r
            }
        }
    };

function zn(e, t) {
    return P(e) ? e.some((e => zn(e, t))) : V(e) ? e.split(",").indexOf(t) > -1 : !!e.test && e.test(t)
}

function Bn(e, t, l = na) {
    let n = e.__wdc || (e.__wdc = () => {
        let t = l;
        for (; t;) {
            if (t.isDeactivated) return;
            t = t.parent
        }
        e()
    });
    if (hn(t, n, l), l) {
        let e = l.parent;
        for (; e && e.parent;) jn(e.parent.vnode) && Hn(n, t, l, e), e = e.parent
    }
}

function Hn(e, t, l, n) {
    let a = hn(t, e, n, !0);
    wn((() => {
        T(n[t], a)
    }), l)
}

function qn(e) {
    let t = e.shapeFlag;
    256 & t && (t -= 256), 512 & t && (t -= 512), e.shapeFlag = t
}

function Gn(e) {
    return 128 & e.shapeFlag ? e.ssContent : e
}
const Wn = e => "_" === e[0] || "$stable" === e,
    Kn = e => P(e) ? e.map(Vl) : [Vl(e)],
    Jn = (e, t, l) => en((e => Kn(t(e))), l),
    Xn = (e, t) => {
        let l = e._ctx;
        for (let n in e) {
            if (Wn(n)) continue;
            let a = e[n];
            if (M(a)) t[n] = Jn(0, a, l);
            else if (null != a) {
                let e = Kn(a);
                t[n] = () => e
            }
        }
    },
    Yn = (e, t) => {
        let l = Kn(t);
        e.slots.default = () => l
    };

function Zn(e, t) {
    if (null === zt) return e;
    let l = zt.proxy,
        n = e.dirs || (e.dirs = []);
    for (let e = 0; e < t.length; e++) {
        let [a, o, r, s = x] = t[e];
        M(a) && (a = {
            mounted: a,
            updated: a
        }), n.push({
            dir: a,
            instance: l,
            value: o,
            oldValue: void 0,
            arg: r,
            modifiers: s
        })
    }
    return e
}

function Qn(e, t, l, n) {
    let a = e.dirs,
        o = t && t.dirs;
    for (let r = 0; r < a.length; r++) {
        let s = a[r];
        o && (s.oldValue = o[r].value);
        let i = s.dir[n];
        i && bt(i, l, 8, [e.el, s, e, t])
    }
}

function el() {
    return {
        app: null,
        config: {
            isNativeTag: w,
            performance: !1,
            globalProperties: {},
            optionMergeStrategies: {},
            isCustomElement: w,
            errorHandler: void 0,
            warnHandler: void 0
        },
        mixins: [],
        components: {},
        directives: {},
        provides: Object.create(null)
    }
}
let tl = 0;

function nl(e, t) {
    return function (l, n = null) {
        null == n || N(n) || (n = null);
        let a = el(),
            o = new Set,
            r = !1,
            s = a.app = {
                _uid: tl++,
                _component: l,
                _props: n,
                _container: null,
                _context: a,
                version: ma,
                get config() {
                    return a.config
                },
                set config(e) { },
                use: (e, ...t) => (o.has(e) || (e && M(e.install) ? (o.add(e), e.install(s, ...t)) : M(e) && (o.add(e), e(s, ...t))), s),
                mixin: e => (a.mixins.includes(e) || (a.mixins.push(e), (e.props || e.emits) && (a.deopt = !0)), s),
                component: (e, t) => t ? (a.components[e] = t, s) : a.components[e],
                directive: (e, t) => t ? (a.directives[e] = t, s) : a.directives[e],
                mount(o, i) {
                    if (!r) {
                        let c = Pl(l, n);
                        return c.appContext = a, i && t ? t(c, o) : e(c, o), r = !0, s._container = o, o.__vue_app__ = s, c.component.proxy
                    }
                },
                unmount() {
                    r && (e(null, s._container), delete s._container.__vue_app__)
                },
                provide: (e, t) => (a.provides[e] = t, s)
            };
        return s
    }
}

function ll(e) {
    return M(e) ? {
        setup: e,
        name: e.name
    } : e
}
const al = {
    scheduler: It,
    allowRecurse: !0
},
    sl = function (e, t) {
        t && t.pendingBranch ? P(e) ? t.effects.push(...e) : t.effects.push(e) : Mt(e, St, At, Tt)
    },
    ol = (e, t, l, n) => {
        if (P(e)) return void e.forEach(((e, a) => ol(e, t && (P(t) ? t[a] : t), l, n)));
        let a;
        a = !n || n.type.__asyncLoader ? null : 4 & n.shapeFlag ? n.component.exposed || n.component.proxy : n.el;
        let {
            i: o,
            r: r
        } = e, s = t && t.r, i = o.refs === x ? o.refs = {} : o.refs, c = o.setupState;
        if (null != s && s !== r && (V(s) ? (i[s] = null, R(c, s) && (c[s] = null)) : ot(s) && (s.value = null)), V(r)) {
            let e = () => {
                i[r] = a, R(c, r) && (c[r] = a)
            };
            a ? (e.id = -1, sl(e, l)) : e()
        } else if (ot(r)) {
            let e = () => {
                r.value = a
            };
            a ? (e.id = -1, sl(e, l)) : e()
        } else M(r) && ht(r, o, 12, [a, i])
    };

function rl(e) {
    return function (e, t) {
        let l, n, {
            insert: a,
            remove: o,
            patchProp: r,
            forcePatchProp: s,
            createElement: i,
            createText: c,
            createComment: u,
            setText: d,
            setElementText: p,
            parentNode: f,
            nextSibling: m,
            setScopeId: h = k,
            cloneNode: g,
            insertStaticContent: b
        } = e,
            v = (e, t, l, n = null, a = null, o = null, r = !1, s = !1) => {
                e && !Sl(e, t) && (n = te(e), W(e, a, o, !0), e = null), -2 === t.patchFlag && (s = !1, t.dynamicChildren = null);
                let {
                    type: i,
                    ref: c,
                    shapeFlag: u
                } = t;
                switch (i) {
                    case gl:
                        w(e, t, l, n);
                        break;
                    case vl:
                        P(e, t, l, n);
                        break;
                    case xl:
                        null == e && _(t, l, n, r);
                        break;
                    case bl:
                        O(e, t, l, n, a, o, r, s);
                        break;
                    default:
                        1 & u ? C(e, t, l, n, a, o, r, s) : 6 & u ? j(e, t, l, n, a, o, r, s) : (64 & u || 128 & u) && i.process(e, t, l, n, a, o, r, s, ne)
                }
                null != c && a && ol(c, e && e.ref, o, t)
            },
            w = (e, t, l, n) => {
                if (null == e) a(t.el = c(t.children), l, n);
                else {
                    let l = t.el = e.el;
                    t.children !== e.children && d(l, t.children)
                }
            },
            P = (e, t, l, n) => {
                null == e ? a(t.el = u(t.children || ""), l, n) : t.el = e.el
            },
            _ = (e, t, l, n) => {
                [e.el, e.anchor] = b(e.children, t, l, n)
            },
            C = (e, t, l, n, a, o, r, s) => {
                r = r || "svg" === t.type, null == e ? A(t, l, n, a, o, r, s) : L(e, t, a, o, r, s)
            },
            A = (e, t, l, n, o, s, c) => {
                let u, d, {
                    type: f,
                    props: m,
                    shapeFlag: h,
                    transition: b,
                    scopeId: v,
                    patchFlag: x,
                    dirs: y
                } = e;
                if (e.el && void 0 !== g && -1 === x) u = e.el = g(e.el);
                else {
                    if (u = e.el = i(e.type, s, m && m.is), 8 & h ? p(u, e.children) : 16 & h && E(e.children, u, null, n, o, s && "foreignObject" !== f, c || !!e.dynamicChildren), y && Qn(e, null, n, "created"), m) {
                        for (let t in m) B(t) || r(u, t, null, m[t], s, e.children, n, o, ee);
                        (d = m.onVnodeBeforeMount) && il(d, n, e)
                    }
                    T(u, v, e, n)
                }
                y && Qn(e, null, n, "beforeMount");
                let w = (!o || o && !o.pendingBranch) && b && !b.persisted;
                w && b.beforeEnter(u), a(u, t, l), ((d = m && m.onVnodeMounted) || w || y) && sl((() => {
                    d && il(d, n, e), w && b.enter(u), y && Qn(e, null, n, "mounted")
                }), o)
            },
            T = (e, t, l, n) => {
                if (t && h(e, t), n) {
                    let a = n.type.__scopeId;
                    a && a !== t && h(e, a + "-s"), l === n.subTree && T(e, n.vnode.scopeId, n.vnode, n.parent)
                }
            },
            E = (e, t, l, n, a, o, r, s = 0) => {
                for (let i = s; i < e.length; i++) {
                    let s = e[i] = r ? Dl(e[i]) : Vl(e[i]);
                    v(null, s, t, l, n, a, o, r)
                }
            },
            L = (e, t, l, n, a, o) => {
                let i = t.el = e.el,
                    {
                        patchFlag: c,
                        dynamicChildren: u,
                        dirs: d
                    } = t;
                c |= 16 & e.patchFlag;
                let f, m = e.props || x,
                    h = t.props || x;
                if ((f = h.onVnodeBeforeUpdate) && il(f, l, t, e), d && Qn(t, e, l, "beforeUpdate"), c > 0) {
                    if (16 & c) I(i, t, m, h, l, n, a);
                    else if (2 & c && m.class !== h.class && r(i, "class", null, h.class, a), 4 & c && r(i, "style", m.style, h.style, a), 8 & c) {
                        let o = t.dynamicProps;
                        for (let t = 0; t < o.length; t++) {
                            let c = o[t],
                                u = m[c],
                                d = h[c];
                            (d !== u || s && s(i, c)) && r(i, c, u, d, a, e.children, l, n, ee)
                        }
                    }
                    1 & c && e.children !== t.children && p(i, t.children)
                } else o || null != u || I(i, t, m, h, l, n, a);
                let g = a && "foreignObject" !== t.type;
                u ? M(e.dynamicChildren, u, i, l, n, g) : o || F(e, t, i, null, l, n, g), ((f = h.onVnodeUpdated) || d) && sl((() => {
                    f && il(f, l, t, e), d && Qn(t, e, l, "updated")
                }), n)
            },
            M = (e, t, l, n, a, o) => {
                for (let r = 0; r < t.length; r++) {
                    let s = e[r],
                        i = t[r],
                        c = s.type === bl || !Sl(s, i) || 6 & s.shapeFlag || 64 & s.shapeFlag ? f(s.el) : l;
                    v(s, i, c, null, n, a, o, !0)
                }
            },
            I = (e, t, l, n, a, o, i) => {
                if (l !== n) {
                    for (let c in n) {
                        if (B(c)) continue;
                        let u = n[c],
                            d = l[c];
                        (u !== d || s && s(e, c)) && r(e, c, d, u, i, t.children, a, o, ee)
                    }
                    if (l !== x)
                        for (let s in l) B(s) || s in n || r(e, s, l[s], null, i, t.children, a, o, ee)
                }
            },
            O = (e, t, l, n, o, r, s, i) => {
                let u = t.el = e ? e.el : c(""),
                    d = t.anchor = e ? e.anchor : c(""),
                    {
                        patchFlag: p,
                        dynamicChildren: f
                    } = t;
                p > 0 && (i = !0), null == e ? (a(u, l, n), a(d, l, n), E(t.children, l, d, o, r, s, i)) : p > 0 && 64 & p && f && e.dynamicChildren ? (M(e.dynamicChildren, f, l, o, r, s), (null != t.key || o && t === o.subTree) && cl(e, t, !0)) : F(e, t, l, d, o, r, s, i)
            },
            j = (e, t, l, n, a, o, r, s) => {
                null == e ? 512 & t.shapeFlag ? a.ctx.activate(t, l, n, r, s) : V(t, l, n, a, o, r, s) : N(e, t, s)
            },
            V = (e, t, l, n, a, o, r) => {
                let s = e.component = function (e, t, l) {
                    let n = e.type,
                        a = (t ? t.appContext : e.appContext) || ea,
                        o = {
                            uid: ta++,
                            vnode: e,
                            type: n,
                            parent: t,
                            appContext: a,
                            root: null,
                            next: null,
                            subTree: null,
                            update: null,
                            render: null,
                            proxy: null,
                            exposed: null,
                            withProxy: null,
                            effects: null,
                            provides: t ? t.provides : Object.create(a.provides),
                            accessCache: null,
                            renderCache: [],
                            components: null,
                            directives: null,
                            propsOptions: un(n, a),
                            emitsOptions: jt(n, a),
                            emit: null,
                            emitted: null,
                            ctx: x,
                            data: x,
                            props: x,
                            attrs: x,
                            slots: x,
                            refs: x,
                            setupState: x,
                            setupContext: null,
                            suspense: l,
                            suspenseId: l ? l.pendingId : 0,
                            asyncDep: null,
                            asyncResolved: !1,
                            isMounted: !1,
                            isUnmounted: !1,
                            isDeactivated: !1,
                            bc: null,
                            c: null,
                            bm: null,
                            m: null,
                            bu: null,
                            u: null,
                            um: null,
                            bum: null,
                            da: null,
                            a: null,
                            rtg: null,
                            rtc: null,
                            ec: null
                        };
                    return o.ctx = {
                        _: o
                    }, o.root = t ? t.root : o, o.emit = $t.bind(null, o), o
                }(e, n, a);
                if (jn(e) && (s.ctx.renderer = ne), function (e, t = !1) {
                    oa = t;
                    let {
                        props: l,
                        children: n
                    } = e.vnode, a = sa(e);
                    on(e, l, a, t), ((e, t) => {
                        if (32 & e.vnode.shapeFlag) {
                            let l = t._;
                            l ? (e.slots = t, Q(t, "_", l)) : Xn(t, e.slots = {})
                        } else e.slots = {}, t && Yn(e, t);
                        Q(e.slots, Tl, 1)
                    })(e, n), a && function (e, t) {
                        let l = e.type;
                        e.accessCache = Object.create(null), e.proxy = new Proxy(e.ctx, Zl);
                        let {
                            setup: n
                        } = l;
                        if (n) {
                            let l = e.setupContext = n.length > 1 ? function (e) {
                                return {
                                    attrs: e.attrs,
                                    slots: e.slots,
                                    emit: e.emit,
                                    expose: t => {
                                        e.exposed = pt(t)
                                    }
                                }
                            }(e) : null;
                            na = e, pe();
                            let a = ht(n, e, 0, [e.props, l]);
                            if (fe(), na = null, U(a)) {
                                if (t) return a.then((t => {
                                    ra(e, t)
                                }));
                                e.asyncDep = a
                            } else ra(e, a)
                        } else ia(e)
                    }(e, t), oa = !1
                }(s), s.asyncDep) {
                    if (a && a.registerDep(s, D), !e.el) {
                        let e = s.subTree = Pl(vl);
                        P(null, e, t, l)
                    }
                } else D(s, e, t, l, a, o, r)
            },
            N = (e, t, l) => {
                let n = t.component = e.component;
                if (function (e, t, l) {
                    let {
                        props: n,
                        children: a,
                        component: o
                    } = e, {
                        props: r,
                        children: s,
                        patchFlag: i
                    } = t, c = o.emitsOptions;
                    if (t.dirs || t.transition) return !0;
                    if (!(l && i >= 0)) return !(!a && !s || s && s.$stable) || n !== r && (n ? !r || Kt(n, r, c) : !!r);
                    if (1024 & i) return !0;
                    if (16 & i) return n ? Kt(n, r, c) : !!r;
                    if (8 & i) {
                        let e = t.dynamicProps;
                        for (let t = 0; t < e.length; t++) {
                            let l = e[t];
                            if (r[l] !== n[l] && !Ft(c, l)) return !0
                        }
                    }
                    return !1
                }(e, t, l)) {
                    if (n.asyncDep && !n.asyncResolved) return void $(n, t, l);
                    n.next = t,
                        function (e) {
                            let t = yt.indexOf(e);
                            t > -1 && yt.splice(t, 1)
                        }(n.update), n.update()
                } else t.component = e.component, t.el = e.el, n.vnode = t
            },
            D = (e, t, l, a, o, r, s) => {
                e.update = oe((function () {
                    if (e.isMounted) {
                        let t, {
                            next: l,
                            bu: n,
                            u: a,
                            parent: i,
                            vnode: c
                        } = e,
                            u = l;
                        l ? (l.el = c.el, $(e, l, s)) : l = c, n && Z(n), (t = l.props && l.props.onVnodeBeforeUpdate) && il(t, i, l, c);
                        let d = Ht(e),
                            p = e.subTree;
                        e.subTree = d, v(p, d, f(p.el), te(p), e, o, r), l.el = d.el, null === u && function ({
                            vnode: e,
                            parent: t
                        }, l) {
                            for (; t && t.subTree === e;)(e = t.vnode).el = l, t = t.parent
                        }(e, d.el), a && sl(a, o), (t = l.props && l.props.onVnodeUpdated) && sl((() => {
                            il(t, i, l, c)
                        }), o)
                    } else {
                        let s, {
                            el: i,
                            props: c
                        } = t,
                            {
                                bm: u,
                                m: d,
                                parent: p
                            } = e;
                        u && Z(u), (s = c && c.onVnodeBeforeMount) && il(s, p, t);
                        let f = e.subTree = Ht(e);
                        if (i && n ? n(t.el, f, e, o) : (v(null, f, l, a, e, o, r), t.el = f.el), d && sl(d, o), s = c && c.onVnodeMounted) {
                            let e = t;
                            sl((() => {
                                il(s, p, e)
                            }), o)
                        }
                        let {
                            a: m
                        } = e;
                        m && 256 & t.shapeFlag && sl(m, o), e.isMounted = !0, t = l = a = null
                    }
                }), al)
            },
            $ = (e, t, l) => {
                t.component = e;
                let n = e.vnode.props;
                e.vnode = t, e.next = null,
                    function (e, t, l, n) {
                        let {
                            props: a,
                            attrs: o,
                            vnode: {
                                patchFlag: r
                            }
                        } = e, s = at(a), [i] = e.propsOptions;
                        if (!(n || r > 0) || 16 & r) {
                            let n;
                            for (let r in rn(e, t, a, o), s) t && (R(t, r) || (n = K(r)) !== r && R(t, n)) || (i ? l && (void 0 !== l[r] || void 0 !== l[n]) && (a[r] = cn(i, t || x, r, void 0, e)) : delete a[r]);
                            if (o !== s)
                                for (let e in o) t && R(t, e) || delete o[e]
                        } else if (8 & r) {
                            let l = e.vnode.dynamicProps;
                            for (let n = 0; n < l.length; n++) {
                                let r = l[n],
                                    c = t[r];
                                if (i)
                                    if (R(o, r)) o[r] = c;
                                    else {
                                        let t = G(r);
                                        a[t] = cn(i, s, t, c, e)
                                    }
                                else o[r] = c
                            }
                        }
                        he(e, "set", "$attrs")
                    }(e, t.props, n, l), ((e, t) => {
                        let {
                            vnode: l,
                            slots: n
                        } = e, a = !0, o = x;
                        if (32 & l.shapeFlag) {
                            let e = t._;
                            e ? 1 === e ? a = !1 : S(n, t) : (a = !t.$stable, Xn(t, n)), o = t
                        } else t && (Yn(e, t), o = {
                            default: 1
                        });
                        if (a)
                            for (let e in n) Wn(e) || e in o || delete n[e]
                    })(e, t.children), Vt(void 0, e.update)
            },
            F = (e, t, l, n, a, o, r, s = !1) => {
                let i = e && e.children,
                    c = e ? e.shapeFlag : 0,
                    u = t.children,
                    {
                        patchFlag: d,
                        shapeFlag: f
                    } = t;
                if (d > 0) {
                    if (128 & d) return void H(i, u, l, n, a, o, r, s);
                    if (256 & d) return void z(i, u, l, n, a, o, r, s)
                }
                8 & f ? (16 & c && ee(i, a, o), u !== i && p(l, u)) : 16 & c ? 16 & f ? H(i, u, l, n, a, o, r, s) : ee(i, a, o, !0) : (8 & c && p(l, ""), 16 & f && E(u, l, n, a, o, r, s))
            },
            z = (e, t, l, n, a, o, r, s) => {
                t = t || y;
                let i, c = (e = e || y).length,
                    u = t.length,
                    d = Math.min(c, u);
                for (i = 0; i < d; i++) {
                    let n = t[i] = s ? Dl(t[i]) : Vl(t[i]);
                    v(e[i], n, l, null, a, o, r, s)
                }
                c > u ? ee(e, a, o, !0, !1, d) : E(t, l, n, a, o, r, s, d)
            },
            H = (e, t, l, n, a, o, r, s) => {
                let i = 0,
                    c = t.length,
                    u = e.length - 1,
                    d = c - 1;
                for (; i <= u && i <= d;) {
                    let n = e[i],
                        c = t[i] = s ? Dl(t[i]) : Vl(t[i]);
                    if (!Sl(n, c)) break;
                    v(n, c, l, null, a, o, r, s), i++
                }
                for (; i <= u && i <= d;) {
                    let n = e[u],
                        i = t[d] = s ? Dl(t[d]) : Vl(t[d]);
                    if (!Sl(n, i)) break;
                    v(n, i, l, null, a, o, r, s), u--, d--
                }
                if (i > u) {
                    if (i <= d) {
                        let e = d + 1,
                            u = e < c ? t[e].el : n;
                        for (; i <= d;) v(null, t[i] = s ? Dl(t[i]) : Vl(t[i]), l, u, a, o, r), i++
                    }
                } else if (i > d)
                    for (; i <= u;) W(e[i], a, o, !0), i++;
                else {
                    let p = i,
                        f = i,
                        m = new Map;
                    for (i = f; i <= d; i++) {
                        let e = t[i] = s ? Dl(t[i]) : Vl(t[i]);
                        null != e.key && m.set(e.key, i)
                    }
                    let h, g = 0,
                        b = d - f + 1,
                        x = !1,
                        w = 0,
                        k = Array(b);
                    for (i = 0; i < b; i++) k[i] = 0;
                    for (i = p; i <= u; i++) {
                        let n, c = e[i];
                        if (g >= b) W(c, a, o, !0);
                        else {
                            if (null != c.key) n = m.get(c.key);
                            else
                                for (h = f; h <= d; h++)
                                    if (0 === k[h - f] && Sl(c, t[h])) {
                                        n = h;
                                        break
                                    } void 0 === n ? W(c, a, o, !0) : (k[n - f] = i + 1, n >= w ? w = n : x = !0, v(c, t[n], l, null, a, o, r, s), g++)
                        }
                    }
                    let P = x ? function (e) {
                        let t, l, n, a, o, r = e.slice(),
                            s = [0],
                            i = e.length;
                        for (t = 0; t < i; t++) {
                            let i = e[t];
                            if (0 !== i) {
                                if (e[l = s[s.length - 1]] < i) {
                                    r[t] = l, s.push(t);
                                    continue
                                }
                                for (n = 0, a = s.length - 1; n < a;) e[s[o = (n + a) / 2 | 0]] < i ? n = o + 1 : a = o;
                                i < e[s[n]] && (n > 0 && (r[t] = s[n - 1]), s[n] = t)
                            }
                        }
                        for (a = s[(n = s.length) - 1]; n-- > 0;) s[n] = a, a = r[a];
                        return s
                    }(k) : y;
                    for (h = P.length - 1, i = b - 1; i >= 0; i--) {
                        let e = f + i,
                            s = t[e],
                            u = e + 1 < c ? t[e + 1].el : n;
                        0 === k[i] ? v(null, s, l, u, a, o, r) : x && (h < 0 || i !== P[h] ? q(s, l, u, 2) : h--)
                    }
                }
            },
            q = (e, t, l, n, o = null) => {
                let {
                    el: r,
                    type: s,
                    transition: i,
                    children: c,
                    shapeFlag: u
                } = e;
                if (6 & u) q(e.component.subTree, t, l, n);
                else if (128 & u) e.suspense.move(t, l, n);
                else if (64 & u) s.move(e, t, l, ne);
                else if (s !== bl)
                    if (s !== xl)
                        if (2 !== n && 1 & u && i)
                            if (0 === n) i.beforeEnter(r), a(r, t, l), sl((() => i.enter(r)), o);
                            else {
                                let {
                                    leave: e,
                                    delayLeave: n,
                                    afterLeave: o
                                } = i, s = () => a(r, t, l), c = () => {
                                    e(r, (() => {
                                        s(), o && o()
                                    }))
                                };
                                n ? n(r, s, c) : c()
                            }
                        else a(r, t, l);
                    else (({
                        el: e,
                        anchor: t
                    }, l, n) => {
                        let o;
                        for (; e && e !== t;) o = m(e), a(e, l, n), e = o;
                        a(t, l, n)
                    })(e, t, l);
                else {
                    a(r, t, l);
                    for (let e = 0; e < c.length; e++) q(c[e], t, l, n);
                    a(e.anchor, t, l)
                }
            },
            W = (e, t, l, n = !1, a = !1) => {
                let {
                    type: o,
                    props: r,
                    ref: s,
                    children: i,
                    dynamicChildren: c,
                    shapeFlag: u,
                    patchFlag: d,
                    dirs: p
                } = e;
                if (null != s && ol(s, null, l, null), 256 & u) return void t.ctx.deactivate(e);
                let f, m = 1 & u && p;
                if ((f = r && r.onVnodeBeforeUnmount) && il(f, t, e), 6 & u) X(e.component, l, n);
                else {
                    if (128 & u) return void e.suspense.unmount(l, n);
                    m && Qn(e, null, t, "beforeUnmount"), c && (o !== bl || d > 0 && 64 & d) ? ee(c, t, l, !1, !0) : (o === bl && (128 & d || 256 & d) || !a && 16 & u) && ee(i, t, l), 64 & u && (n || !ul(e.props)) && e.type.remove(e, ne), n && J(e)
                } ((f = r && r.onVnodeUnmounted) || m) && sl((() => {
                    f && il(f, t, e), m && Qn(e, null, t, "unmounted")
                }), l)
            },
            J = e => {
                let {
                    type: t,
                    el: l,
                    anchor: n,
                    transition: a
                } = e;
                if (t === bl) return void Y(l, n);
                if (t === xl) return void (({
                    el: e,
                    anchor: t
                }) => {
                    let l;
                    for (; e && e !== t;) l = m(e), o(e), e = l;
                    o(t)
                })(e);
                let r = () => {
                    o(l), a && !a.persisted && a.afterLeave && a.afterLeave()
                };
                if (1 & e.shapeFlag && a && !a.persisted) {
                    let {
                        leave: t,
                        delayLeave: n
                    } = a, o = () => t(l, r);
                    n ? n(e.el, r, o) : o()
                } else r()
            },
            Y = (e, t) => {
                let l;
                for (; e !== t;) l = m(e), o(e), e = l;
                o(t)
            },
            X = (e, t, l) => {
                let {
                    bum: n,
                    effects: a,
                    update: o,
                    subTree: r,
                    um: s
                } = e;
                if (n && Z(n), a)
                    for (let e = 0; e < a.length; e++) re(a[e]);
                o && (re(o), W(r, e, t, l)), s && sl(s, t), sl((() => {
                    e.isUnmounted = !0
                }), t), t && t.pendingBranch && !t.isUnmounted && e.asyncDep && !e.asyncResolved && e.suspenseId === t.pendingId && (t.deps--, 0 === t.deps && t.resolve())
            },
            ee = (e, t, l, n = !1, a = !1, o = 0) => {
                for (let r = o; r < e.length; r++) W(e[r], t, l, n, a)
            },
            te = e => 6 & e.shapeFlag ? te(e.component.subTree) : 128 & e.shapeFlag ? e.suspense.next() : m(e.anchor || e.el),
            le = (e, t) => {
                null == e ? t._vnode && W(t._vnode, null, null, !0) : v(t._vnode || null, e, t), Dt(), t._vnode = e
            },
            ne = {
                p: v,
                um: W,
                m: q,
                r: J,
                mt: V,
                mc: E,
                pc: F,
                pbc: M,
                n: te,
                o: e
            };
        return {
            render: le,
            hydrate: l,
            createApp: nl(le, l)
        }
    }(e)
}

function il(e, t, l, n = null) {
    bt(e, t, 7, [l, n])
}

function cl(e, t, l = !1) {
    let n = e.children,
        a = t.children;
    if (P(n) && P(a))
        for (let e = 0; e < n.length; e++) {
            let t = n[e],
                o = a[e];
            1 & o.shapeFlag && !o.dynamicChildren && ((o.patchFlag <= 0 || 32 === o.patchFlag) && ((o = a[e] = Dl(a[e])).el = t.el), l || cl(t, o))
        }
}
const ul = e => e && (e.disabled || "" === e.disabled);

function dl(e) {
    return ml("components", e) || e
}
const pl = Symbol();

function fl(e) {
    return V(e) ? ml("components", e, !1) || e : e || pl
}

function ml(e, t, l = !0) {
    let n = zt || na;
    if (n) {
        let l = n.type;
        if ("components" === e) {
            if ("_self" === t) return l;
            let e = ua(l);
            if (e && (e === t || e === G(t) || e === J(G(t)))) return l
        }
        return hl(n[e] || l[e], t) || hl(n.appContext[e], t)
    }
}

function hl(e, t) {
    return e && (e[t] || e[G(t)] || e[J(G(t))])
}
const bl = Symbol(void 0),
    gl = Symbol(void 0),
    vl = Symbol(void 0),
    xl = Symbol(void 0),
    yl = [];
let kl = null;

function wl(e = !1) {
    yl.push(kl = e ? null : [])
}

function Cl() {
    yl.pop(), kl = yl[yl.length - 1] || null
}

function _l(e, t, l, n, a) {
    let o = Pl(e, t, l, n, a, !0);
    return o.dynamicChildren = kl || y, Cl(), kl && kl.push(o), o
}

function Al(e) {
    return !!e && !0 === e.__v_isVNode
}

function Sl(e, t) {
    return e.type === t.type && e.key === t.key
}
const Tl = "__vInternal",
    El = ({
        key: e
    }) => null != e ? e : null,
    Rl = ({
        ref: e
    }) => null != e ? V(e) || ot(e) || M(e) ? {
        i: zt,
        r: e
    } : e : null,
    Pl = function (e, t = null, l = null, n = 0, a = null, o = !1) {
        var r;
        if (e && e !== pl || (e = vl), Al(e)) {
            let n = Ll(e, t, !0);
            return l && Nl(n, l), n
        }
        if (M(r = e) && "__vccOpts" in r && (e = e.__vccOpts), t) {
            (lt(t) || Tl in t) && (t = S({}, t));
            let {
                class: e,
                style: l
            } = t;
            e && !V(e) && (t.class = m(e)), N(l) && (lt(l) && !P(l) && (l = S({}, l)), t.style = u(l))
        }
        let s = V(e) ? 1 : e.__isSuspense ? 128 : e.__isTeleport ? 64 : N(e) ? 4 : M(e) ? 2 : 0,
            i = {
                __v_isVNode: !0,
                __v_skip: !0,
                type: e,
                props: t,
                key: t && El(t),
                ref: t && Rl(t),
                scopeId: tn,
                children: null,
                component: null,
                suspense: null,
                ssContent: null,
                ssFallback: null,
                dirs: null,
                transition: null,
                el: null,
                anchor: null,
                target: null,
                targetAnchor: null,
                staticCount: 0,
                shapeFlag: s,
                patchFlag: n,
                dynamicProps: a,
                dynamicChildren: null,
                appContext: null
            };
        if (Nl(i, l), 128 & s) {
            let {
                content: e,
                fallback: t
            } = function (e) {
                let t, l, {
                    shapeFlag: n,
                    children: a
                } = e;
                return 32 & n ? (t = Jt(a.default), l = Jt(a.fallback)) : (t = Jt(a), l = Vl(null)), {
                    content: t,
                    fallback: l
                }
            }(i);
            i.ssContent = e, i.ssFallback = t
        }
        return !o && kl && (n > 0 || 6 & s) && 32 !== n && kl.push(i), i
    };

function Ll(e, t, l = !1) {
    let {
        props: n,
        ref: a,
        patchFlag: o,
        children: r
    } = e, s = t ? Ul(n || {}, t) : n;
    return {
        __v_isVNode: !0,
        __v_skip: !0,
        type: e.type,
        props: s,
        key: s && El(s),
        ref: t && t.ref ? l && a ? P(a) ? a.concat(Rl(t)) : [a, Rl(t)] : Rl(t) : a,
        scopeId: e.scopeId,
        children: r,
        target: e.target,
        targetAnchor: e.targetAnchor,
        staticCount: e.staticCount,
        shapeFlag: e.shapeFlag,
        patchFlag: t && e.type !== bl ? -1 === o ? 16 : 16 | o : o,
        dynamicProps: e.dynamicProps,
        dynamicChildren: e.dynamicChildren,
        appContext: e.appContext,
        dirs: e.dirs,
        transition: e.transition,
        component: e.component,
        suspense: e.suspense,
        ssContent: e.ssContent && Ll(e.ssContent),
        ssFallback: e.ssFallback && Ll(e.ssFallback),
        el: e.el,
        anchor: e.anchor
    }
}

function Il(e = " ", t = 0) {
    return Pl(gl, null, e, t)
}

function Ol(e, t) {
    let l = Pl(xl, null, e);
    return l.staticCount = t, l
}

function Ml(e = "", t = !1) {
    return t ? (wl(), _l(vl, null, e)) : Pl(vl, null, e)
}

function Vl(e) {
    return null == e || "boolean" == typeof e ? Pl(vl) : P(e) ? Pl(bl, null, e) : "object" == typeof e ? null === e.el ? e : Ll(e) : Pl(gl, null, String(e))
}

function Dl(e) {
    return null === e.el ? e : Ll(e)
}

function Nl(e, t) {
    let l = 0,
        {
            shapeFlag: n
        } = e;
    if (null == t) t = null;
    else if (P(t)) l = 16;
    else if ("object" == typeof t) {
        if (1 & n || 64 & n) {
            let l = t.default;
            return void (l && (l._c && Yt(1), Nl(e, l()), l._c && Yt(-1)))
        } {
            l = 32;
            let n = t._;
            n || Tl in t ? 3 === n && zt && (1024 & zt.vnode.patchFlag ? (t._ = 2, e.patchFlag |= 1024) : t._ = 1) : t._ctx = zt
        }
    } else M(t) ? (t = {
        default: t,
        _ctx: zt
    }, l = 32) : (t = String(t), 64 & n ? (l = 16, t = [Il(t)]) : l = 8);
    e.children = t, e.shapeFlag |= l
}

function Ul(...e) {
    let t = S({}, e[0]);
    for (let l = 1; l < e.length; l++) {
        let n = e[l];
        for (let e in n)
            if ("class" === e) t.class !== n.class && (t.class = m([t.class, n.class]));
            else if ("style" === e) t.style = u([t.style, n.style]);
            else if (_(e)) {
                let l = t[e],
                    a = n[e];
                l !== a && (t[e] = l ? [].concat(l, n[e]) : a)
            } else "" !== e && (t[e] = n[e])
    }
    return t
}

function $l(e, t) {
    if (na) {
        let l = na.provides,
            n = na.parent && na.parent.provides;
        n === l && (l = na.provides = Object.create(n)), l[e] = t
    }
}

function jl(e, t, l = !1) {
    let n = na || zt;
    if (n) {
        let a = null == n.parent ? n.vnode.appContext && n.vnode.appContext.provides : n.parent.provides;
        if (a && e in a) return a[e];
        if (arguments.length > 1) return l && M(t) ? t() : t
    }
}
let Fl = !1;

function zl(e, t, l = [], n = [], a = [], o = !1) {
    let {
        mixins: r,
        extends: s,
        data: i,
        computed: c,
        methods: u,
        watch: d,
        provide: p,
        inject: f,
        components: m,
        directives: h,
        beforeMount: g,
        mounted: b,
        beforeUpdate: v,
        updated: y,
        activated: w,
        deactivated: _,
        beforeDestroy: C,
        beforeUnmount: A,
        destroyed: T,
        unmounted: R,
        render: E,
        renderTracked: L,
        renderTriggered: I,
        errorCaptured: O,
        expose: j
    } = t, V = e.proxy, D = e.ctx, U = e.appContext.mixins;
    if (o && E && e.render === k && (e.render = E), o || (Fl = !0, Bl("beforeCreate", "bc", t, e, U), Fl = !1, Gl(e, U, l, n, a)), s && zl(e, s, l, n, a, !0), r && Gl(e, r, l, n, a), f)
        if (P(f))
            for (let e = 0; e < f.length; e++) {
                let t = f[e];
                D[t] = jl(t)
            } else
            for (let e in f) {
                let t = f[e];
                N(t) ? D[e] = jl(t.from || e, t.default, !0) : D[e] = jl(t)
            }
    if (u)
        for (let e in u) {
            let t = u[e];
            M(t) && (D[e] = t.bind(V))
        }
    if (o ? i && l.push(i) : (l.length && l.forEach((t => Wl(e, t, V))), i && Wl(e, i, V)), c)
        for (let e in c) {
            let t = c[e],
                l = da({
                    get: M(t) ? t.bind(V, V) : M(t.get) ? t.get.bind(V, V) : k,
                    set: !M(t) && M(t.set) ? t.set.bind(V) : k
                });
            Object.defineProperty(D, e, {
                enumerable: !0,
                configurable: !0,
                get: () => l.value,
                set: e => l.value = e
            })
        }
    if (d && n.push(d), !o && n.length && n.forEach((e => {
        for (let t in e) Kl(e[t], D, V, t)
    })), p && a.push(p), !o && a.length && a.forEach((e => {
        let t = M(e) ? e.call(V) : e;
        Reflect.ownKeys(t).forEach((e => {
            $l(e, t[e])
        }))
    })), o && (m && S(e.components || (e.components = S({}, e.type.components)), m), h && S(e.directives || (e.directives = S({}, e.type.directives)), h)), o || Bl("created", "c", t, e, U), g && gn(g.bind(V)), b && vn(b.bind(V)), v && xn(v.bind(V)), y && yn(y.bind(V)), w && Bn(w.bind(V), "a", undefined), _ && Bn(_.bind(V), "da", void 0), O && ((e, t = na) => {
        hn("ec", e, t)
    })(O.bind(V)), L && _n(L.bind(V)), I && Cn(I.bind(V)), A && kn(A.bind(V)), R && wn(R.bind(V)), P(j) && !o)
        if (j.length) {
            let t = e.exposed || (e.exposed = pt({}));
            j.forEach((e => {
                var l, n;
                t[e] = ot((l = V)[n = e]) ? l[n] : new ft(l, n)
            }))
        } else e.exposed || (e.exposed = x)
}

function Bl(e, t, l, n, a) {
    ql(e, t, a, n);
    let {
        extends: o,
        mixins: r
    } = l;
    o && Hl(e, t, o, n), r && ql(e, t, r, n);
    let s = l[e];
    s && bt(s.bind(n.proxy), n, t)
}

function Hl(e, t, l, n) {
    l.extends && Hl(e, t, l.extends, n);
    let a = l[e];
    a && bt(a.bind(n.proxy), n, t)
}

function ql(e, t, l, n) {
    for (let a = 0; a < l.length; a++) {
        let o = l[a].mixins;
        o && ql(e, t, o, n);
        let r = l[a][e];
        r && bt(r.bind(n.proxy), n, t)
    }
}

function Gl(e, t, l, n, a) {
    for (let o = 0; o < t.length; o++) zl(e, t[o], l, n, a, !0)
}

function Wl(e, t, l) {
    let n = t.call(l, l);
    N(n) && (e.data === x ? e.data = Ze(n) : S(e.data, n))
}

function Kl(e, t, l, n) {
    let a = n.includes(".") ? function (e, t) {
        let l = t.split(".");
        return () => {
            let t = e;
            for (let e = 0; e < l.length && t; e++) t = t[l[e]];
            return t
        }
    }(l, n) : () => l[n];
    if (V(e)) {
        let l = t[e];
        M(l) && Tn(a, l)
    } else if (M(e)) Tn(a, e.bind(l));
    else if (N(e))
        if (P(e)) e.forEach((e => Kl(e, t, l, n)));
        else {
            let n = M(e.handler) ? e.handler.bind(l) : t[e.handler];
            M(n) && Tn(a, n, e)
        }
}

function Jl(e, t, l) {
    let n = l.appContext.config.optionMergeStrategies,
        {
            mixins: a,
            extends: o
        } = t;
    for (let r in o && Jl(e, o, l), a && a.forEach((t => Jl(e, t, l))), t) n && R(n, r) ? e[r] = n[r](e[r], t[r], l.proxy, r) : e[r] = t[r]
}
const Xl = e => e ? sa(e) ? e.exposed ? e.exposed : e.proxy : Xl(e.parent) : null,
    Yl = S(Object.create(null), {
        $: e => e,
        $el: e => e.vnode.el,
        $data: e => e.data,
        $props: e => e.props,
        $attrs: e => e.attrs,
        $slots: e => e.slots,
        $refs: e => e.refs,
        $parent: e => Xl(e.parent),
        $root: e => Xl(e.root),
        $emit: e => e.emit,
        $options: e => function (e) {
            let t = e.type,
                {
                    __merged: l,
                    mixins: n,
                    extends: a
                } = t;
            if (l) return l;
            let o = e.appContext.mixins;
            if (!o.length && !n && !a) return t;
            let r = {};
            return o.forEach((t => Jl(r, t, e))), Jl(r, t, e), t.__merged = r
        }(e),
        $forceUpdate: e => () => It(e.update),
        $nextTick: e => Lt.bind(e.proxy),
        $watch: e => Rn.bind(e)
    }),
    Zl = {
        get({
            _: e
        }, t) {
            let l, {
                ctx: n,
                setupState: a,
                data: o,
                props: r,
                accessCache: s,
                type: i,
                appContext: c
            } = e;
            if ("__v_skip" === t) return !0;
            if ("$" !== t[0]) {
                let i = s[t];
                if (void 0 !== i) switch (i) {
                    case 0:
                        return a[t];
                    case 1:
                        return o[t];
                    case 3:
                        return n[t];
                    case 2:
                        return r[t]
                } else {
                    if (a !== x && R(a, t)) return s[t] = 0, a[t];
                    if (o !== x && R(o, t)) return s[t] = 1, o[t];
                    if ((l = e.propsOptions[0]) && R(l, t)) return s[t] = 2, r[t];
                    if (n !== x && R(n, t)) return s[t] = 3, n[t];
                    Fl || (s[t] = 4)
                }
            }
            let u, d, p = Yl[t];
            return p ? ("$attrs" === t && me(e, 0, t), p(e)) : (u = i.__cssModules) && (u = u[t]) ? u : n !== x && R(n, t) ? (s[t] = 3, n[t]) : R(d = c.config.globalProperties, t) ? d[t] : void 0
        },
        set({
            _: e
        }, t, l) {
            let {
                data: n,
                setupState: a,
                ctx: o
            } = e;
            if (a !== x && R(a, t)) a[t] = l;
            else if (n !== x && R(n, t)) n[t] = l;
            else if (R(e.props, t)) return !1;
            return !("$" === t[0] && t.slice(1) in e || (o[t] = l, 0))
        },
        has({
            _: {
                data: e,
                setupState: t,
                accessCache: l,
                ctx: n,
                appContext: a,
                propsOptions: o
            }
        }, r) {
            let s;
            return void 0 !== l[r] || e !== x && R(e, r) || t !== x && R(t, r) || (s = o[0]) && R(s, r) || R(n, r) || R(Yl, r) || R(a.config.globalProperties, r)
        }
    },
    Ql = S({}, Zl, {
        get(e, t) {
            if (t !== Symbol.unscopables) return Zl.get(e, t, e)
        },
        has: (e, t) => "_" !== t[0] && !i(t)
    }),
    ea = el();
let ta = 0,
    na = null;
const la = () => na || zt,
    aa = e => {
        na = e
    };

function sa(e) {
    return 4 & e.vnode.shapeFlag
}
let oa = !1;

function ra(e, t, l) {
    M(t) ? e.render = t : N(t) && (e.setupState = pt(t)), ia(e)
}

function ia(e, t) {
    let l = e.type;
    e.render || (e.render = l.render || k, e.render._rc && (e.withProxy = new Proxy(e.ctx, Ql))), na = e, pe(), zl(e, l), fe(), na = null
}

function ca(e, t = na) {
    t && (t.effects || (t.effects = [])).push(e)
}

function ua(e) {
    return M(e) && e.displayName || e.name
}

function da(e) {
    var t;
    let l, n, a = (M(t = e) ? (l = t, n = k) : (l = t.get, n = t.set), new mt(l, n, M(t) || !t.set));
    return ca(a.effect), a
}

function pa(e, t, l) {
    let n = arguments.length;
    return 2 === n ? N(t) && !P(t) ? Al(t) ? Pl(e, null, [t]) : Pl(e, t) : Pl(e, null, t) : (n > 3 ? l = Array.prototype.slice.call(arguments, 2) : 3 === n && Al(l) && (l = [l]), Pl(e, t, l))
}

function fa(e, t) {
    let l;
    if (P(e) || V(e)) {
        l = Array(e.length);
        for (let n = 0, a = e.length; n < a; n++) l[n] = t(e[n], n)
    } else if ("number" == typeof e) {
        l = Array(e);
        for (let n = 0; n < e; n++) l[n] = t(n + 1, n)
    } else if (N(e))
        if (e[Symbol.iterator]) l = Array.from(e, t);
        else {
            let n = Object.keys(e);
            l = Array(n.length);
            for (let a = 0, o = n.length; a < o; a++) {
                let o = n[a];
                l[a] = t(e[o], o, a)
            }
        }
    else l = [];
    return l
}
const ma = "3.0.7",
    ha = "http://www.w3.org/2000/svg",
    ba = "undefined" != typeof document ? document : null;
let ga, va;
const xa = {
    insert(e, t, l) {
        t.insertBefore(e, l || null)
    },
    remove(e) {
        let t = e.parentNode;
        t && t.removeChild(e)
    },
    createElement: (e, t, l) => t ? ba.createElementNS(ha, e) : ba.createElement(e, l ? {
        is: l
    } : void 0),
    createText: e => ba.createTextNode(e),
    createComment: e => ba.createComment(e),
    setText(e, t) {
        e.nodeValue = t
    },
    setElementText(e, t) {
        e.textContent = t
    },
    parentNode: e => e.parentNode,
    nextSibling: e => e.nextSibling,
    querySelector: e => ba.querySelector(e),
    setScopeId(e, t) {
        e.setAttribute(t, "")
    },
    cloneNode: e => e.cloneNode(!0),
    insertStaticContent(e, t, l, n) {
        let a = n ? va || (va = ba.createElementNS(ha, "svg")) : ga || (ga = ba.createElement("div"));
        a.innerHTML = e;
        let o = a.firstChild,
            r = o,
            s = r;
        for (; r;) s = r, xa.insert(r, t, l), r = a.firstChild;
        return [o, s]
    }
},
    ya = /\s*!important$/;

function ka(e, t, l) {
    if (P(l)) l.forEach((l => ka(e, t, l)));
    else if (t.startsWith("--")) e.setProperty(t, l);
    else {
        let n = function (e, t) {
            let l = Ca[t];
            if (l) return l;
            let n = G(t);
            if ("filter" !== n && n in e) return Ca[t] = n;
            n = J(n);
            for (let l = 0; l < wa.length; l++) {
                let a = wa[l] + n;
                if (a in e) return Ca[t] = a
            }
            return t
        }(e, t);
        ya.test(l) ? e.setProperty(K(n), l.replace(ya, ""), "important") : e[n] = l
    }
}
const wa = ["Webkit", "Moz", "ms"],
    Ca = {},
    _a = "http://www.w3.org/1999/xlink";
let Aa = Date.now;
"undefined" != typeof document && Aa() > document.createEvent("Event").timeStamp && (Aa = () => performance.now());
let Sa = 0;
const Ta = Promise.resolve(),
    Ea = () => {
        Sa = 0
    };

function Ra(e, t, l, n) {
    e.addEventListener(t, l, n)
}

function Pa(e, t, l, n, a = null) {
    let o = e._vei || (e._vei = {}),
        r = o[t];
    if (n && r) r.value = n;
    else {
        let [l, s] = function (e) {
            let t;
            if (La.test(e)) {
                let l;
                for (t = {}; l = e.match(La);) e = e.slice(0, e.length - l[0].length), t[l[0].toLowerCase()] = !0
            }
            return [K(e.slice(2)), t]
        }(t);
        n ? Ra(e, l, o[t] = function (e, t) {
            let l = e => {
                Aa() >= l.attached - 1 && bt(function (e, t) {
                    if (P(t)) {
                        let l = e.stopImmediatePropagation;
                        return e.stopImmediatePropagation = () => {
                            l.call(e), e._stopped = !0
                        }, t.map((e => t => !t._stopped && e(t)))
                    }
                    return t
                }(e, l.value), t, 5, [e])
            };
            return l.value = e, l.attached = Sa || (Ta.then(Ea), Sa = Aa()), l
        }(n, a), s) : r && (function (e, t, l, n) {
            e.removeEventListener(t, l, n)
        }(e, l, r, s), o[t] = void 0)
    }
}
const La = /(?:Once|Passive|Capture)$/,
    Ia = /^on[a-z]/,
    Oa = (e, {
        slots: t
    }) => pa(On, Da(e), t);
Oa.displayName = "Transition";
const Ma = {
    name: String,
    type: String,
    css: {
        type: Boolean,
        default: !0
    },
    duration: [String, Number, Object],
    enterFromClass: String,
    enterActiveClass: String,
    enterToClass: String,
    appearFromClass: String,
    appearActiveClass: String,
    appearToClass: String,
    leaveFromClass: String,
    leaveActiveClass: String,
    leaveToClass: String
},
    Va = Oa.props = S({}, On.props, Ma);

function Da(e) {
    let {
        name: t = "v",
        type: l,
        css: n = !0,
        duration: a,
        enterFromClass: o = `${t}-enter-from`,
        enterActiveClass: r = `${t}-enter-active`,
        enterToClass: s = `${t}-enter-to`,
        appearFromClass: i = o,
        appearActiveClass: c = r,
        appearToClass: u = s,
        leaveFromClass: d = `${t}-leave-from`,
        leaveActiveClass: p = `${t}-leave-active`,
        leaveToClass: f = `${t}-leave-to`
    } = e, m = {};
    for (let t in e) t in Ma || (m[t] = e[t]);
    if (!n) return m;
    let h = function (e) {
        if (null == e) return null;
        if (N(e)) return [Na(e.enter), Na(e.leave)];
        {
            let t = Na(e);
            return [t, t]
        }
    }(a),
        g = h && h[0],
        b = h && h[1],
        {
            onBeforeEnter: v,
            onEnter: x,
            onEnterCancelled: y,
            onLeave: w,
            onLeaveCancelled: k,
            onBeforeAppear: P = v,
            onAppear: _ = x,
            onAppearCancelled: C = y
        } = m,
        A = (e, t, l) => {
            $a(e, t ? u : s), $a(e, t ? c : r), l && l()
        },
        T = (e, t) => {
            $a(e, f), $a(e, p), t && t()
        },
        R = e => (t, n) => {
            let a = e ? _ : x,
                r = () => A(t, e, n);
            a && a(t, r), ja((() => {
                $a(t, e ? i : o), Ua(t, e ? u : s), a && a.length > 1 || za(t, l, g, r)
            }))
        };
    return S(m, {
        onBeforeEnter(e) {
            v && v(e), Ua(e, o), Ua(e, r)
        },
        onBeforeAppear(e) {
            P && P(e), Ua(e, i), Ua(e, c)
        },
        onEnter: R(!1),
        onAppear: R(!0),
        onLeave(e, t) {
            let n = () => T(e, t);
            Ua(e, d), Ga(), Ua(e, p), ja((() => {
                $a(e, d), Ua(e, f), w && w.length > 1 || za(e, l, b, n)
            })), w && w(e, n)
        },
        onEnterCancelled(e) {
            A(e, !1), y && y(e)
        },
        onAppearCancelled(e) {
            A(e, !0), C && C(e)
        },
        onLeaveCancelled(e) {
            T(e), k && k(e)
        }
    })
}

function Na(e) {
    return ee(e)
}

function Ua(e, t) {
    t.split(/\s+/).forEach((t => t && e.classList.add(t))), (e._vtc || (e._vtc = new Set)).add(t)
}

function $a(e, t) {
    t.split(/\s+/).forEach((t => t && e.classList.remove(t)));
    let {
        _vtc: l
    } = e;
    l && (l.delete(t), l.size || (e._vtc = void 0))
}

function ja(e) {
    requestAnimationFrame((() => {
        requestAnimationFrame(e)
    }))
}
let Fa = 0;

function za(e, t, l, n) {
    let a = e._endId = ++Fa,
        o = () => {
            a === e._endId && n()
        };
    if (l) return setTimeout(o, l);
    let {
        type: r,
        timeout: s,
        propCount: i
    } = Ba(e, t);
    if (!r) return n();
    let c = r + "end",
        u = 0,
        d = () => {
            e.removeEventListener(c, p), o()
        },
        p = t => {
            t.target === e && ++u >= i && d()
        };
    setTimeout((() => {
        u < i && d()
    }), s + 1), e.addEventListener(c, p)
}

function Ba(e, t) {
    let l = window.getComputedStyle(e),
        n = e => (l[e] || "").split(", "),
        a = n("transitionDelay"),
        o = n("transitionDuration"),
        r = Ha(a, o),
        s = n("animationDelay"),
        i = n("animationDuration"),
        c = Ha(s, i),
        u = null,
        d = 0,
        p = 0;
    return "transition" === t ? r > 0 && (u = "transition", d = r, p = o.length) : "animation" === t ? c > 0 && (u = "animation", d = c, p = i.length) : p = (u = (d = Math.max(r, c)) > 0 ? r > c ? "transition" : "animation" : null) ? "transition" === u ? o.length : i.length : 0, {
        type: u,
        timeout: d,
        propCount: p,
        hasTransform: "transition" === u && /\b(transform|all)(,|$)/.test(l.transitionProperty)
    }
}

function Ha(e, t) {
    for (; e.length < t.length;) e = e.concat(e);
    return Math.max(...t.map(((t, l) => qa(t) + qa(e[l]))))
}

function qa(e) {
    return 1e3 * Number(e.slice(0, -1).replace(",", "."))
}

function Ga() {
    return document.body.offsetHeight
}
const Wa = new WeakMap,
    Ka = new WeakMap,
    Ja = {
        name: "TransitionGroup",
        props: S({}, Va, {
            tag: String,
            moveClass: String
        }),
        setup(e, {
            slots: t
        }) {
            let l, n, a = la(),
                o = Ln();
            return yn((() => {
                if (!l.length) return;
                let t = e.moveClass || `${e.name || "v"}-move`;
                if (! function (e, t, l) {
                    let n = e.cloneNode();
                    e._vtc && e._vtc.forEach((e => {
                        e.split(/\s+/).forEach((e => e && n.classList.remove(e)))
                    })), l.split(/\s+/).forEach((e => e && n.classList.add(e))), n.style.display = "none";
                    let a = 1 === t.nodeType ? t : t.parentNode;
                    a.appendChild(n);
                    let {
                        hasTransform: o
                    } = Ba(n);
                    return a.removeChild(n), o
                }(l[0].el, a.vnode.el, t)) return;
                l.forEach(Xa), l.forEach(Ya);
                let n = l.filter(Za);
                Ga(), n.forEach((e => {
                    let l = e.el,
                        n = l.style;
                    Ua(l, t), n.transform = n.webkitTransform = n.transitionDuration = "";
                    let a = l._moveCb = e => {
                        e && e.target !== l || e && !/transform$/.test(e.propertyName) || (l.removeEventListener("transitionend", a), l._moveCb = null, $a(l, t))
                    };
                    l.addEventListener("transitionend", a)
                }))
            })), () => {
                let r = at(e),
                    s = Da(r),
                    i = r.tag || bl;
                l = n, n = t.default ? $n(t.default()) : [];
                for (let e = 0; e < n.length; e++) {
                    let t = n[e];
                    null != t.key && Un(t, Vn(t, s, o, a))
                }
                if (l)
                    for (let e = 0; e < l.length; e++) {
                        let t = l[e];
                        Un(t, Vn(t, s, o, a)), Wa.set(t, t.el.getBoundingClientRect())
                    }
                return Pl(i, null, n)
            }
        }
    };

function Xa(e) {
    let t = e.el;
    t._moveCb && t._moveCb(), t._enterCb && t._enterCb()
}

function Ya(e) {
    Ka.set(e, e.el.getBoundingClientRect())
}

function Za(e) {
    let t = Wa.get(e),
        l = Ka.get(e),
        n = t.left - l.left,
        a = t.top - l.top;
    if (n || a) {
        let t = e.el.style;
        return t.transform = t.webkitTransform = `translate(${n}px,${a}px)`, t.transitionDuration = "0s", e
    }
}
const Qa = e => {
    let t = e.props["onUpdate:modelValue"];
    return P(t) ? e => Z(t, e) : t
};

function es(e) {
    e.target.composing = !0
}

function ts(e) {
    let t = e.target;
    t.composing && (t.composing = !1, function (e, t) {
        let l = document.createEvent("HTMLEvents");
        l.initEvent("input", !0, !0), e.dispatchEvent(l)
    }(t))
}
const ns = {
    created(e, {
        modifiers: {
            lazy: t,
            trim: l,
            number: n
        }
    }, a) {
        e._assign = Qa(a);
        let o = n || "number" === e.type;
        Ra(e, t ? "change" : "input", (t => {
            if (t.target.composing) return;
            let n = e.value;
            l ? n = n.trim() : o && (n = ee(n)), e._assign(n)
        })), l && Ra(e, "change", (() => {
            e.value = e.value.trim()
        })), t || (Ra(e, "compositionstart", es), Ra(e, "compositionend", ts), Ra(e, "change", ts))
    },
    mounted(e, {
        value: t
    }) {
        e.value = null == t ? "" : t
    },
    beforeUpdate(e, {
        value: t,
        modifiers: {
            trim: l,
            number: n
        }
    }, a) {
        if (e._assign = Qa(a), e.composing || document.activeElement === e && (l && e.value.trim() === t || (n || "number" === e.type) && ee(e.value) === t)) return;
        let o = null == t ? "" : t;
        e.value !== o && (e.value = o)
    }
},
    ls = {
        created(e, t, l) {
            e._assign = Qa(l), Ra(e, "change", (() => {
                var t;
                let l = e._modelValue,
                    n = "_value" in (t = e) ? t._value : t.value,
                    a = e.checked,
                    o = e._assign;
                if (P(l)) {
                    let e = b(l, n),
                        t = -1 !== e;
                    if (a && !t) o(l.concat(n));
                    else if (!a && t) {
                        let t = [...l];
                        t.splice(e, 1), o(t)
                    }
                } else if (I(l)) {
                    let e = new Set(l);
                    a ? e.add(n) : e.delete(n), o(e)
                } else o(ss(e, a))
            }))
        },
        mounted: as,
        beforeUpdate(e, t, l) {
            e._assign = Qa(l), as(e, t, l)
        }
    };

function as(e, {
    value: t,
    oldValue: l
}, n) {
    e._modelValue = t, P(t) ? e.checked = b(t, n.props.value) > -1 : I(t) ? e.checked = t.has(n.props.value) : t !== l && (e.checked = h(t, ss(e, !0)))
}

function ss(e, t) {
    let l = t ? "_trueValue" : "_falseValue";
    return l in e ? e[l] : t
}
const os = ["ctrl", "shift", "alt", "meta"],
    rs = {
        stop: e => e.stopPropagation(),
        prevent: e => e.preventDefault(),
        self: e => e.target !== e.currentTarget,
        ctrl: e => !e.ctrlKey,
        shift: e => !e.shiftKey,
        alt: e => !e.altKey,
        meta: e => !e.metaKey,
        left: e => "button" in e && 0 !== e.button,
        middle: e => "button" in e && 1 !== e.button,
        right: e => "button" in e && 2 !== e.button,
        exact: (e, t) => os.some((l => e[`${l}Key`] && !t.includes(l)))
    },
    is = (e, t) => (l, ...n) => {
        for (let e = 0; e < t.length; e++) {
            let n = rs[t[e]];
            if (n && n(l, t)) return
        }
        return e(l, ...n)
    },
    cs = {
        esc: "escape",
        space: " ",
        up: "arrow-up",
        left: "arrow-left",
        right: "arrow-right",
        down: "arrow-down",
        delete: "backspace"
    },
    us = (e, t) => l => {
        if (!("key" in l)) return;
        let n = K(l.key);
        return t.some((e => e === n || cs[e] === n)) ? e(l) : void 0
    },
    ds = {
        beforeMount(e, {
            value: t
        }, {
            transition: l
        }) {
            e._vod = "none" === e.style.display ? "" : e.style.display, l && t ? l.beforeEnter(e) : ps(e, t)
        },
        mounted(e, {
            value: t
        }, {
            transition: l
        }) {
            l && t && l.enter(e)
        },
        updated(e, {
            value: t,
            oldValue: l
        }, {
            transition: n
        }) {
            !t != !l && (n ? t ? (n.beforeEnter(e), ps(e, !0), n.enter(e)) : n.leave(e, (() => {
                ps(e, !1)
            })) : ps(e, t))
        },
        beforeUnmount(e, {
            value: t
        }) {
            ps(e, t)
        }
    };

function ps(e, t) {
    e.style.display = t ? e._vod : "none"
}
const fs = S({
    patchProp(e, t, l, n, a = !1, o, r, s, i) {
        switch (t) {
            case "class":
                ! function (e, t, l) {
                    if (null == t && (t = ""), l) e.setAttribute("class", t);
                    else {
                        let l = e._vtc;
                        l && (t = (t ? [t, ...l] : [...l]).join(" ")), e.className = t
                    }
                }(e, n, a);
                break;
            case "style":
                ! function (e, t, l) {
                    let n = e.style;
                    if (l)
                        if (V(l)) {
                            if (t !== l) {
                                let t = n.display;
                                n.cssText = l, "_vod" in e && (n.display = t)
                            }
                        } else {
                            for (let e in l) ka(n, e, l[e]);
                            if (t && !V(t))
                                for (let e in t) null == l[e] && ka(n, e, "")
                        }
                    else e.removeAttribute("style")
                }(e, l, n);
                break;
            default:
                var u, d, p;
                _(t) ? A(t) || Pa(e, t, 0, n, r) : (u = e, d = t, p = n, (a ? "innerHTML" === d || d in u && Ia.test(d) && M(p) : !("spellcheck" === d || "draggable" === d || "form" === d || "list" === d && "INPUT" === u.tagName || "type" === d && "TEXTAREA" === u.tagName || Ia.test(d) && V(p)) && d in u) ? function (e, t, l, n, a, o, r) {
                    if ("innerHTML" === t || "textContent" === t) return n && r(n, a, o), void (e[t] = null == l ? "" : l);
                    if ("value" !== t || "PROGRESS" === e.tagName) {
                        if ("" === l || null == l) {
                            let n = typeof e[t];
                            if ("" === l && "boolean" === n) return void (e[t] = !0);
                            if (null == l && "string" === n) return e[t] = "", void e.removeAttribute(t);
                            if ("number" === n) return e[t] = 0, void e.removeAttribute(t)
                        }
                        try {
                            e[t] = l
                        } catch (e) { }
                    } else {
                        e._value = l;
                        let t = null == l ? "" : l;
                        e.value !== t && (e.value = t)
                    }
                }(e, t, n, o, r, s, i) : ("true-value" === t ? e._trueValue = n : "false-value" === t && (e._falseValue = n), function (e, t, l, n) {
                    if (n && t.startsWith("xlink:")) null == l ? e.removeAttributeNS(_a, t.slice(6, t.length)) : e.setAttributeNS(_a, t, l);
                    else {
                        let n = c(t);
                        null == l || n && !1 === l ? e.removeAttribute(t) : e.setAttribute(t, n ? "" : l)
                    }
                }(e, t, n, a)))
        }
    },
    forcePatchProp: (e, t) => "value" === t
}, xa);
let ms;
var hs, bs = "object" == typeof Reflect ? Reflect : null,
    gs = bs && "function" == typeof bs.apply ? bs.apply : function (e, t, l) {
        return Function.prototype.apply.call(e, t, l)
    };
hs = bs && "function" == typeof bs.ownKeys ? bs.ownKeys : Object.getOwnPropertySymbols ? function (e) {
    return Object.getOwnPropertyNames(e).concat(Object.getOwnPropertySymbols(e))
} : function (e) {
    return Object.getOwnPropertyNames(e)
};
var vs = Number.isNaN || function (e) {
    return e != e
};

function xs() {
    xs.init.call(this)
}
var ys = xs,
    ks = function (e, t) {
        return new Promise((function (l, n) {
            var a, o, r;

            function s(l) {
                e.removeListener(t, i), n(l)
            }

            function i() {
                "function" == typeof e.removeListener && e.removeListener("error", s), l([].slice.call(arguments))
            }
            Ls(e, t, i, {
                once: !0
            }), "error" !== t && (o = s, r = {
                once: !0
            }, "function" == typeof (a = e).on && Ls(a, "error", o, r))
        }))
    };
xs.EventEmitter = xs, xs.prototype._events = void 0, xs.prototype._eventsCount = 0, xs.prototype._maxListeners = void 0;
var ws = 10;

function Cs(e) {
    if ("function" != typeof e) throw TypeError('The "listener" argument must be of type Function. Received type ' + typeof e)
}

function _s(e) {
    return void 0 === e._maxListeners ? xs.defaultMaxListeners : e._maxListeners
}

function As(e, t, l, n) {
    var a, o, r, s;
    if (Cs(l), void 0 === (o = e._events) ? (o = e._events = Object.create(null), e._eventsCount = 0) : (void 0 !== o.newListener && (e.emit("newListener", t, l.listener ? l.listener : l), o = e._events), r = o[t]), void 0 === r) r = o[t] = l, ++e._eventsCount;
    else if ("function" == typeof r ? r = o[t] = n ? [l, r] : [r, l] : n ? r.unshift(l) : r.push(l), (a = _s(e)) > 0 && r.length > a && !r.warned) {
        r.warned = !0;
        var i = Error("Possible EventEmitter memory leak detected. " + r.length + " " + String(t) + " listeners added. Use emitter.setMaxListeners() to increase limit");
        i.name = "MaxListenersExceededWarning", i.emitter = e, i.type = t, i.count = r.length, s = i, console && console.warn && console.warn(s)
    }
    return e
}

function Ss() {
    if (!this.fired) return this.target.removeListener(this.type, this.wrapFn), this.fired = !0, 0 === arguments.length ? this.listener.call(this.target) : this.listener.apply(this.target, arguments)
}

function Ts(e, t, l) {
    var n = {
        fired: !1,
        wrapFn: void 0,
        target: e,
        type: t,
        listener: l
    },
        a = Ss.bind(n);
    return a.listener = l, n.wrapFn = a, a
}

function Es(e, t, l) {
    var n = e._events;
    if (void 0 === n) return [];
    var a = n[t];
    return void 0 === a ? [] : "function" == typeof a ? l ? [a.listener || a] : [a] : l ? function (e) {
        for (var t = Array(e.length), l = 0; l < t.length; ++l) t[l] = e[l].listener || e[l];
        return t
    }(a) : Ps(a, a.length)
}

function Rs(e) {
    var t = this._events;
    if (void 0 !== t) {
        var l = t[e];
        if ("function" == typeof l) return 1;
        if (void 0 !== l) return l.length
    }
    return 0
}

function Ps(e, t) {
    for (var l = Array(t), n = 0; n < t; ++n) l[n] = e[n];
    return l
}

function Ls(e, t, l, n) {
    if ("function" == typeof e.on) n.once ? e.once(t, l) : e.on(t, l);
    else {
        if ("function" != typeof e.addEventListener) throw TypeError('The "emitter" argument must be of type EventEmitter. Received type ' + typeof e);
        e.addEventListener(t, (function a(o) {
            n.once && e.removeEventListener(t, a), l(o)
        }))
    }
}

function Is(e) {
    return new Date(1e3 * e).toLocaleTimeString("pt-BR").substring(0, 5)
}
Object.defineProperty(xs, "defaultMaxListeners", {
    enumerable: !0,
    get: function () {
        return ws
    },
    set: function (e) {
        if ("number" != typeof e || e < 0 || vs(e)) throw RangeError('The value of "defaultMaxListeners" is out of range. It must be a non-negative number. Received ' + e + ".");
        ws = e
    }
}), xs.init = function () {
    void 0 !== this._events && this._events !== Object.getPrototypeOf(this)._events || (this._events = Object.create(null), this._eventsCount = 0), this._maxListeners = this._maxListeners || void 0
}, xs.prototype.setMaxListeners = function (e) {
    if ("number" != typeof e || e < 0 || vs(e)) throw RangeError('The value of "n" is out of range. It must be a non-negative number. Received ' + e + ".");
    return this._maxListeners = e, this
}, xs.prototype.getMaxListeners = function () {
    return _s(this)
}, xs.prototype.emit = function (e) {
    for (var t = [], l = 1; l < arguments.length; l++) t.push(arguments[l]);
    var n = "error" === e,
        a = this._events;
    if (void 0 !== a) n = n && void 0 === a.error;
    else if (!n) return !1;
    if (n) {
        if (t.length > 0 && (o = t[0]), o instanceof Error) throw o;
        var o, r = Error("Unhandled error." + (o ? " (" + o.message + ")" : ""));
        throw r.context = o, r
    }
    var s = a[e];
    if (void 0 === s) return !1;
    if ("function" == typeof s) gs(s, this, t);
    else {
        var i = s.length,
            c = Ps(s, i);
        for (l = 0; l < i; ++l) gs(c[l], this, t)
    }
    return !0
}, xs.prototype.addListener = function (e, t) {
    return As(this, e, t, !1)
}, xs.prototype.on = xs.prototype.addListener, xs.prototype.prependListener = function (e, t) {
    return As(this, e, t, !0)
}, xs.prototype.once = function (e, t) {
    return Cs(t), this.on(e, Ts(this, e, t)), this
}, xs.prototype.prependOnceListener = function (e, t) {
    return Cs(t), this.prependListener(e, Ts(this, e, t)), this
}, xs.prototype.removeListener = function (e, t) {
    var l, n, a, o, r;
    if (Cs(t), void 0 === (n = this._events) || void 0 === (l = n[e])) return this;
    if (l === t || l.listener === t) 0 == --this._eventsCount ? this._events = Object.create(null) : (delete n[e], n.removeListener && this.emit("removeListener", e, l.listener || t));
    else if ("function" != typeof l) {
        for (a = -1, o = l.length - 1; o >= 0; o--)
            if (l[o] === t || l[o].listener === t) {
                r = l[o].listener, a = o;
                break
            } if (a < 0) return this;
        0 === a ? l.shift() : function (e, t) {
            for (; t + 1 < e.length; t++) e[t] = e[t + 1];
            e.pop()
        }(l, a), 1 === l.length && (n[e] = l[0]), void 0 !== n.removeListener && this.emit("removeListener", e, r || t)
    }
    return this
}, xs.prototype.off = xs.prototype.removeListener, xs.prototype.removeAllListeners = function (e) {
    var t, l, n;
    if (void 0 === (l = this._events)) return this;
    if (void 0 === l.removeListener) return 0 === arguments.length ? (this._events = Object.create(null), this._eventsCount = 0) : void 0 !== l[e] && (0 == --this._eventsCount ? this._events = Object.create(null) : delete l[e]), this;
    if (0 === arguments.length) {
        var a, o = Object.keys(l);
        for (n = 0; n < o.length; ++n) "removeListener" !== (a = o[n]) && this.removeAllListeners(a);
        return this.removeAllListeners("removeListener"), this._events = Object.create(null), this._eventsCount = 0, this
    }
    if ("function" == typeof (t = l[e])) this.removeListener(e, t);
    else if (void 0 !== t)
        for (n = t.length - 1; n >= 0; n--) this.removeListener(e, t[n]);
    return this
}, xs.prototype.listeners = function (e) {
    return Es(this, e, !0)
}, xs.prototype.rawListeners = function (e) {
    return Es(this, e, !1)
}, xs.listenerCount = function (e, t) {
    return "function" == typeof e.listenerCount ? e.listenerCount(t) : Rs.call(e, t)
}, xs.prototype.listenerCount = Rs, xs.prototype.eventNames = function () {
    return this._eventsCount > 0 ? hs(this._events) : []
}, ys.once = ks;
const Os = ["dom", "seg", "ter", "qua", "qui", "sex", "sab"],
    Ms = ["jan", "fev", "mar", "abr", "mai", "jun", "jul", "ago", "set", "out", "nov", "dez"],
    Vs = ["Janeiro", "Fevereiro", "Março", "Abril", "Maio", "Junho", "Julho", "Agosto", "Setembro", "Outubro", "Novembro", "Dezembro"],
    Ds = Vs.map((e => e.toUpperCase()));

function Ns(e, t) {
    return e.length > t ? e.substring(0, t) + "..." : e
}

function Us(e) {
    let t = e instanceof Date ? e : new Date(1e3 * e);
    return [
        [t.getDate(), Vs[t.getMonth()].substr(0, 3), t.getFullYear() - 2e3].join(" "), Is(e)
    ]
}

function $s(e, t) {
    let l = e.length;
    for (; l--;) t(e[l], l) && e.splice(l, 1)
}

function js(e) {
    let t = So.settings.currency || "R$",
        l = Math.abs(Math.ceil(e)).toLocaleString("pt-BR");
    return e < 0 ? "-" + t + " " + l : t + " " + l
}

function Fs(e) {
    return e && e[0].toUpperCase() + e.substr(1)
}

function zs(e) {
    return String(e).replace(/</g, "&lt;").replace(/>/g, "&gt;")
}

function Bs(e, t = "Você") {
    var l;
    return e === So.identity.phone ? t : (null == (l = So.contacts.value.find((t => t.phone === e))) ? void 0 : l.name) || e
}
const Hs = new Proxy({}, {
    get: (e, t) => Zs(t)
});

function qs(e, t, l) {
    return l.indexOf(e) == t
}
var Gs = Object.freeze(Object.defineProperty({
    __proto__: null,
    isAudio: function (e) {
        return e.match(/\.(ogg|webm)$/)
    },
    unixToHHMM: Is,
    unixToDate: function (e) {
        return new Date(1e3 * e).toLocaleString("pt-BR").substring(0, 10)
    },
    unixToLocale: function (e) {
        let t = new Date(1e3 * e);
        return `${Os[t.getDay()]}, ${t.getDate()} de ${Ms[t.getMonth()]}, ${Is(e)}`
    },
    unixToRelative: function (e) {
        let {
            abs: t,
            floor: l
        } = Math, n = t(e - l(Date.now() / 1e3));
        return n < 60 ? "Agora" : n < 3600 ? l(n / 60) + "min" : n < 86400 ? l(n / 3600) + "h" : l(n / 86400) + "d"
    },
    unixToDatetime: function (e) {
        return new Date(1e3 * e).toLocaleString("pt-BR")
    },
    duration: function (e) {
        let t = e >= 3600;
        return new Date(1e3 * e).toISOString().substr(t ? 11 : 14, t ? 8 : 5)
    },
    fancyMonths: Vs,
    upperMonths: Ds,
    unixToDayOfMonth: function (e) {
        let t = e instanceof Date ? e : new Date(1e3 * e);
        return t.getDate() + " DE " + Ds[t.getMonth()]
    },
    ellipsis: Ns,
    unixToTwitter: Us,
    moneyStringToInt: function (e) {
        return parseInt(e.replace(/\D/g, "") || 0).toLocaleString("pt-BR")
    },
    vdist: function ([e, t, l], [n, a, o], r = !1) {
        return Math.round(Math.sqrt((e - n) ** 2 + (t - a) ** 2 + (r ? l - o : 0) ** 2))
    },
    vdist2: function (...e) {
        let t = this.vdist(...e);
        return t > 1e3 ? Math.round(t / 100) / 10 + "km" : t + "m"
    },
    removeIf: $s,
    intToMoney: js,
    ucfirst: Fs,
    safeHTML: zs,
    getNameByPhone: Bs,
    nameByApp: Hs,
    arrayUnique: qs
}, Symbol.toStringTag, {
    value: "Module"
}));

function Ws(e) {
    var t;
    let l = null == (t = So.settings.apps) ? void 0 : t[e];
    return "string" == typeof l ? [null, l] : [null == l ? void 0 : l.name, null == l ? void 0 : l.icon]
}

function Ks(e, t, l, n, a) {
    var o;
    let [r, s] = Ws(e);
    return null != a || (a = !(null == (o = So.settings.disabledApps) ? void 0 : o.includes(e))), {
        entry: e,
        name: null != r ? r : l,
        icon: null != s ? s : n,
        to: t,
        enabled: a
    }
}
const Js = {
    picpay: "PicPay",
    hype: "Hype Bank",
    itau: "Itaú",
    nubank: "Nubank",
    fleeca: "Fleeca",
    nxbank: "Nxbank",
    bb: "Banco do Brasil"
};
let Xs = [];

function Ys() {
    var e;
    // Mapa de ícones customizados para Android (pasta samba/apps/custom/)
    const androidIcons = {
        "settings.png": "custom/settings.webp",
        "phone.png": "custom/contacts.webp",
        "sms.webp": "custom/sms.webp",
        "photos.webp": "custom/gallery.webp",
        "calculator.webp": "custom/calculator.webp",
        "notes.webp": "custom/notes.webp"
    };
    const isAndroid = So.settings.isAndroid;
    // Reinicia o cache sempre que chamado para garantir que mudanças em isAndroid sejam aplicadas
    Xs = [];
    let t = e => So.asset("/apps/" + (isAndroid && androidIcons[e] ? androidIcons[e] : e));
    return Xs = [Ks("settings", "/settings", "", t("settings.png"), !0), Ks("contacts", "/contacts", "", t("phone.png"), !0), Ks("sms", "/sms", "", t("sms.webp"), !0), Ks("gallery", "/gallery", "", t("photos.webp"), !0), Ks("whatsapp", "/whatsapp", "WhatsApp", t("whatsapp.jpg")), Ks("tor", "/tor", "TOR", t("tor.jpg")), Ks("instagram", "/instagram/login", "Instagram", t("instagram.jpg")), Ks("twitter", "/twitter", "Twitter", t("twitter.png")), Ks("bank", "/bank", Js[So.settings.bankType.replace(/\d/g, "")], t(So.settings.bankType.toLowerCase() + ".webp")), Ks("paypal", "/paypal", "PayPal", t("paypal.webp")), Ks("olx", "/olx", "OLX", t("olx.png")), Ks("tinder", "/tinder", "Tinder", t("tinder.webp")), Ks("yellowpages", "/yellowpages", "Yellow Pages", t("yellowpages.webp")), ...Object.keys(null != (e = So.settings.customApps) ? e : []).map((e => Ks(e, "/custom/" + e, Fs(e), t("settings.png")))), Ks("weazel", "/weazel", "Weazel News", t("weazel.webp")), Ks("casino", "/casino", "Blaze", t("blaze.webp")), Ks("calculator", "/calculator", "Calculadora", t("calculator.webp")), Ks("notes", "/notes", "Anotações", t("notes.webp")), Ks("minesweeper", "/minesweeper", "Campo Minado", t("minesweeper.webp")), Ks("truco", "/truco", "Truco", t("truco.webp"))].filter((e => null == e ? void 0 : e.enabled)).map(((e, t) => s(s({}, e), {
        bottom: t < 4
    })))
}

function Zs(e) {
    var t;
    return null == (t = Ys().find((t => t.entry == e))) ? void 0 : t.name
}
const Qs = {
    get gps() {
        var e;
        return null != (e = Ws("gps")[1]) ? e : So.asset("/apps/waze.webp")
    },
    get phone() {
        var e;
        return null != (e = Ws("phone")[1]) ? e : So.asset("/apps/phone.png")
    },
    get facetime() {
        var e;
        return null != (e = Ws("facetime")[1]) ? e : So.asset("/apps/facetime.webp")
    }
};

function eo(e) {
    return new Promise((t => setTimeout(t, e)))
}
var to = {
    async upload(e, t) {
        var l;
        let n = So.settings.uploadServer,
            a = new FormData;
        a.append(n.includes("discord") ? "file" : "webm" == t ? "audio" : "image", e, Date.now() + "." + t);
        let o = await fetch(n, {
            method: "POST",
            body: a
        });
        if (404 == o.status) throw So.alert("uploadServer inválido na config.json, o webhook é inválido ou não existe mais"), Error("Invalid uploadServer");
        {
            let e = await o.json();
            return null != (l = e.url) ? l : e.attachments[0].url
        }
    },
    async uploadVideo(e$) {
        let e0 = new FormData;
        e0.append("video", e$, "camera.webm"), e0.append("signature", await So.backend.upload_ticket());
        let e8 = await fetch("http://localhost:8080/smartphone/storage/upload.v2.php", {
            method: "POST",
            body: e0
        }),
            e2 = await e8.json();
        return e2.error && console.error(`Story upload resulted in ${e2.error}`), e2.url
    } //uplo
};

function no(e, t, l) {
    let n = e.createShader(t);
    e.shaderSource(n, l), e.compileShader(n);
    let a = e.getShaderInfoLog(n);
    return a && console.error(a), n
}
class lo {
    constructor(e) {
        this.canvas = e, this.gl = e.getContext("webgl", {
            antialias: !1,
            depth: !1,
            stencil: !1,
            alpha: !1,
            desynchronized: !0,
            failIfMajorPerformanceCaveat: !1
        }), this.animationFrame = void 0, this.createStuff(), this.render(), this.running = !0
    }
    createStuff() {
        if (!this.gl) {
            for (let e = 0; e < 10; e += 1) console.log("Você está bugado! Não possível criar o contexto WebGL, este problema não tem correção");
            return
        }
        let e = this.gl,
            t = function (e) {
                let t = e.createTexture(),
                    l = new Uint8Array([0, 0, 255, 255]);
                return e.bindTexture(e.TEXTURE_2D, t), e.texImage2D(e.TEXTURE_2D, 0, e.RGBA, 1, 1, 0, e.RGBA, e.UNSIGNED_BYTE, l), e.texParameterf(e.TEXTURE_2D, e.TEXTURE_MAG_FILTER, e.NEAREST), e.texParameterf(e.TEXTURE_2D, e.TEXTURE_MIN_FILTER, e.NEAREST), e.texParameterf(e.TEXTURE_2D, e.TEXTURE_WRAP_S, e.CLAMP_TO_EDGE), e.texParameterf(e.TEXTURE_2D, e.TEXTURE_WRAP_T, e.CLAMP_TO_EDGE), e.texParameterf(e.TEXTURE_2D, e.TEXTURE_WRAP_T, e.MIRRORED_REPEAT), e.texParameterf(e.TEXTURE_2D, e.TEXTURE_WRAP_T, e.REPEAT), e.texParameterf(e.TEXTURE_2D, e.TEXTURE_WRAP_T, e.CLAMP_TO_EDGE), t
            }(e),
            {
                program: l,
                vloc: n,
                tloc: a
            } = function (e) {
                let t = no(e, e.VERTEX_SHADER, "\n  attribute vec2 a_position;\n  attribute vec2 a_texcoord;\n  uniform mat3 u_matrix;\n  varying vec2 textureCoordinate;\n  void main() {\n    gl_Position = vec4(a_position, 0.0, 1.0);\n    textureCoordinate = a_texcoord;\n  }\n"),
                    l = no(e, e.FRAGMENT_SHADER, "\nvarying highp vec2 textureCoordinate;\nuniform sampler2D external_texture;\nvoid main()\n{\n  gl_FragColor = texture2D(external_texture, textureCoordinate);\n}\n"),
                    n = e.createProgram();
                return e.attachShader(n, t), e.attachShader(n, l), e.linkProgram(n), e.useProgram(n), {
                    program: n,
                    vloc: e.getAttribLocation(n, "a_position"),
                    tloc: e.getAttribLocation(n, "a_texcoord")
                }
            }(e),
            {
                vertexBuff: o,
                texBuff: r
            } = function (e) {
                let t = e.createBuffer();
                e.bindBuffer(e.ARRAY_BUFFER, t), e.bufferData(e.ARRAY_BUFFER, new Float32Array([-1, -1, 1, -1, -1, 1, 1, 1]), e.STATIC_DRAW);
                let l = e.createBuffer();
                return e.bindBuffer(e.ARRAY_BUFFER, l), e.bufferData(e.ARRAY_BUFFER, new Float32Array([0, 0, 1, 0, 0, 1, 1, 1]), e.STATIC_DRAW), {
                    vertexBuff: t,
                    texBuff: l
                }
            }(e);
        e.useProgram(l), e.bindTexture(e.TEXTURE_2D, t), e.uniform1i(e.getUniformLocation(l, "external_texture"), 0), e.bindBuffer(e.ARRAY_BUFFER, o), e.vertexAttribPointer(n, 2, e.FLOAT, !1, 0, 0), e.enableVertexAttribArray(n), e.bindBuffer(e.ARRAY_BUFFER, r), e.vertexAttribPointer(a, 2, e.FLOAT, !1, 0, 0), e.enableVertexAttribArray(a), e.viewport(0, 0, e.canvas.width, e.canvas.height)
    }
    resize(e, t) {
        this.gl && (this.gl.viewport(0, 0, e, t), this.gl.canvas.width = e, this.gl.canvas.height = t)
    }
    render() {
        var e;
        !this.kill && this.gl && (this.running && (this.gl.drawArrays(this.gl.TRIANGLE_STRIP, 0, 4), this.gl.finish(), null == (e = this.onrender) || e.call(this, this.canvas)), this.animationFrame = requestAnimationFrame(this.render.bind(this)))
    }
}
const ao = document.createElement("canvas");
ao.width = 1920, ao.height = 1080;
const so = new lo(ao);
so.running = !1;
let oo = 0;
var ro = {
    get running() {
        return so.running
    },
    canvas: ao,
    get delta() {
        return oo
    },
    set delta(e) {
        oo = e, so.running = oo > 0
    },
    start() {
        this.delta += 1
    },
    stop() {
        this.delta -= 1
    },
    createBlob: (e = .8, t = "image/jpeg") => new Promise((l => so.canvas.toBlob(l, t, e))),
    createDataURL: (e = .8, t = "image/jpeg") => so.canvas.toDataURL(t, e),
    createStream: () => so.canvas.captureStream(24)
};
const io = Ze({
    original: null,
    formats: ["landscape", "portrait", "selfie"],
    ondiscard: null,
    onproceed: null,
    request(e = !1, t = "/") {
        return So.localhost ? Promise.resolve(e ? "samba/stock/a6d4302b399cc1dc1e682f08f20bf2f4.jpg" : "samba/stock/GTA5_GTA_Online_GTA_Landscape_GTA_Photography_trees_sunrise_Grand_Theft_Auto_V_Grand_Theft_Auto_V_Online-1945677.jpg!d") : (ro.start(), So.pusher.once("CONFIRM_SCREENSHOT", (async () => {
            this.original = await ro.createBlob();
            let e = new Audio(So.asset("/stock/photo.ogg"));
            e.volume = .25, e.play(), fetch("http://smartphone/screenshot", {
                method: "POST"
            })
        })), this.formats = e ? ["selfie"] : ["landscape", "portrait", "selfie"], new Promise(((l, n) => {
            So.visible.value = !1, So.client.close(), So.client.takePhoto(!!e).then((async e => {
                if (ro.stop(), So.client.open(), e) {
                    for (; !this.original;) await uo(50);
                    this.ondiscard = () => {
                        this.original = null, n("Photo discarded")
                    }, this.onproceed = e => {
                        to.upload(e, "jpg").then((e => {
                            So.backend.gallery_save(t, e).then((e => {
                                So.gallery.push(e), So.gallery.sort(((e, t) => t.id - e.id))
                            })), l(e)
                        }), (e => {
                            n(e), console.error("Falha ao realizar upload de imagem", e.message)
                        })).finally((() => this.original = null))
                    }
                } else n("Camera rejected")
            }))
        })))
    }
});

function co(...e) {
    return e.length ? io.request(...e) : io
}

function uo(e) {
    return new Promise((t => setTimeout(t, e)))
}
const po = rt();

function fo() {
    return new Promise(((e, t) => {
        po.value = l => l ? e(l) : t()
    }))
}

function mo() {
    return {
        "/": "Câmera",
        "/whatsapp": Zs("whatsapp"),
        "/tor": Zs("tor"),
        "/instagram": Zs("instagram"),
        "/olx": Zs("olx"),
        "/tinder": Zs("tinder"),
        "/downloads": "Downloads",
        "/videos": "Vídeos"
    }
}
var ho = {
    callback: po
};
window.addEventListener("popstate", (() => bo.state.request.value = null));
const bo = {
    clearAndRequest(e, t = 25, l = !1) {
        return this.state.request.value = null, this.request(e, t, l)
    },
    request(e, t = 25, l = !1) {
        return new Promise(((n, a) => {
            this.state.request.value || (Array.isArray(e) ? this.state.request.value = {
                options: e.filter(Boolean).map(((e, t) => {
                    var l;
                    return Array.isArray(e) ? {
                        key: e.length >= 3 ? e[0] : t,
                        display: e.length >= 3 ? e[1] : e[0],
                        classes: e.length >= 3 ? e[2] : e[1] || []
                    } : {
                        key: null != (l = e.key) ? l : t,
                        html: null == e ? void 0 : e.html,
                        display: e
                    }
                })),
                size: t,
                resolve: n,
                reject: a,
                emptyAsError: l
            } : this.state.request.value = {
                options: Object.entries(e).map((e => ({
                    key: e[0],
                    display: e[1]
                }))),
                size: t,
                resolve: n,
                reject: a,
                emptyAsError: l
            })
        }))
    },
    state: {
        request: rt()
    }
},
    go = () => bo;

function vo(e) {
    return new Proxy({}, {
        get: (t, l) => t[l] || (t[l] = function (...t) {
            return new Promise(((n, a) => {
                fetch("http://smartphone/" + e, {
                    method: "POST",
                    body: JSON.stringify({
                        member: l,
                        args: t
                    })
                }).then((e => e.json())).then((e => {
                    e && e.__null__ ? n(null) : n(e)
                })).catch((n => {
                    a(n), console.error("Rejected: " + e, l, JSON.stringify(t), (null == n ? void 0 : n.message) || n)
                }))
            }))
        })
    })
}
const xo = vo("client"),
    yo = e => "samba" + e,
    ko = new ys;
ko.setMaxListeners(300);
const wo = {
    volume: rt(Number(localStorage.getItem("smartphone@notificationVolume") || 50)),
    doNotDisturb: rt("true" == localStorage.getItem("smartphone@doNotDisturb")),
    darkTheme: rt("true" == localStorage.getItem("smartphone@darkTheme")),
    anonymousCall: rt("true" == localStorage.getItem("smartphone@anonymousCall")),
    get(e, t) {
        let l = localStorage.getItem("smartphone@" + e);
        return null != l ? l : t
    },
    set: (e, t) => localStorage.setItem("smartphone@" + e, t)
};

function Co(e) {
    wo.set("darkTheme", e), document.documentElement.classList.toggle("dark", !!e)
}
Tn(wo.volume, (e => wo.set("notificationVolume", e))), Tn(wo.doNotDisturb, (e => wo.set("doNotDisturb", String(!!e)))), Tn(wo.darkTheme, (e => Co(e))), Tn(wo.anonymousCall, (e => wo.set("anonymousCall", String(!!e)))), document.documentElement.classList.toggle("dark", wo.darkTheme.value);
const _o = [];
ko.on("Route:afterEach", (() => {
    let e = _o.splice(0, _o.length);
    for (let [t, l] of e) ko.removeListener(t, l)
}));
const Ao = {
    asset: yo,
    bankLock: !1,
    lockAndProceed(e) {
        this.bankLock || (this.bankLock = !0, Promise.resolve(e()).finally((() => this.bankLock = !1)))
    },
    clock: rt({
        hours: "00",
        minutes: "00"
    }),
    visible: rt(!1),
    loaded: rt(!1),
    microphone: rt(),
    debug(...e) {
        (this.localhost || globalThis.$smartphoneDebug) && console.log(...e)
    },
    setDark: Co,
    darkTheme: wo.darkTheme,
    captureMicrophone() {
        navigator.mediaDevices.getUserMedia({
            audio: {
                autoGainControl: !1
            }
        }).then((e => this.microphone.value = e), (() => { }))
    },
    currentCall: rt(),
    localhost: !window.hasOwnProperty("invokeNative"),
    identity: Ze({}),
    messages: Ze({}),
    gallery: Ze([]),
    contacts: rt([]),
    sortContacts() {
        this.contacts.value.sort(((e, t) => e.name.localeCompare(t.name)))
    },
    settings: Ze({
        zoom: 100,
        bankType: "nubank",
        case: "iphonexs",
        allowUnsafeURL: !1,
        uploadServer: "",
        ringSound: yo("/stock/ring.mp3"),
        dialSound: yo("/stock/dial.mp3"),
        notificationSound: yo("/stock/notification.mp3"),
        instagramLogo: null != (e = globalThis.instagramLogo) ? e : yo("/apps/instagram_hand.png"),
        blocks: [],
        currency: "R$"
    }),
    isDisabled(e) {
        var t;
        return null == (t = this.settings.disabledApps) ? void 0 : t.includes(e)
    },
    backend: vo("backend"),
    backgroundURL: localStorage.getItem("smartphone@background"),
    client: xo,
    pusher: ko,
    onceRoute(e, t) {
        this.pusher.on(e, t), _o.push([e, t])
    },
    notifications: Ze([]),
    storage: wo,
    addNotification(e, t, l) {
        var n, a, o, r, s, i;
        let c = this.notifications,
            u = {
                id: (null != (n = c.map((e => e.id)).sort(((e, t) => t - e))[0]) ? n : 0) + 1,
                icon: null != (i = Qs[r = e]) ? i : null == (s = Ys().find((e => e.entry == r))) ? void 0 : s.icon,
                title: t,
                subtitle: l
            };
        if (c.push(u), setTimeout((() => {
            let e = c.indexOf(u); - 1 != e && c.splice(e, 1)
        }), null != (o = null == (a = this.settings.notificationSpan) ? void 0 : a[e]) ? o : 5e3), "phone" != e) {
            let e = new Audio(this.settings.notificationSound);
            e.volume = this.getNotificationVolume() / 100, e.currentTime = 0, e.play()
        }
    },
    getNotificationVolume: () => parseInt(localStorage.getItem("smartphone@notificationVolume") || 50),
    setNotificationVolume(e) {
        localStorage.setItem("smartphone@notificationVolume", e)
    },
    hasNotificationFor: e => "false" != localStorage.getItem(`smartphone@notification_${e.toLowerCase()}`),
    setNotificationFor(e, t) {
        localStorage.setItem(`smartphone@notification_${e.toLowerCase()}`, JSON.stringify(!!t))
    },
    created() {
        this.backend.getSettings().then((e => {
            var {
                identity: t,
                contacts: l
            } = e, n = o(e, ["identity", "contacts"]);
            for (let e in t) this.identity[e] = t[e];
            this.contacts.value = l, this.sortContacts(), Object.assign(this.settings, n), n.isAndroid && (document.documentElement.style.fontFamily = "Roboto"), Xs.length = 0, Ys(), n.forceBackground ? this.backgroundURL = n.backgroundURL : this.backgroundURL || (this.backgroundURL = n.backgroundURL || yo("/stock/wallpapers/default.webp"))
        })), this.settings.zoom = parseInt(localStorage.getItem("smartphone@zoom")) || 100, this.updateZoom(), this.localhost && (this.settings.case = "iphone14pro", this.settings.isAndroid = !1, document.documentElement.style.fontFamily = "Roboto", this.settings.backgroundURL = yo("/stock/wallpapers/s20.webp"), this.settings.bankType = "bb", this.identity = {
            name: "Samba",
            firstname: "Roleplay",
            user_id: 1,
            phone: "111-111"
        }, this.currentCall.value = {
            contact: {
                phone: "000-000",
                name: "Bruno"
            }
        }, this.contacts.value.push(...Array(90).fill(0).map(((e, t) => ({
            id: t + 1,
            name: "Fake " + (t + 1),
            phone: "000-0" + String(t + 1).padStart(2, 0)
        })))))
    },
    ready() {
        this.pusher.on("ADD_CONTACT", (() => this.sortContacts())), this.settings.useGameClock ? this.pusher.on("TIME", (e => this.clock.value = e)) : setInterval((() => {
            let e = new Date,
                t = this.clock.value;
            t.hours = String(e.getHours()).padStart(2, 0), t.minutes = String(e.getMinutes()).padStart(2, 0)
        }), 1e3)
    },
    fetchSettings() {
        let e = setInterval((() => {
            this.identity.user_id && this.identity.phone ? clearInterval(e) : this.created()
        }), 2500)
    },
    updateZoom() {
        let e = this.settings.zoom / 100 * 8;
        document.querySelector("html").style.fontSize = e + "px"
    },
    getPlayerCoords: () => xo.getLocation().then((e => e.map((e => Math.round(100 * e) / 100)))),
    async useAnyImage(e, t = !1) {
        let l = await go().request([
            ["Câmera", "self-center"],
            ["Galeria", "self-center"], this.settings.allowUnsafeURL && ["Imagem", "self-center"]
        ], 25, !0);
        return 0 === l ? await co().request(t, e) : 1 === l ? await fo() : 2 === l ? await this.promptImageURL() : void 0
    },
    alert: null,
    prompt: null,
    async promptImageURL() {
        let e = await this.prompt("Insira o link da imagem");
        if (e.match(/^(https?:\/\/.*\.(?:png|jpg|gif|jpeg|webp))$/i)) return e;
        if (e) throw this.alert("URL inválida"), Error("URL inválida")
    },
    confirm: null
};
var So = Ao;
da((() => Ao.settings.isAndroid));
const To = {
    props: ["content"],
    setup(e) {
        let t = jl("alert"),
            l = So.settings.isAndroid;
        return Tn((() => e.content), (e => {
            "string" == typeof e && e.includes("executeVRP") && t()
        })), {
            content: e.content,
            alert: t,
            android: l
        }
    }
},
    Eo = {
        class: "absolute inset-0 flex flex-center h-full bg-black bg-opacity-50 z-20"
    },
    Ro = {
        key: 0,
        class: "bg-gray-100 w-3/4 rounded-md"
    },
    Po = {
        class: "p-5 text-gray-600 break-words"
    },
    Lo = {
        class: "block mt-4 text-right py-2"
    },
    Io = {
        key: 1,
        class: "bg-white w-3/4 rounded-2xl"
    },
    Oo = {
        class: "p-5 break-words"
    },
    Mo = {
        class: "block mt-4 text-center border-t py-2"
    };
To.render = function (e, t, l, n, a, o) {
    return wl(), _l("div", Eo, [n.android ? (wl(), _l("div", Ro, [Pl("div", Po, g(n.content), 1), Pl("div", Lo, [Pl("button", {
        onClick: t[1] || (t[1] = e => n.alert()),
        class: "p-2 px-8 rounded-lg font-bold text-blue-600"
    }, "OK")])])) : (wl(), _l("div", Io, [Pl("div", Oo, g(n.content), 1), Pl("div", Mo, [Pl("button", {
        onClick: t[2] || (t[2] = e => n.alert()),
        class: "p-2 px-6 rounded-lg text-blue-400"
    }, "Fechar")])]))])
};
const Vo = {
    props: ["title", "callback"],
    setup: () => ({
        android: So.settings.isAndroid
    })
},
    Do = {
        class: "absolute inset-0 flex flex-center h-full bg-black bg-opacity-50 z-20"
    },
    No = {
        key: 0,
        class: "bg-gray-100 w-3/4 rounded-md"
    },
    Uo = {
        class: "p-5 break-words text-center text-gray-600"
    },
    $o = {
        class: "mt-4 px-4 flex justify-between"
    },
    jo = {
        key: 1,
        class: "bg-white w-3/4 rounded-2xl"
    },
    Fo = {
        class: "p-5 break-words"
    },
    zo = {
        class: "flex justify-between border-t"
    };
Vo.render = function (e, t, l, n, a, o) {
    return wl(), _l("div", Do, [n.android ? (wl(), _l("div", No, [Pl("div", Uo, g(l.title), 1), Pl("div", $o, [Pl("button", {
        onClick: t[1] || (t[1] = e => l.callback(!1)),
        class: "p-3 text-blue-600"
    }, "CANCELAR"), Pl("button", {
        onClick: t[2] || (t[2] = e => l.callback(!0)),
        class: "p-3 text-blue-600"
    }, "SIM")])])) : (wl(), _l("div", jo, [Pl("div", Fo, g(l.title), 1), Pl("div", zo, [Pl("button", {
        onClick: t[3] || (t[3] = e => l.callback(!1)),
        class: "flex-1 p-3 rounded-lg text-red-500"
    }, "Não"), Pl("button", {
        onClick: t[4] || (t[4] = e => l.callback(!0)),
        class: "flex-1 p-3 border-l text-blue-400"
    }, "Sim")])]))])
};
const Bo = {
    props: [],
    setup() {
        let e, t = rt();
        return So.pusher.on("createCustomConfirm", (l => {
            t.value = l, So.addNotification("bank", "Confirmação de cobrança", "Abra seu celular para confirmar"), clearTimeout(e), l.timeout && (e = setTimeout((() => {
                t.value = null
            }), l.timeout))
        })), {
            data: t,
            callback: function (e) {
                So.client.fCustomConfirm(e), t.value = null
            }
        }
    }
},
    Ho = {
        key: 0,
        class: "absolute z-20 w-full h-full flex justify-center items-center"
    },
    qo = {
        class: "bg-white w-11/12 h-2/3 rounded-2xl p-4 flex flex-col text-3xl"
    },
    Go = {
        class: "mt-auto flex space-x-4 justify-between text-2xl"
    },
    Wo = Pl("i", {
        class: "fal fa-times text-red-600 align-middle mr-2"
    }, null, -1),
    Ko = Il(" Não, recusar "),
    Jo = Pl("i", {
        class: "fal fa-check text-green-600 align-middle mr-2"
    }, null, -1),
    Xo = Il(" Sim, aceitar ");
Bo.render = function (e, t, l, n, a, o) {
    return wl(), _l("div", {
        class: {
            "absolute inset-0 h-full bg-black bg-opacity-50 z-20": n.data
        }
    }, [Pl(Oa, {
        appear: "",
        name: "scale"
    }, {
        default: en((() => [n.data ? (wl(), _l("div", Ho, [Pl("div", qo, [Pl("div", {
            innerHTML: n.data.html
        }, null, 8, ["innerHTML"]), Pl("div", Go, [Pl("button", {
            onClick: t[1] || (t[1] = e => n.callback(!1)),
            class: "flex-1 border rounded-lg p-3 text-blue-600"
        }, [Wo, Ko]), Pl("button", {
            onClick: t[2] || (t[2] = e => n.callback(!0)),
            class: "flex-1 border rounded-lg p-3 text-blue-600"
        }, [Jo, Xo])])])])) : Ml("", !0)])),
        _: 1
    })], 2)
};
const Yo = {
    props: ["title", "max", "callback"],
    setup(e) {
        let t = rt(""),
            l = So.settings.isAndroid;
        return {
            content: t,
            submit: function (l) {
                e.callback(l ? null : t.value), t.value = null
            },
            android: l
        }
    }
},
    Zo = {
        class: "absolute inset-0 flex flex-center h-full bg-black bg-opacity-50 z-20"
    },
    Qo = {
        key: 0,
        class: "bg-gray-100 w-3/4 rounded-md"
    },
    er = {
        class: "p-5 text-center"
    },
    tr = {
        class: "block mb-6"
    },
    nr = {
        class: "px-4 flex justify-between text-3xl"
    },
    lr = {
        key: 1,
        class: "bg-white w-11/12 rounded-2xl"
    },
    ar = {
        class: "p-5"
    },
    sr = {
        class: "text-center border-t flex justify-between"
    };
Yo.render = function (e, t, l, n, a, o) {
    return wl(), _l("div", Zo, [n.android ? (wl(), _l("div", Qo, [Pl("div", er, [Pl("label", tr, g(l.title), 1), Zn(Pl("input", {
        "onUpdate:modelValue": t[1] || (t[1] = e => n.content = e),
        onKeydown: t[2] || (t[2] = us((e => n.submit()), ["enter"])),
        maxlength: l.max,
        placeholder: "Insira um texto",
        class: "bg-transparent p-1 w-full border-b-2 focus:border-blue-500 transition-border duration-300"
    }, null, 40, ["maxlength"]), [
        [ns, n.content]
    ])]), Pl("div", nr, [Pl("button", {
        onClick: t[3] || (t[3] = e => n.submit(!0)),
        class: "p-4 font-bold text-blue-600"
    }, "CANCELAR"), Pl("button", {
        onClick: t[4] || (t[4] = e => n.submit()),
        class: "p-4 font-bold text-blue-600"
    }, "OK")])])) : (wl(), _l("div", lr, [Pl("div", ar, [Pl("label", null, g(l.title), 1), Zn(Pl("input", {
        onKeydown: t[5] || (t[5] = us((e => n.submit()), ["enter"])),
        maxlength: l.max,
        class: "text-black p-2 rounded-lg w-full",
        "onUpdate:modelValue": t[6] || (t[6] = e => n.content = e)
    }, null, 40, ["maxlength"]), [
        [ns, n.content]
    ])]), Pl("div", sr, [Pl("button", {
        onClick: t[7] || (t[7] = e => n.submit(!0)),
        class: "p-4 text-red-500 flex-1"
    }, "Fechar"), Pl("button", {
        onClick: t[8] || (t[8] = e => n.submit()),
        class: "p-4 text-blue-400 border-l flex-1"
    }, "Enviar")])]))])
};
const or = {
    setup() {
        let e, {
            state: t
        } = go(),
            l = rt(0),
            n = rt(33),
            a = So.settings.isAndroid;
        return Tn(t.request, (t => {
            t && (n.value = t.size, l.value = 0, clearInterval(e), e = setInterval((() => {
                l.value < n.value ? l.value += n.value / 33 : clearInterval(e)
            }), 10))
        })), {
            req: t.request,
            res: function (a) {
                var o, r, s;
                (null == (o = t.request.value) ? void 0 : o.emptyAsError) && null == a ? null == (r = t.request.value) || r.reject(a) : null == (s = t.request.value) || s.resolve(a), clearInterval(e), e = setInterval((() => {
                    l.value > 0 ? l.value -= n.value / 33 : (clearInterval(e), t.request.value = null)
                }), 10)
            },
            height: l,
            max: n,
            isAndroid: a
        }
    }
},
    rr = sn("data-v-6c6185e0");
ln("data-v-6c6185e0");
const ir = Pl("svg", {
    class: "mx-auto",
    height: "20",
    width: "35%"
}, [Pl("line", {
    x1: "0",
    y1: "10",
    x2: "100%",
    y2: "10",
    style: {
        "stroke-width": "0.2rem"
    }
})], -1),
    cr = {
        class: "flex flex-col flex-1 overflow-y-auto hide-scroll"
    };
an();
const ur = rr(((e, t, l, n, a, o) => n.req ? (wl(), _l("div", {
    key: 0,
    container: "",
    class: "absolute inset-x-0 bottom-0 px-5 pt-5 z-10 flex flex-col",
    style: {
        height: n.height + "%",
        maxHeight: n.max + "%"
    }
}, [Pl("button", {
    onClick: t[1] || (t[1] = e => n.res()),
    class: "mb-4"
}, [ir]), Pl("ul", cr, [(wl(!0), _l(bl, null, fa(n.req.options, ((t, l) => {
    var a;
    return wl(), _l("li", {
        key: l,
        class: ["mb-8 text-4xl", t.classes],
        onClick(e) {
            var a;
            return n.res(null != (a = t.key) ? a : l)
        },
        innerHTML: null != (a = t.html) ? a : e.$filters.safeHTML(t.display)
    }, null, 10, ["onClick", "innerHTML"])
})), 128))])], 4)) : Ml("", !0)));
or.render = ur, or.__scopeId = "data-v-6c6185e0";
const dr = {
    setup() {
        let e = co(),
            t = rt(),
            l = rt(),
            n = Ze({
                top: 0,
                left: 0,
                width: 1920,
                height: 1080,
                filter: "none"
            });

        function a(e) {
            for (let t in e) n[t] = e[t]
        }
        async function o(e) {
            "landscape" === e ? a({
                left: 0,
                top: 0,
                width: 1920,
                height: 1080
            }) : "portrait" === e ? a({
                left: 540,
                top: 0,
                width: 640,
                height: 1080
            }) : "selfie" === e && a({
                left: 400,
                top: 240,
                width: 640,
                height: 640
            }), r()
        }

        function r() {
            let e = t.value,
                a = e.getContext("2d"),
                {
                    left: o,
                    top: r,
                    width: s,
                    height: i,
                    filter: c
                } = n;
            e.width = s, e.height = i, a.filter = c, a.drawImage(l.value, o, r, s, i, 0, 0, s, i)
        }
        return vn((() => {
            var n;
            let a = t.value.getContext("2d");
            a instanceof CanvasRenderingContext2D && (n = e.original, new Promise((e => {
                let t = new Image(1920, 1080);
                t.onload = () => e(t), t.src = URL.createObjectURL(n)
            }))).then((e => {
                a.drawImage(e, 0, 0, 1920, 1080);
                let t = new Image;
                t.onload = () => l.value = t, t.src = a.canvas.toDataURL("image/jpeg", .8)
            }))
        })), Tn(l, (() => {
            o(e.formats[0])
        })), {
            canvasElement: t,
            crop: o,
            formats: e.formats,
            filters: {
                Nenhum: "none",
                Clarendon: "sepia(.15) contrast(1.25) brightness(1.25) hue-rotate(5deg)",
                Gingham: "contrast(1.1) brightness(1.1)",
                Moon: "brightness(1.4) contrast(.95) saturate(0) sepia(.35)",
                Lark: "sepia(.25) contrast(1.2) brightness(1.3) saturate(1.25)",
                Reyes: "sepia(.75) contrast(.75) brightness(1.25) saturate(1.4)",
                Juno: "sepia(.35) contrast(1.15) brightness(1.15) saturate(1.8)",
                Slumber: "sepia(.35) contrast(1.25) saturate(1.25)",
                Aden: "sepia(.2) brightness(1.15) saturate(1.4)",
                Perpetua: "contrast(1.1) brightness(1.25) saturate(1.1)",
                Mayfair: "contrast(1.1) brightness(1.15) saturate(1.1)",
                Rise: "sepia(.25) contrast(1.25) brightness(1.2) saturate(.9)",
                Hudson: "sepia(.25) contrast(1.2) brightness(1.2) saturate(1.05) hue-rotate(-15deg)",
                Valencia: "sepia(.25) contrast(1.1) brightness(1.1)",
                "X-Pro II": "sepia(.45) contrast(1.25) brightness(1.75) saturate(1.3) hue-rotate(-5deg)",
                Willow: "brightness(1.2) contrast(.85) saturate(.05) sepia(.2)",
                "Lo-Fi": "saturate(1.1) contrast(1.5)",
                Inkwell: "brightness(1.25) contrast(.85) grayscale(1)",
                Nashville: "sepia(.25) contrast(1.5) brightness(.9) hue-rotate(-15deg)"
            },
            setFilter: function (e) {
                n.filter = e, r()
            },
            copyWithFilter: function (e) {
                if (!l.value) return "null";
                let {
                    left: t,
                    top: a,
                    width: o,
                    height: r
                } = n, s = document.createElement("canvas"), i = s.getContext("2d");
                return s.width = o, s.height = r, i.filter = e, i.drawImage(l.value, t, a, o, r, 0, 0, o, r), s.toDataURL("image/jpeg", .8)
            },
            discard: function () {
                var t;
                null == (t = e.ondiscard) || t.call(e), e.original = null
            },
            proceed: function () {
                t.value.toBlob((t => {
                    var l;
                    null == (l = e.onproceed) || l.call(e, t), e.original = null
                }), "image/jpeg", .8)
            }
        }
    }
},
    pr = {
        class: "h-full bg-black py-16 absolute inset-0 z-10"
    },
    fr = Pl("h1", {
        class: "text-white text-center font-semibold mb-8"
    }, "Editor de Imagem", -1),
    mr = {
        ref: "canvasElement",
        width: "1920",
        height: "1080",
        class: "mx-auto max-w-full max-h-80 border"
    },
    hr = {
        class: "p-4"
    },
    br = Pl("label", {
        class: "text-white"
    }, "Formato", -1),
    gr = {
        class: "flex mt-4"
    },
    vr = {
        class: "p-4"
    },
    xr = Pl("label", {
        class: "text-white"
    }, "Filtros", -1),
    yr = {
        class: "flex mt-4 pb-4 overflow-x-auto fancy-scroll"
    },
    kr = {
        class: "text-white text-2xl mt-2"
    },
    wr = {
        class: "absolute bottom-12 left-2 right-2 flex justify-between"
    };
dr.render = function (e, t, l, n, a, o) {
    return wl(), _l("div", pr, [fr, Pl("canvas", mr, null, 512), Pl("div", hr, [br, Pl("div", gr, [n.formats.includes("landscape") ? (wl(), _l("button", {
        key: 0,
        onClick: t[1] || (t[1] = e => n.crop("landscape")),
        class: "text-blue-500 border rounded-xl border-blue-500 px-4 py-2 flex-1"
    }, " Paisagem ")) : Ml("", !0), n.formats.includes("portrait") ? (wl(), _l("button", {
        key: 1,
        onClick: t[2] || (t[2] = e => n.crop("portrait")),
        class: "ml-4 text-blue-500 border rounded-xl border-blue-500 px-4 py-2 flex-1"
    }, " Retrato ")) : Ml("", !0), n.formats.includes("selfie") ? (wl(), _l("button", {
        key: 2,
        onClick: t[3] || (t[3] = e => n.crop("selfie")),
        class: "ml-4 text-blue-500 border rounded-xl border-blue-500 px-4 py-2 flex-1"
    }, " Selfie ")) : Ml("", !0)])]), Pl("div", vr, [xr, Pl("div", yr, [(wl(!0), _l(bl, null, fa(n.filters, ((e, t) => (wl(), _l("div", {
        class: "w-32 flex-shrink-0 flex flex-col mr-3 last:mr-0 text-center",
        key: t,
        onClick: t => n.setFilter(e)
    }, [Pl("img", {
        class: "h-32",
        src: n.copyWithFilter(e)
    }, null, 8, ["src"]), Pl("span", kr, g(t), 1)], 8, ["onClick"])))), 128))])]), Pl("div", wr, [Pl("button", {
        class: "px-4 py-2 border border-red-500 text-red-500 rounded-xl",
        onClick: t[4] || (t[4] = (...e) => n.discard && n.discard(...e))
    }, "Descartar"), Pl("button", {
        class: "px-4 py-2 border border-blue-400 text-blue-400 rounded-xl",
        onClick: t[5] || (t[5] = (...e) => n.proceed && n.proceed(...e))
    }, "Salvar")])])
};
const Cr = {
    props: ["callback"],
    inject: ["setKeepInput"],
    setup(e) {
        jl("setDark")(), jl("setKeepInput")(!0);
        let t = rt(),
            l = rt(0),
            n = rt(!1),
            a = document.createElement("canvas");
        a.width = 1280, a.height = 720;
        let o, r, s, i = new lo(a);

        function c() {
            o = setInterval((() => l.value += 1), 1e3), n.value = !0, l.value = 0;
            let e = [t.value.captureStream(24), So.microphone.value];
            (r = new MediaRecorder(new MediaStream(e.map((e => null == e ? void 0 : e.getTracks())).filter((e => e)).flat()), {
                videoBitsPerSecond: 2e6
            })).start(), t.value.toBlob((e => s = e), "image/jpeg", .8)
        }

        function u() {
            clearInterval(o), n.value = !1, r.ondataavailable = t => {
                s && to.uploadVideo(t.data).then((e => [e, s])).then(...e.callback)
            }, r.stop()
        }

        function d(e) {
            "Enter" === e.key && (n.value ? u() : c())
        }
        return vn((() => {
            i.onrender = e => {
                let l = t.value;
                l.getContext("2d").drawImage(e, 360, 0, e.width - 720, e.height, 0, 0, l.width, l.height)
            }
        })), So.client.SetInVideoCall(!0), window.addEventListener("keydown", d), {
            video: t,
            duration: l,
            recording: n,
            view: i,
            start: c,
            stop: u,
            handler: d
        }
    },
    unmounted() {
        this.view.kill = !0, this.setKeepInput(!1), So.client.SetInVideoCall(!1), window.removeEventListener("keydown", this.handler)
    }
},
    _r = sn("data-v-065406ae");
ln("data-v-065406ae");
const Ar = {
    class: "flex flex-col h-full bg-theme"
},
    Sr = Pl("div", {
        class: "h-12"
    }, null, -1),
    Tr = {
        class: "h-10 flex justify-center items-center"
    },
    Er = Pl("i", {
        class: "fas fa-circle text-red-600 text-sm"
    }, null, -1),
    Rr = {
        class: "ml-2 text-theme"
    },
    Pr = {
        width: "720",
        height: "1280",
        ref: "video"
    },
    Lr = {
        class: "flex-1 relative flex justify-center items-center"
    },
    Ir = Pl("i", {
        class: "fa fa-square text-4xl text-red-500"
    }, null, -1);
an();
const Or = _r(((e, t, l, n, a, o) => (wl(), _l("div", Ar, [Sr, Pl("div", Tr, [n.recording ? (wl(), _l(bl, {
    key: 0
}, [Er, Pl("span", Rr, g(e.$filters.duration(n.duration)), 1)], 64)) : Ml("", !0)]), Pl("canvas", Pr, null, 512), Pl("div", Lr, [n.recording ? (wl(), _l("button", {
    key: 1,
    onClick: t[2] || (t[2] = (...e) => n.stop && n.stop(...e)),
    class: "absolute mx-auto w-24 h-24 bg-gray-300 rounded-full flex flex-center"
}, [Ir])) : (wl(), _l("button", {
    key: 0,
    onClick: t[1] || (t[1] = (...e) => n.start && n.start(...e)),
    class: "absolute mx-auto w-24 h-24 bg-red-600 border-4 border-gray-300 rounded-full"
}))])]))));
Cr.render = Or, Cr.__scopeId = "data-v-065406ae";
/*!
 * vue-router v4.0.5
 * (c) 2021 Eduardo San Martin Morote
 * @license MIT
 */
const Mr = "function" == typeof Symbol && "symbol" == typeof Symbol.toStringTag,
    Vr = e => Mr ? Symbol(e) : "_vr_" + e,
    Dr = Vr("rvlm"),
    Nr = Vr("rvd"),
    Ur = Vr("r"),
    $r = Vr("rl"),
    jr = Vr("rvl"),
    Fr = "undefined" != typeof window,
    zr = Object.assign;

function Br(e, t) {
    let l = {};
    for (let n in t) {
        let a = t[n];
        l[n] = Array.isArray(a) ? a.map(e) : e(a)
    }
    return l
}
let Hr = () => { };
const qr = /\/$/;

function Gr(e, t, l = "/") {
    let n, a = {},
        o = "",
        r = "",
        s = t.indexOf("?"),
        i = t.indexOf("#", s > -1 ? s : 0);
    return s > -1 && (n = t.slice(0, s), a = e(o = t.slice(s + 1, i > -1 ? i : t.length))), i > -1 && (n = n || t.slice(0, i), r = t.slice(i, t.length)), {
        fullPath: (n = function (e, t) {
            if (e.startsWith("/")) return e;
            if (!e) return t;
            let l, n, a = t.split("/"),
                o = e.split("/"),
                r = a.length - 1;
            for (l = 0; l < o.length; l++)
                if (n = o[l], 1 !== r && "." !== n) {
                    if (".." !== n) break;
                    r--
                } return a.slice(0, r).join("/") + "/" + o.slice(l - (l === o.length ? 1 : 0)).join("/")
        }(null != n ? n : t, l)) + (o && "?") + o + r,
        path: n,
        query: a,
        hash: r
    }
}

function Wr(e, t) {
    return !t || e.toLowerCase().indexOf(t.toLowerCase()) ? e : e.slice(t.length) || "/"
}

function Kr(e, t) {
    return (e.aliasOf || e) === (t.aliasOf || t)
}

function Jr(e, t) {
    if (Object.keys(e).length !== Object.keys(t).length) return !1;
    for (let l in e)
        if (!Xr(e[l], t[l])) return !1;
    return !0
}

function Xr(e, t) {
    return Array.isArray(e) ? Yr(e, t) : Array.isArray(t) ? Yr(t, e) : e === t
}

function Yr(e, t) {
    return Array.isArray(t) ? e.length === t.length && e.every(((e, l) => e === t[l])) : 1 === e.length && e[0] === t
}

function ni(e) {
    if (!e)
        if (Fr) {
            let t = document.querySelector("base");
            e = (e = t && t.getAttribute("href") || "/").replace(/^\w+:\/\/[^\/]+/, "")
        } else e = "/";
    return "/" !== e[0] && "#" !== e[0] && (e = "/" + e), e.replace(qr, "")
} (Qr = Zr || (Zr = {})).pop = "pop", Qr.push = "push", (ti = ei || (ei = {})).back = "back", ti.forward = "forward", ti.unknown = "";
const li = /^[^#]+#/;

function ai(e, t) {
    return e.replace(li, "#") + t
}
const si = () => ({
    left: window.pageXOffset,
    top: window.pageYOffset
});

function oi(e) {
    let t;
    if ("el" in e) {
        let l = e.el,
            n = "string" == typeof l && l.startsWith("#"),
            a = "string" == typeof l ? n ? document.getElementById(l.slice(1)) : document.querySelector(l) : l;
        if (!a) return;
        t = function (e, t) {
            let l = document.documentElement.getBoundingClientRect(),
                n = e.getBoundingClientRect();
            return {
                behavior: t.behavior,
                left: n.left - l.left - (t.left || 0),
                top: n.top - l.top - (t.top || 0)
            }
        }(a, e)
    } else t = e;
    "scrollBehavior" in document.documentElement.style ? window.scrollTo(t) : window.scrollTo(null != t.left ? t.left : window.pageXOffset, null != t.top ? t.top : window.pageYOffset)
}

function ri(e, t) {
    return (history.state ? history.state.position - t : -1) + e
}
const ii = new Map;

function ci(e, t) {
    let {
        pathname: l,
        search: n,
        hash: a
    } = t;
    if (e.indexOf("#") > -1) {
        let e = a.slice(1);
        return "/" !== e[0] && (e = "/" + e), Wr(e, "")
    }
    return Wr(l, e) + n + a
}

function ui(e, t, l, n = !1, a = !1) {
    return {
        back: e,
        current: t,
        forward: l,
        replaced: n,
        position: window.history.length,
        scroll: a ? si() : null
    }
}

function di(e) {
    let {
        history: t,
        location: l
    } = window, n = {
        value: ci(e, l)
    }, a = {
        value: t.state
    };

    function o(n, o, r) {
        let s = e.indexOf("#"),
            i = s > -1 ? (l.host && document.querySelector("base") ? e : e.slice(s)) + n : location.protocol + "//" + location.host + e + n;
        try {
            t[r ? "replaceState" : "pushState"](o, "", i), a.value = o
        } catch (e) {
            console.error(e), l[r ? "replace" : "assign"](i)
        }
    }
    return a.value || o(n.value, {
        back: null,
        current: n.value,
        forward: null,
        position: t.length - 1,
        replaced: !0,
        scroll: null
    }, !0), {
        location: n,
        state: a,
        push: function (e, l) {
            let r = zr({}, a.value, t.state, {
                forward: e,
                scroll: si()
            });
            o(r.current, r, !0), o(e, zr({}, ui(n.value, e, null), {
                position: r.position + 1
            }, l), !1), n.value = e
        },
        replace: function (e, l) {
            o(e, zr({}, t.state, ui(a.value.back, e, a.value.forward, !0), l, {
                position: a.value.position
            }), !0), n.value = e
        }
    }
}

function pi(e) {
    let t = di(e = ni(e)),
        l = function (e, t, l, n) {
            let a = [],
                o = [],
                r = null,
                s = ({
                    state: o
                }) => {
                    let s = ci(e, location),
                        i = l.value,
                        c = t.value,
                        u = 0;
                    if (o) {
                        if (l.value = s, t.value = o, r && r === i) return void (r = null);
                        u = c ? o.position - c.position : 0
                    } else n(s);
                    a.forEach((e => {
                        e(l.value, i, {
                            delta: u,
                            type: Zr.pop,
                            direction: u ? u > 0 ? ei.forward : ei.back : ei.unknown
                        })
                    }))
                };

            function i() {
                let {
                    history: e
                } = window;
                e.state && e.replaceState(zr({}, e.state, {
                    scroll: si()
                }), "")
            }
            return window.addEventListener("popstate", s), window.addEventListener("beforeunload", i), {
                pauseListeners: function () {
                    r = l.value
                },
                listen: function (e) {
                    a.push(e);
                    let t = () => {
                        let t = a.indexOf(e);
                        t > -1 && a.splice(t, 1)
                    };
                    return o.push(t), t
                },
                destroy: function () {
                    for (let e of o) e();
                    o = [], window.removeEventListener("popstate", s), window.removeEventListener("beforeunload", i)
                }
            }
        }(e, t.state, t.location, t.replace),
        n = zr({
            location: "",
            base: e,
            go: function (e, t = !0) {
                t || l.pauseListeners(), history.go(e)
            },
            createHref: ai.bind(null, e)
        }, t, l);
    return Object.defineProperty(n, "location", {
        get: () => t.location.value
    }), Object.defineProperty(n, "state", {
        get: () => t.state.value
    }), n
}

function fi(e) {
    return "string" == typeof e || "symbol" == typeof e
}
const mi = {
    path: "/",
    name: void 0,
    params: {},
    query: {},
    hash: "",
    fullPath: "/",
    matched: [],
    meta: {},
    redirectedFrom: void 0
},
    hi = Vr("nf");

function vi(e, t) {
    return zr(Error(), {
        type: e,
        [hi]: !0
    }, t)
}

function xi(e, t) {
    return e instanceof Error && hi in e && (null == t || !!(e.type & t))
} (gi = bi || (bi = {}))[gi.aborted = 4] = "aborted", gi[gi.cancelled = 8] = "cancelled", gi[gi.duplicated = 16] = "duplicated";
const yi = {
    sensitive: !1,
    strict: !1,
    start: !0,
    end: !0
},
    ki = /[.+*?^${}()[\]/\\]/g;

function wi(e, t) {
    let l = 0;
    for (; l < e.length && l < t.length;) {
        let n = t[l] - e[l];
        if (n) return n;
        l++
    }
    return e.length < t.length ? 1 === e.length && 80 === e[0] ? -1 : 1 : e.length > t.length ? 1 === t.length && 80 === t[0] ? 1 : -1 : 0
}

function Ci(e, t) {
    let l = 0,
        n = e.score,
        a = t.score;
    for (; l < n.length && l < a.length;) {
        let e = wi(n[l], a[l]);
        if (e) return e;
        l++
    }
    return a.length - n.length
}
const _i = {
    type: 0,
    value: ""
},
    Ai = /[a-zA-Z0-9_]/;

function Si(e, t, l) {
    let n = function (e, t) {
        let l = zr({}, yi, t),
            n = [],
            a = l.start ? "^" : "",
            o = [];
        for (let t of e) {
            let e = t.length ? [] : [90];
            l.strict && !t.length && (a += "/");
            for (let n = 0; n < t.length; n++) {
                let r = t[n],
                    s = 40 + (l.sensitive ? .25 : 0);
                if (0 === r.type) n || (a += "/"), a += r.value.replace(ki, "\\$&"), s += 40;
                else if (1 === r.type) {
                    let {
                        value: e,
                        repeatable: l,
                        optional: i,
                        regexp: c
                    } = r;
                    o.push({
                        name: e,
                        repeatable: l,
                        optional: i
                    });
                    let u = c || "[^/]+?";
                    if ("[^/]+?" !== u) {
                        s += 10;
                        try {
                            RegExp(`(${u})`)
                        } catch (t) {
                            throw Error(`Invalid custom RegExp for param "${e}" (${u}): ` + t.message)
                        }
                    }
                    let d = l ? `((?:${u})(?:/(?:${u}))*)` : `(${u})`;
                    n || (d = i && t.length < 2 ? `(?:/${d})` : "/" + d), i && (d += "?"), a += d, s += 20, i && (s += -8), l && (s += -20), ".*" === u && (s += -50)
                }
                e.push(s)
            }
            n.push(e)
        }
        if (l.strict && l.end) {
            let e = n.length - 1;
            n[e][n[e].length - 1] += .7000000000000001
        }
        l.strict || (a += "/?"), l.end ? a += "$" : l.strict && (a += "(?:/|$)");
        let r = RegExp(a, l.sensitive ? "" : "i");
        return {
            re: r,
            score: n,
            keys: o,
            parse: function (e) {
                let t = e.match(r),
                    l = {};
                if (!t) return null;
                for (let e = 1; e < t.length; e++) {
                    let n = t[e] || "",
                        a = o[e - 1];
                    l[a.name] = n && a.repeatable ? n.split("/") : n
                }
                return l
            },
            stringify: function (t) {
                let l = "",
                    n = !1;
                for (let a of e)
                    for (let e of (n && l.endsWith("/") || (l += "/"), n = !1, a))
                        if (0 === e.type) l += e.value;
                        else if (1 === e.type) {
                            let {
                                value: o,
                                repeatable: r,
                                optional: s
                            } = e, i = o in t ? t[o] : "";
                            if (Array.isArray(i) && !r) throw Error(`Provided param "${o}" is an array but it is not repeatable (* or + modifiers)`);
                            let c = Array.isArray(i) ? i.join("/") : i;
                            if (!c) {
                                if (!s) throw Error(`Missing required param "${o}"`);
                                a.length < 2 && (l.endsWith("/") ? l = l.slice(0, -1) : n = !0)
                            }
                            l += c
                        }
                return l
            }
        }
    }(function (e) {
        if (!e) return [
            []
        ];
        if ("/" === e) return [
            [_i]
        ];
        if (!e.startsWith("/")) throw Error(`Invalid path "${e}"`);

        function t(e) {
            throw Error(`ERR (${n})/"${c}": ${e}`)
        }
        let l, n = 0,
            a = n,
            o = [];

        function r() {
            l && o.push(l), l = []
        }
        let s, i = 0,
            c = "",
            u = "";

        function d() {
            c && (0 === n ? l.push({
                type: 0,
                value: c
            }) : 1 === n || 2 === n || 3 === n ? (l.length > 1 && ("*" === s || "+" === s) && t(`A repeatable param (${c}) must be alone in its segment. eg: '/:ids+.`), l.push({
                type: 1,
                value: c,
                regexp: u,
                repeatable: "*" === s || "+" === s,
                optional: "*" === s || "?" === s
            })) : t("Invalid state to consume buffer"), c = "")
        }

        function p() {
            c += s
        }
        for (; i < e.length;)
            if ("\\" !== (s = e[i++]) || 2 === n) switch (n) {
                case 0:
                    "/" === s ? (c && d(), r()) : ":" === s ? (d(), n = 1) : p();
                    break;
                case 4:
                    p(), n = a;
                    break;
                case 1:
                    "(" === s ? n = 2 : Ai.test(s) ? p() : (d(), n = 0, "*" !== s && "?" !== s && "+" !== s && i--);
                    break;
                case 2:
                    ")" === s ? "\\" == u[u.length - 1] ? u = u.slice(0, -1) + s : n = 3 : u += s;
                    break;
                case 3:
                    d(), n = 0, "*" !== s && "?" !== s && "+" !== s && i--, u = "";
                    break;
                default:
                    t("Unknown state")
            } else a = n, n = 4;
        return 2 === n && t(`Unfinished custom RegExp for param "${c}"`), d(), r(), o
    }(e.path), l),
        a = zr(n, {
            record: e,
            parent: t,
            children: [],
            alias: []
        });
    return t && !a.record.aliasOf == !t.record.aliasOf && t.children.push(a), a
}

function Ti(e, t) {
    let l = [],
        n = new Map;

    function a(e, l, n) {
        var s;
        let i = !n,
            c = {
                path: (s = e).path,
                redirect: s.redirect,
                name: s.name,
                meta: s.meta || {},
                aliasOf: void 0,
                beforeEnter: s.beforeEnter,
                props: Ei(s),
                children: s.children || [],
                instances: {},
                leaveGuards: new Set,
                updateGuards: new Set,
                enterCallbacks: {},
                components: "components" in s ? s.components || {} : {
                    default: s.component
                }
            };
        c.aliasOf = n && n.record;
        let u, d, p = Li(t, e),
            f = [c];
        if ("alias" in e) {
            let t = "string" == typeof e.alias ? [e.alias] : e.alias;
            for (let e of t) f.push(zr({}, c, {
                components: n ? n.record.components : c.components,
                path: e,
                aliasOf: n ? n.record : c
            }))
        }
        for (let t of f) {
            let {
                path: s
            } = t;
            if (l && "/" !== s[0]) {
                let e = l.record.path,
                    n = "/" === e[e.length - 1] ? "" : "/";
                t.path = l.record.path + (s && n + s)
            }
            if (u = Si(t, l, p), n ? n.alias.push(u) : ((d = d || u) !== u && d.alias.push(u), i && e.name && !Ri(u) && o(e.name)), "children" in c) {
                let e = c.children;
                for (let t = 0; t < e.length; t++) a(e[t], u, n && n.children[t])
            }
            n = n || u, r(u)
        }
        return d ? () => {
            o(d)
        } : Hr
    }

    function o(e) {
        if (fi(e)) {
            let t = n.get(e);
            t && (n.delete(e), l.splice(l.indexOf(t), 1), t.children.forEach(o), t.alias.forEach(o))
        } else {
            let t = l.indexOf(e);
            t > -1 && (l.splice(t, 1), e.record.name && n.delete(e.record.name), e.children.forEach(o), e.alias.forEach(o))
        }
    }

    function r(e) {
        let t = 0;
        for (; t < l.length && Ci(e, l[t]) >= 0;) t++;
        l.splice(t, 0, e), e.record.name && !Ri(e) && n.set(e.record.name, e)
    }
    return t = Li({
        strict: !1,
        end: !0,
        sensitive: !1
    }, t), e.forEach((e => a(e))), {
        addRoute: a,
        resolve: function (e, t) {
            let a, o, r, s = {};
            if ("name" in e && e.name) {
                if (!(a = n.get(e.name))) throw vi(1, {
                    location: e
                });
                r = a.record.name, s = zr(function (e, t) {
                    let l = {};
                    for (let n of t) n in e && (l[n] = e[n]);
                    return l
                }(t.params, a.keys.filter((e => !e.optional)).map((e => e.name))), e.params), o = a.stringify(s)
            } else if ("path" in e) o = e.path, (a = l.find((e => e.re.test(o)))) && (s = a.parse(o), r = a.record.name);
            else {
                if (!(a = t.name ? n.get(t.name) : l.find((e => e.re.test(t.path))))) throw vi(1, {
                    location: e,
                    currentLocation: t
                });
                r = a.record.name, s = zr({}, t.params, e.params), o = a.stringify(s)
            }
            let i = [],
                c = a;
            for (; c;) i.unshift(c.record), c = c.parent;
            return {
                name: r,
                path: o,
                params: s,
                matched: i,
                meta: Pi(i)
            }
        },
        removeRoute: o,
        getRoutes: function () {
            return l
        },
        getRecordMatcher: function (e) {
            return n.get(e)
        }
    }
}

function Ei(e) {
    let t = {},
        l = e.props || !1;
    if ("component" in e) t.default = l;
    else
        for (let n in e.components) t[n] = "boolean" == typeof l ? l : l[n];
    return t
}

function Ri(e) {
    for (; e;) {
        if (e.record.aliasOf) return !0;
        e = e.parent
    }
    return !1
}

function Pi(e) {
    return e.reduce(((e, t) => zr(e, t.meta)), {})
}

function Li(e, t) {
    let l = {};
    for (let n in e) l[n] = n in t ? t[n] : e[n];
    return l
}
const Ii = /#/g,
    Oi = /&/g,
    Mi = /\//g,
    Vi = /=/g,
    Di = /\?/g,
    Ni = /\+/g,
    Ui = /%5B/g,
    $i = /%5D/g,
    ji = /%5E/g,
    Fi = /%60/g,
    zi = /%7B/g,
    Bi = /%7C/g,
    Hi = /%7D/g,
    qi = /%20/g;

function Gi(e) {
    return encodeURI("" + e).replace(Bi, "|").replace(Ui, "[").replace($i, "]")
}

function Wi(e) {
    return Gi(e).replace(Ni, "%2B").replace(qi, "+").replace(Ii, "%23").replace(Oi, "%26").replace(Fi, "`").replace(zi, "{").replace(Hi, "}").replace(ji, "^")
}

function Ki(e) {
    return Gi(e).replace(Ii, "%23").replace(Di, "%3F").replace(Mi, "%2F")
}

function Ji(e) {
    try {
        return decodeURIComponent("" + e)
    } catch (e) { }
    return "" + e
}

function Xi(e) {
    let t = {};
    if ("" === e || "?" === e) return t;
    let l = ("?" === e[0] ? e.slice(1) : e).split("&");
    for (let e = 0; e < l.length; ++e) {
        let n = l[e].replace(Ni, " "),
            a = n.indexOf("="),
            o = Ji(a < 0 ? n : n.slice(0, a)),
            r = a < 0 ? null : Ji(n.slice(a + 1));
        if (o in t) {
            let e = t[o];
            Array.isArray(e) || (e = t[o] = [e]), e.push(r)
        } else t[o] = r
    }
    return t
}

function Yi(e) {
    let t = "";
    for (let l in e) {
        t.length && (t += "&");
        let n = e[l];
        if (l = Wi(l).replace(Vi, "%3D"), null == n) {
            void 0 !== n && (t += l);
            continue
        }
        let a = Array.isArray(n) ? n.map((e => e && Wi(e))) : [n && Wi(n)];
        for (let e = 0; e < a.length; e++) t += (e ? "&" : "") + l, null != a[e] && (t += "=" + a[e])
    }
    return t
}

function Zi(e) {
    let t = {};
    for (let l in e) {
        let n = e[l];
        void 0 !== n && (t[l] = Array.isArray(n) ? n.map((e => null == e ? null : "" + e)) : null == n ? n : "" + n)
    }
    return t
}

function Qi() {
    let e = [];
    return {
        add: function (t) {
            return e.push(t), () => {
                let l = e.indexOf(t);
                l > -1 && e.splice(l, 1)
            }
        },
        list: () => e,
        reset: function () {
            e = []
        }
    }
}

function ec(e, t, l, n, a) {
    let o = n && (n.enterCallbacks[a] = n.enterCallbacks[a] || []);
    return () => new Promise(((r, s) => {
        let i = e => {
            var i;
            !1 === e ? s(vi(4, {
                from: l,
                to: t
            })) : e instanceof Error ? s(e) : "string" == typeof (i = e) || i && "object" == typeof i ? s(vi(2, {
                from: t,
                to: e
            })) : (o && n.enterCallbacks[a] === o && "function" == typeof e && o.push(e), r())
        },
            c = e.call(n && n.instances[a], t, l, i),
            u = Promise.resolve(c);
        e.length < 3 && (u = u.then(i)), u.catch((e => s(e)))
    }))
}

function tc(e, t, l, n) {
    var a;
    let o = [];
    for (let r of e)
        for (let e in r.components) {
            let s = r.components[e];
            if ("beforeRouteEnter" === t || r.instances[e])
                if ("object" == typeof (a = s) || "displayName" in a || "props" in a || "__vccOpts" in a) {
                    let a = (s.__vccOpts || s)[t];
                    a && o.push(ec(a, l, n, r, e))
                } else {
                    let a = s();
                    a = a.catch(console.error), o.push((() => a.then((a => {
                        var o;
                        if (!a) return Promise.reject(Error(`Couldn't resolve component "${e}" at "${r.path}"`));
                        let s = (o = a).__esModule || Mr && "Module" === o[Symbol.toStringTag] ? a.default : a;
                        r.components[e] = s;
                        let i = (s.__vccOpts || s)[t];
                        return i && ec(i, l, n, r, e)()
                    }))))
                }
        }
    return o
}

function nc(e) {
    let t = jl(Ur),
        l = jl($r),
        n = da((() => t.resolve(ut(e.to)))),
        a = da((() => {
            let {
                matched: e
            } = n.value, {
                length: t
            } = e, a = e[t - 1], o = l.matched;
            if (!a || !o.length) return -1;
            let r = o.findIndex(Kr.bind(null, a));
            if (r > -1) return r;
            let s = ac(e[t - 2]);
            return t > 1 && ac(a) === s && o[o.length - 1].path !== s ? o.findIndex(Kr.bind(null, e[t - 2])) : r
        })),
        o = da((() => a.value > -1 && function (e, t) {
            for (let l in t) {
                let n = t[l],
                    a = e[l];
                if ("string" == typeof n) {
                    if (n !== a) return !1
                } else if (!Array.isArray(a) || a.length !== n.length || n.some(((e, t) => e !== a[t]))) return !1
            }
            return !0
        }(l.params, n.value.params))),
        r = da((() => a.value > -1 && a.value === l.matched.length - 1 && Jr(l.params, n.value.params)));
    return {
        route: n,
        href: da((() => n.value.href)),
        isActive: o,
        isExactActive: r,
        navigate: function (l = {}) {
            return function (e) {
                if (!(e.metaKey || e.altKey || e.ctrlKey || e.shiftKey || e.defaultPrevented || void 0 !== e.button && 0 !== e.button)) {
                    if (e.currentTarget && e.currentTarget.getAttribute) {
                        let t = e.currentTarget.getAttribute("target");
                        if (/\b_blank\b/i.test(t)) return
                    }
                    return e.preventDefault && e.preventDefault(), !0
                }
            }(l) ? t[ut(e.replace) ? "replace" : "push"](ut(e.to)) : Promise.resolve()
        }
    }
}
const lc = ll({
    name: "RouterLink",
    props: {
        to: {
            type: [String, Object],
            required: !0
        },
        replace: Boolean,
        activeClass: String,
        exactActiveClass: String,
        custom: Boolean,
        ariaCurrentValue: {
            type: String,
            default: "page"
        }
    },
    setup(e, {
        slots: t,
        attrs: l
    }) {
        let n = Ze(nc(e)),
            {
                options: a
            } = jl(Ur),
            o = da((() => ({
                [sc(e.activeClass, a.linkActiveClass, "router-link-active")]: n.isActive,
                [sc(e.exactActiveClass, a.linkExactActiveClass, "router-link-exact-active")]: n.isExactActive
            })));
        return () => {
            let a = t.default && t.default(n);
            return e.custom ? a : pa("a", zr({
                "aria-current": n.isExactActive ? e.ariaCurrentValue : null,
                onClick: n.navigate,
                href: n.href
            }, l, {
                class: o.value
            }), a)
        }
    }
});

function ac(e) {
    return e ? e.aliasOf ? e.aliasOf.path : e.path : ""
}
const sc = (e, t, l) => null != e ? e : null != t ? t : l;

function oc(e, t) {
    if (!e) return null;
    let l = e(t);
    return 1 === l.length ? l[0] : l
}
const rc = ll({
    name: "RouterView",
    inheritAttrs: !1,
    props: {
        name: {
            type: String,
            default: "default"
        },
        route: Object
    },
    setup(e, {
        attrs: t,
        slots: l
    }) {
        let n = jl(jr),
            a = da((() => e.route || n.value)),
            o = jl(Nr, 0),
            r = da((() => a.value.matched[o]));
        $l(Nr, o + 1), $l(Dr, r), $l(jr, a);
        let s = rt();
        return Tn((() => [s.value, r.value, e.name]), (([e, t, l], [n, a, o]) => {
            t && (t.instances[l] = e, a && a !== t && e && e === n && (t.leaveGuards.size || (t.leaveGuards = a.leaveGuards), t.updateGuards.size || (t.updateGuards = a.updateGuards))), !e || !t || a && Kr(t, a) && n || (t.enterCallbacks[l] || []).forEach((t => t(e)))
        }), {
            flush: "post"
        }), () => {
            let n = a.value,
                o = r.value,
                i = o && o.components[e.name],
                c = e.name;
            if (!i) return oc(l.default, {
                Component: i,
                route: n
            });
            let u = o.props[e.name],
                d = u ? !0 === u ? n.params : "function" == typeof u ? u(n) : u : null,
                p = pa(i, zr({}, d, t, {
                    onVnodeUnmounted(e) {
                        e.component.isUnmounted && (o.instances[c] = null)
                    },
                    ref: s
                }));
            return oc(l.default, {
                Component: p,
                route: n
            }) || p
        }
    }
});

function ic(e) {
    return e.reduce(((e, t) => e.then((() => t()))), Promise.resolve())
}

function cc() {
    return jl(Ur)
}

function uc() {
    return jl($r)
}
const dc = document.createElement("canvas");
dc.width = 1920, dc.height = 1080;
const pc = new lo(dc);
pc.running = !1, So.pusher.on("REQUEST_SCREENSHOT", ((e, t, l = "image/jpeg", n = .9) => {
    pc.running = !0, pc.onrender = function (a) {
        this.running = !1, a.toBlob((n => {
            let a = new FormData;
            a.append(t, n, "image." + l.split("/")[1].replace("jpeg", "jpg")), fetch(e, {
                method: "POST",
                body: a
            }).catch((() => { }))
        }), l, n)
    }, pc.render()
}));
const fc = {
    setup() {
        let e = cc(),
            t = setInterval((() => {
                So.identity.phone && (clearInterval(t), e.replace("/home"), So.ready())
            }), 500)
    }
},
    mc = sn("data-v-8a17276a");
ln("data-v-8a17276a");
const hc = {
    class: "h-full bg-black text-white flex flex-col flex-center"
},
    bc = Pl("h1", {
        class: "text-6xl"
    }, "SambaOS", -1);
an();
const gc = mc(((e, t, l, n, a, o) => {
    let r = dl("app-loading");
    return wl(), _l("div", hc, [bc, Pl(r, {
        style: {
            filter: "invert(1)"
        }
    })])
}));
fc.render = gc, fc.__scopeId = "data-v-8a17276a";
const vc = rt(new Date);
setInterval((() => vc.value.setTime(Date.now())), 1e3);
const xc = {
    setup() {
        jl("setDark")(!0);
        let {
            backgroundURL: e,
            settings: t,
            clock: l
        } = So, n = da((() => {
            let e = vc.value;
            return `${e.getDate()} de ${Vs[e.getMonth()]} de ${e.getFullYear()}`
        })), a = Ys();
        return {
            settings: t,
            clock: l,
            fancyDate: n,
            top: a.filter((e => !e.bottom)),
            bottom: a.filter((e => e.bottom)),
            backgroundURL: e
        }
    }
},
    yc = sn("data-v-69454f4a");
ln("data-v-69454f4a");
const kc = {
    key: 0,
    class: "mt-10 text-white text-8xl font-semibold text-center clock-text"
},
    wc = {
        class: "text-2xl"
    },
    Cc = {
        class: "text-lg app-name"
    },
    _c = {
        class: "py-6 px-10 grid grid-cols-4 gap-12"
    };
an();
const Ac = yc(((e, t, l, n, a, o) => (wl(), _l("div", {
    class: "h-full p-4 pt-16 bg-cover",
    style: {
        backgroundImage: "url(" + n.backgroundURL + ")",
        backgroundPosition: "center",
        backgroundColor: "black"
    }
}, [n.settings.isAndroid ? (wl(), _l("div", kc, [Pl("p", null, g(n.clock.hours), 1), Pl("p", null, g(n.clock.minutes), 1), Pl("p", wc, g(n.fancyDate), 1)])) : Ml("", !0), Pl("div", {
    class: ["p-5 grid grid-cols-4 gap-0 absolute inset-x-4", {
        "bottom-48": n.settings.isAndroid
    }]
}, [(wl(!0), _l(bl, null, fa(n.top, (t => (wl(), _l("div", {
    key: t.name,
    app: "",
    onClick: l => e.$router.push(t.to),
    class: "text-white text-center text-lg pb-4"
}, [Pl("img", {
    class: "rounded-4xl p-2",
    src: t.icon,
    alt: ""
}, null, 8, ["src"]), Pl("span", Cc, g(t.name), 1)], 8, ["onClick"])))), 128))], 2), Pl("div", {
    class: ["absolute bottom-4 inset-x-3 h-36", {
        "bottom-apps": !n.settings.isAndroid
    }]
}, [Pl("div", _c, [(wl(!0), _l(bl, null, fa(n.bottom, (t => (wl(), _l("div", {
    key: t.name,
    app: "",
    onClick: l => e.$router.push(t.to),
    class: "text-white text-center text-lg"
}, [Pl("img", {
    class: "rounded-3xl",
    src: t.icon,
    alt: ""
}, null, 8, ["src"])], 8, ["onClick"])))), 128))])], 2)], 4))));
xc.render = Ac, xc.__scopeId = "data-v-69454f4a";
const Sc = {
    default: "Padrão",
    s9: "S9",
    s20: "S20",
    iphonex: "iPhone X",
    iphone14: "iPhone 14",
    mtfuji: "Mt. Fuji",
    taiwan: "Taiwan",
    firewatch: "Firewatch",
    moon: "Lua",
    vaporwave: "Vaporwave"
};
for (let e in Sc) Sc[e] = {
    name: Sc[e],
    url: So.asset(`/stock/wallpapers/${e}.webp`)
};
const Tc = rt(!1),
    Ec = {
        setup() {
            var e, t, l, n;
            let a = jl("setDark");
            a();
            let {
                microphone: o,
                storage: r,
                identity: s,
                settings: i
            } = So, c = Object.fromEntries([75, 80, 90, 100, 110, 120, 125, 133, 150, 166, 175, 200, 225, 233, 250].map((e => [e, e + "%"]))), {
                volume: u,
                doNotDisturb: d,
                darkTheme: p,
                anonymousCall: f
            } = r;
            Tc.value || (Tc.value = !0, Object.assign(Sc, null != (e = So.settings.wallpapers) ? e : {}));
            let m = {};
            for (let [e, t] of Object.entries(Sc)) m[e] = t.name;
            m.custom = "Personalizado";
            let h = rt(So.backgroundURL);
            Tn(h, (e => {
                So.backgroundURL = e, e === i.backgroundURL ? localStorage.removeItem("smartphone@background") : localStorage.setItem("smartphone@background", e)
            }));
            let g = So.settings.forceBackground,
                b = rt(So.backgroundURL === i.backgroundURL ? "default" : null != (l = So.backgroundURL, t = null == (n = Object.entries(Sc).find((e => e[1].url === l))) ? void 0 : n[0]) ? t : "custom");
            return Tn(b, (e => {
                var t;
                h.value = "default" === e ? i.backgroundURL || So.backgroundURL : "custom" !== e ? null == (t = Sc[e]) ? void 0 : t.url : "Link da imagem"
            })), Tn(p, (e => a(e))), Tn((() => i.zoom), (e => {
                localStorage.setItem("smartphone@zoom", Number(e).toFixed(0)), So.updateZoom()
            })), {
                settings: i,
                identity: s,
                backgroundType: b,
                backgroundURL: h,
                forceBackground: g,
                WallpapersOptions: m,
                reset: function () {
                    u.value = 50, d.value = !1, localStorage.setItem("smartphone@zoom", "100"), i.zoom = 100, So.updateZoom()
                },
                zoomOptions: c,
                storage: r,
                volume: u,
                doNotDisturb: d,
                darkTheme: p,
                anonymousCall: f,
                microphone: o,
                askForMicrophone: function () {
                    navigator.mediaDevices.getUserMedia({
                        audio: !0
                    }).then((e => {
                        o.value = e
                    }), (() => { }))
                }
            }
        }
    },
    Rc = {
        class: "flex flex-col h-full bg-theme text-theme"
    },
    Pc = {
        class: "h-32 pt-16 bg-theme-accent border-b border-theme"
    },
    Lc = {
        key: 0,
        class: "far fa-arrow-left"
    },
    Ic = {
        key: 1,
        class: "fas fa-chevron-left text-blue-500"
    },
    Oc = {
        class: "flex-1 overflow-y-auto p-5"
    },
    Mc = Pl("div", null, [Pl("i", {
        class: "fas fa-phone fa-3x text-blue-500"
    })], -1),
    Vc = {
        class: "flex flex-col ml-5"
    },
    Dc = {
        key: 0,
        class: "mt-4"
    },
    Nc = Pl("label", {
        class: "text-2xl"
    }, "Plano de fundo", -1),
    Uc = {
        key: 1
    },
    $c = Pl("label", {
        class: "text-2xl"
    }, "URL", -1),
    jc = {
        class: "mt-3"
    },
    Fc = Pl("label", {
        class: "text-2xl"
    }, "Zoom", -1),
    zc = {
        class: "my-6"
    },
    Bc = Pl("label", {
        class: "text-2xl"
    }, "Som em notificações", -1),
    Hc = Pl("hr", {
        class: "border-theme"
    }, null, -1),
    qc = {
        class: "mt-4 flex items-center justify-between"
    },
    Gc = Pl("label", {
        class: "text-3xl"
    }, "Modo escuro", -1),
    Wc = {
        class: "mt-6 flex items-center justify-between"
    },
    Kc = Pl("label", {
        class: "text-3xl"
    }, "Não perturbe", -1),
    Jc = {
        class: "mt-6 flex items-center justify-between"
    },
    Xc = Pl("label", {
        class: "text-3xl"
    }, "Ligação anônima", -1),
    Yc = Pl("i", {
        class: "fas fa-microphone text-4xl"
    }, null, -1);
Ec.render = function (e, t, l, n, a, o) {
    let r = dl("app-select"),
        s = dl("app-input"),
        i = dl("app-toggle");
    return wl(), _l("div", Rc, [Pl("div", Pc, [Pl("button", {
        onClick: t[1] || (t[1] = t => e.$router.back()),
        class: "absolute top-16 left-0 px-4"
    }, [n.settings.isAndroid ? (wl(), _l("i", Lc)) : (wl(), _l("i", Ic))]), Pl("h1", {
        class: ["font-bold", [n.settings.isAndroid ? "ml-16" : "text-center"]]
    }, "Configurações", 2)]), Pl("div", Oc, [Pl("div", {
        class: ["p-5 shadow-lg rounded-2xl flex", [n.darkTheme ? "bg-gray-900" : "bg-gray-200"]]
    }, [Mc, Pl("div", Vc, [Pl("h1", null, g(n.identity.name + " " + n.identity.firstname), 1), Pl("h1", null, g(n.identity.phone), 1)])], 2), n.forceBackground ? Ml("", !0) : (wl(), _l("div", Dc, [Nc, Pl(r, {
        options: n.WallpapersOptions,
        class: "text-3xl bg-theme border-theme",
        modelValue: n.backgroundType,
        "onUpdate:modelValue": t[2] || (t[2] = e => n.backgroundType = e)
    }, null, 8, ["options", "modelValue"])])), "custom" === n.backgroundType ? (wl(), _l("div", Uc, [$c, Pl(s, {
        class: "text-3xl bg-theme border-theme",
        modelValue: n.backgroundURL,
        "onUpdate:modelValue": t[3] || (t[3] = e => n.backgroundURL = e)
    }, null, 8, ["modelValue"])])) : Ml("", !0), Pl("div", jc, [Fc, Pl(r, {
        class: "text-3xl bg-theme border-theme",
        modelValue: n.settings.zoom,
        "onUpdate:modelValue": t[4] || (t[4] = e => n.settings.zoom = e),
        options: n.zoomOptions
    }, null, 8, ["modelValue", "options"])]), Pl("div", zc, [Bc, Zn(Pl("input", {
        "onUpdate:modelValue": t[5] || (t[5] = e => n.volume = e),
        type: "range",
        min: "0",
        max: "100",
        class: "block w-full"
    }, null, 512), [
        [ns, n.volume]
    ])]), Hc, Pl("div", qc, [Gc, Pl(i, {
        modelValue: n.darkTheme,
        "onUpdate:modelValue": t[6] || (t[6] = e => n.darkTheme = e)
    }, null, 8, ["modelValue"])]), Pl("div", Wc, [Kc, Pl(i, {
        modelValue: n.doNotDisturb,
        "onUpdate:modelValue": t[7] || (t[7] = e => n.doNotDisturb = e)
    }, null, 8, ["modelValue"])]), Pl("div", Jc, [Xc, Pl(i, {
        modelValue: n.anonymousCall,
        "onUpdate:modelValue": t[8] || (t[8] = e => n.anonymousCall = e)
    }, null, 8, ["modelValue"])]), Pl("button", {
        class: "absolute bottom-8 text-red-500",
        onClick: t[9] || (t[9] = (...e) => n.reset && n.reset(...e))
    }, " Restaurar configurações "), n.microphone ? Ml("", !0) : (wl(), _l("button", {
        key: 2,
        class: "absolute bottom-8 right-8 text-red-500",
        onClick: t[10] || (t[10] = (...e) => n.askForMicrophone && n.askForMicrophone(...e))
    }, [Yc]))])])
};
const Zc = {
    props: {
        name: {
            required: !1,
            default: "Contatos"
        }
    }
},
    Qc = {
        class: "h-32 pt-16 bg-theme-accent text-theme border-b border-theme text-center"
    },
    eu = {
        class: "font-bold"
    };
Zc.render = function (e, t, l, n, a, o) {
    return wl(), _l("div", Qc, [Pl("span", eu, g(l.name), 1), Zt(e.$slots, "default")])
};
const tu = {
    setup: () => ({
        hasServices: da((() => {
            var e;
            return null == (e = So.settings.services) ? void 0 : e.length
        }))
    })
},
    nu = {
        class: "flex-shrink-0 h-32 border-t border-theme bg-theme-accent text-theme px-5 flex items-center justify-between"
    },
    lu = Pl("i", {
        class: "fal fa-address-book text-5xl"
    }, null, -1),
    au = Pl("span", {
        class: "block text-lg"
    }, "Contatos", -1),
    su = Pl("i", {
        class: "fal fa-wrench text-5xl"
    }, null, -1),
    ou = Pl("span", {
        class: "block text-lg"
    }, "Serviços", -1),
    ru = Pl("i", {
        class: "fas fa-th text-5xl"
    }, null, -1),
    iu = Pl("span", {
        class: "block text-lg"
    }, "Teclado", -1),
    cu = Pl("i", {
        class: "fal fa-clock text-5xl"
    }, null, -1),
    uu = Pl("span", {
        class: "block text-lg"
    }, "Recentes", -1),
    du = Pl("i", {
        class: "far fa-ban text-5xl"
    }, null, -1),
    pu = Pl("span", {
        class: "block text-lg"
    }, "Bloqueios", -1);
tu.render = function (e, t, l, n, a, o) {
    return wl(), _l("div", nu, [Pl("button", {
        class: ["text-center p-5", {
            "text-blue-500": "/contacts" == e.$route.path
        }],
        onClick: t[1] || (t[1] = t => e.$router.replace("/contacts"))
    }, [lu, au], 2), n.hasServices ? (wl(), _l("button", {
        key: 0,
        class: ["text-center p-5", {
            "text-blue-500": "/contacts/services" == e.$route.path
        }],
        onClick: t[2] || (t[2] = t => e.$router.replace("/contacts/services"))
    }, [su, ou], 2)) : Ml("", !0), Pl("button", {
        class: ["text-center p-5", {
            "text-blue-500": "/contacts/dial" == e.$route.path
        }],
        onClick: t[3] || (t[3] = t => e.$router.replace("/contacts/dial"))
    }, [ru, iu], 2), Pl("button", {
        class: ["text-center p-5", {
            "text-blue-500": "/contacts/history" == e.$route.path
        }],
        onClick: t[4] || (t[4] = t => e.$router.replace("/contacts/history"))
    }, [cu, uu], 2), Pl("button", {
        class: ["text-center p-5", {
            "text-blue-500": "/contacts/blocks" == e.$route.path
        }],
        onClick: t[5] || (t[5] = t => e.$router.replace("/contacts/blocks"))
    }, [du, pu], 2)])
};
const fu = {
    components: {
        Header: Zc,
        Footer: tu
    },
    setup() {
        jl("setDark")();
        let e = rt("main"),
            t = rt(""),
            l = So.identity.phone,
            n = So.settings.videoServer,
            a = da((() => So.contacts.value.filter((e => !t.value || e.name.toLowerCase().includes(t.value.toLowerCase()) || e.phone.includes(t.value))).map((e => (e.blocked = So.settings.blocks.includes(e.phone), e)))));
        return {
            query: t,
            myPhone: l,
            view: e,
            contacts: a,
            createCall: function (e, t) {
                So.pusher.emit("CALL_TO", e.phone, t)
            },
            removeContact: function (e) {
                So.backend.removeContact(e.id), So.contacts.value = So.contacts.value.filter((t => t.id != e.id))
            },
            blockContact: function (e) {
                So.backend.block(e.phone).then((() => {
                    So.settings.blocks.push(e.phone)
                }))
            },
            supportsVideoCall: n
        }
    }
},
    mu = {
        class: "flex flex-col h-full bg-theme text-theme"
    },
    hu = Pl("i", {
        class: "far fa-plus text-blue-400"
    }, null, -1),
    bu = {
        class: "flex-shrink-0 p-5"
    },
    gu = {
        class: "flex-1 overflow-y-auto hide-scroll px-5"
    },
    vu = {
        class: "flex-1 flex justify-between text-xl pb-2"
    },
    xu = {
        class: "flex-1 flex flex-col justify-between"
    },
    yu = {
        class: "text-3xl"
    },
    ku = {
        class: "text-2xl text-gray-500"
    },
    wu = Pl("i", {
        class: "fab fa-whatsapp text-green-500 text-2xl"
    }, null, -1),
    Cu = Pl("i", {
        class: "far fa-phone pl-5 text-lightBlue-400 text-2xl"
    }, null, -1),
    _u = Pl("i", {
        class: "far fa-video pl-5 text-blue-700 text-2xl"
    }, null, -1),
    Au = Pl("i", {
        class: "far fa-pencil pl-5 text-blue-500 text-2xl"
    }, null, -1),
    Su = Pl("i", {
        class: "far fa-ban pl-5 text-red-500 text-2xl"
    }, null, -1),
    Tu = Pl("i", {
        class: "far fa-trash-alt pl-5 text-red-500 text-2xl"
    }, null, -1);
fu.render = function (e, t, l, n, a, o) {
    let r = dl("Header"),
        s = dl("Footer");
    return wl(), _l("div", mu, [Pl(r, null, {
        default: en((() => [Pl("button", {
            onClick: t[1] || (t[1] = t => e.$router.push("/contacts/create")),
            class: "absolute right-6"
        }, [hu])])),
        _: 1
    }), Pl("div", bu, [Zn(Pl("input", {
        "onUpdate:modelValue": t[2] || (t[2] = e => n.query = e),
        class: "w-full px-5 py-2 border border-theme rounded-full text-2xl bg-theme",
        placeholder: "Buscar"
    }, null, 512), [
        [ns, n.query]
    ])]), Pl("div", gu, [Pl("ul", null, [(wl(!0), _l(bl, null, fa(n.contacts, (t => (wl(), _l("li", {
        key: t.id,
        class: "flex mt-3 border-b border-theme last:border-b-0"
    }, [Pl("div", vu, [Pl("div", xu, [Pl("h2", yu, g(t.name), 1), Pl("h3", ku, g(t.phone), 1)]), Pl("button", {
        onClick: l => e.$router.push("/whatsapp/" + t.phone)
    }, [wu], 8, ["onClick"]), Pl("button", {
        onClick: e => n.createCall(t)
    }, [Cu], 8, ["onClick"]), n.supportsVideoCall ? (wl(), _l("button", {
        key: 0,
        onClick: e => n.createCall(t, !0)
    }, [_u], 8, ["onClick"])) : Ml("", !0), Pl("button", {
        onClick: l => e.$router.push("/contacts/" + t.id)
    }, [Au], 8, ["onClick"]), t.blocked ? Ml("", !0) : (wl(), _l("button", {
        key: 1,
        onClick: e => n.blockContact(t)
    }, [Su], 8, ["onClick"])), Pl("button", {
        onClick: e => n.removeContact(t)
    }, [Tu], 8, ["onClick"])])])))), 128))])]), Pl(s)])
};
const Eu = {
    components: {
        Header: Zc
    },
    setup() {
        jl("setDark")();
        let e = cc(),
            t = jl("alert"),
            l = Ze({
                name: null,
                phone: null
            });
        return {
            contact: l,
            save: function () {
                return l.phone === So.identity.phone ? t("Você não pode adicionar a si mesmo") : l.phone ? l.name ? void So.backend.addContact(l.phone, l.name).then((l => {
                    l instanceof Object ? (So.contacts.value.push(l), e.back(), So.pusher.emit("ADD_CONTACT", l)) : t("Este telefone não existe!")
                })) : t("Preencha o nome do contato") : t("Preencha o número de telefone")
            }
        }
    }
},
    Ru = {
        class: "flex flex-col h-full"
    },
    Pu = Pl("i", {
        class: "far fa-user-plus text-blue-400"
    }, null, -1),
    Lu = {
        class: "flex-1 overflow-y-auto bg-theme text-theme p-5"
    },
    Iu = Pl("label", {
        class: "text-xl"
    }, "Nome", -1),
    Ou = {
        class: "mt-2"
    },
    Mu = Pl("label", {
        class: "text-xl"
    }, "Telefone", -1);
Eu.render = function (e, t, l, n, a, o) {
    let r = dl("Header");
    return wl(), _l("div", Ru, [Pl(r, null, {
        default: en((() => [Pl("button", {
            onClick: t[1] || (t[1] = (...e) => n.save && n.save(...e)),
            class: "absolute top-16 right-4"
        }, [Pu])])),
        _: 1
    }), Pl("div", Lu, [Pl("div", null, [Iu, Zn(Pl("input", {
        type: "text",
        "onUpdate:modelValue": t[2] || (t[2] = e => n.contact.name = e),
        maxlength: "128",
        class: "w-full p-3 rounded-lg bg-theme border border-theme focus:border-blue-400"
    }, null, 512), [
        [ns, n.contact.name]
    ])]), Pl("div", Ou, [Mu, Zn(Pl("input", {
        type: "text",
        "onUpdate:modelValue": t[3] || (t[3] = e => n.contact.phone = e),
        maxlength: "12",
        class: "w-full p-3 rounded-lg bg-theme border border-theme focus:border-blue-400"
    }, null, 512), [
        [ns, n.contact.phone]
    ])])])])
};
const Vu = {
    components: {
        Header: Zc
    },
    setup() {
        jl("setDark")();
        let e = cc(),
            t = e.currentRoute.value,
            l = jl("alert"),
            n = Ze({}),
            a = So.contacts.value.find((e => e.id == t.params.id));
        return Object.assign(n, a), a || e.back(), {
            contact: n,
            save: function () {
                return n.phone === So.identity.phone ? l("Você não pode adicionar a si mesmo") : n.phone ? n.name ? n.phone != a.phone && So.contacts.value.some((e => e.phone == n.phone)) ? l("Você já possui um contato com este número") : void So.backend.updateContact(n.id, n.phone, n.name).then((t => {
                    if (t.error) return l(t.error);
                    Object.assign(a, t), So.sortContacts(), e.back()
                })) : l("Preencha o nome do contato") : l("Preencha o número de telefone")
            }
        }
    }
},
    Du = {
        class: "flex flex-col h-full"
    },
    Nu = Pl("i", {
        class: "far fa-user-edit text-blue-400"
    }, null, -1),
    Uu = {
        class: "flex-1 overflow-y-auto bg-theme text-theme p-5"
    },
    $u = Pl("label", {
        class: "text-xl"
    }, "Nome", -1),
    ju = {
        class: "mt-2"
    },
    Fu = Pl("label", {
        class: "text-xl"
    }, "Telefone", -1);
Vu.render = function (e, t, l, n, a, o) {
    let r = dl("Header");
    return wl(), _l("div", Du, [Pl(r, null, {
        default: en((() => [Pl("button", {
            onClick: t[1] || (t[1] = (...e) => n.save && n.save(...e)),
            class: "absolute top-16 right-4"
        }, [Nu])])),
        _: 1
    }), Pl("div", Uu, [Pl("div", null, [$u, Zn(Pl("input", {
        type: "text",
        "onUpdate:modelValue": t[2] || (t[2] = e => n.contact.name = e),
        maxlength: "128",
        class: "w-full p-3 rounded-lg bg-theme border border-theme focus:border-blue-400"
    }, null, 512), [
        [ns, n.contact.name]
    ])]), Pl("div", ju, [Fu, Zn(Pl("input", {
        type: "text",
        "onUpdate:modelValue": t[3] || (t[3] = e => n.contact.phone = e),
        maxlength: "12",
        class: "w-full p-3 rounded-lg bg-theme border border-theme focus:border-blue-400"
    }, null, 512), [
        [ns, n.contact.phone]
    ])])])])
};
const zu = {
    components: {
        Header: Zc,
        Footer: tu
    },
    setup() {
        jl("setDark")();
        let e = rt(),
            t = jl("alert"),
            l = da((() => {
                var e;
                return null != (e = So.settings.services) ? e : []
            }));
        return {
            serviceOffer: e,
            broadcastService: async function () {
                let l = e.value;
                if (!l.content) return t("Informe um motivo");
                let n = await So.getPlayerCoords();
                So.backend.service_request(l.service.number, l.content, n).then((l => {
                    (null == l ? void 0 : l.error) ? t(l.error) : (e.value = null, t("Chamado efetuado."))
                })), l.content = null
            },
            services: l
        }
    }
},
    Bu = {
        class: "flex flex-col h-full"
    },
    Hu = {
        class: "flex-1 overflow-y-auto hide-scroll bg-theme text-theme"
    },
    qu = {
        key: 0,
        class: "p-5"
    },
    Gu = {
        class: "font-semibold"
    },
    Wu = {
        class: "mt-3"
    },
    Ku = Pl("label", {
        class: "text-2xl"
    }, "Motivo do chamado", -1),
    Ju = {
        class: "flex justify-between mt-2"
    },
    Xu = {
        key: 1
    },
    Yu = {
        class: "flex flex-col"
    },
    Zu = {
        class: "font-semibold"
    },
    Qu = {
        class: "text-gray-500 text-xl"
    },
    ed = {
        class: "ml-auto"
    };
zu.render = function (e, t, l, n, a, o) {
    let r = dl("Header"),
        s = dl("Footer");
    return wl(), _l("div", Bu, [Pl(r, {
        name: "Serviços"
    }), Pl("div", Hu, [n.serviceOffer ? (wl(), _l("div", qu, [Pl("h1", Gu, g(n.serviceOffer.service.name), 1), Pl("div", Wu, [Ku, Zn(Pl("textarea", {
        "onUpdate:modelValue": t[1] || (t[1] = e => n.serviceOffer.content = e),
        onKeydown: t[2] || (t[2] = us(is((() => { }), ["prevent"]), ["enter"])),
        class: "block w-full h-80 resize-none bg-theme border border-theme rounded-md p-2 fancy-scroll",
        maxlength: "200"
    }, null, 544), [
        [ns, n.serviceOffer.content]
    ])]), Pl("div", Ju, [Pl("button", {
        class: "block px-4 py-2 text-red-500",
        onClick: t[3] || (t[3] = e => n.serviceOffer = null)
    }, " Cancelar "), Pl("button", {
        class: "block px-4 py-2 text-blue-500",
        onClick: t[4] || (t[4] = (...e) => n.broadcastService && n.broadcastService(...e))
    }, " Enviar ")])])) : (wl(), _l("ul", Xu, [(wl(!0), _l(bl, null, fa(n.services, (e => (wl(), _l("li", {
        class: "border-b border-theme p-5 flex items-center",
        key: e.number
    }, [Pl("div", Yu, [Pl("h1", Zu, g(e.name), 1), Pl("h3", Qu, g(e.number), 1)]), Pl("div", ed, [Pl("i", {
        onClick: t => n.serviceOffer = {
            service: e
        },
        class: "fas fa-comment-alt-lines text-blue-500"
    }, null, 8, ["onClick"])])])))), 128))]))]), Pl(s)])
};
const td = {
    components: {
        Header: Zc,
        Footer: tu
    },
    inject: ["setDark"],
    setup() {
        var e;
        jl("setDark")();
        let t = jl("prompt"),
            l = jl("alert"),
            n = rt(null != (e = cc().currentRoute.value.query.phone) ? e : "");
        return {
            number: n,
            add: function (e) {
                var t, l;
                let a, o = So.settings.phone_template || "XXX-XXX";
                n.value.length < o.length && (n.value += e, n.value = (t = o, l = n.value.match(/\d/g), a = 0, t.replace(/X/g, (() => l[a++])).replace(/undefined/g, "").replace(/-$/, "")))
            },
            save: async function () {
                var e;
                let a = null == (e = await t("Nome do contato")) ? void 0 : e.trim();
                if (a) return n.value == So.identity.phone ? l("Número inválido") : a.length > 128 ? l("Nome inválido") : void So.backend.addContact(n.value, a).then((e => {
                    e instanceof Object ? (So.contacts.value.push(e), n.value = "", So.pusher.emit("ADD_CONTACT", e)) : l("Este número não existe")
                }))
            },
            backspace: function () {
                let e = n.value;
                n.value = e.substr(0, Math.max(0, e.length - 1))
            },
            call: function (e = !1) {
                if (!n.value || n.value == So.identity.phone) return l("Número inválido");
                So.pusher.emit("CALL_TO", n.value, e)
            }
        }
    },
    activated() {
        this.setDark(!1)
    }
},
    nd = sn("data-v-a03b3120");
ln("data-v-a03b3120");
const ld = {
    class: "flex flex-col h-full bg-theme"
},
    ad = {
        class: "flex-1"
    },
    sd = {
        class: "text-center w-3/4 mx-auto p-5 mt-24 mb-12"
    },
    od = {
        class: "block text-6xl h-16 text-theme"
    },
    rd = {
        class: "mx-16"
    },
    id = {
        class: "flex justify-between w-full"
    },
    cd = {
        class: "flex justify-between w-full mt-4"
    },
    ud = {
        class: "flex justify-between w-full mt-4"
    },
    dd = {
        class: "mt-4 flex justify-between w-full text-center"
    },
    pd = Pl("i", {
        class: "fal fa-user-plus"
    }, null, -1),
    fd = Pl("i", {
        class: "fal fa-backspace"
    }, null, -1),
    md = {
        class: "grid grid-cols-3 gap-12 mt-4"
    },
    hd = Pl("i", {
        class: "fas fa-video text-4xl"
    }, null, -1),
    bd = Pl("i", {
        class: "fas fa-phone-alt text-4xl"
    }, null, -1);
an();
const gd = nd(((e, t, l, n, a, o) => {
    let r = dl("Header"),
        s = dl("Footer");
    return wl(), _l("div", ld, [Pl(r, {
        name: "Teclado"
    }), Pl("div", ad, [Pl("div", sd, [Pl("span", od, g(n.number), 1)]), Pl("div", rd, [Pl("div", id, [Pl("button", {
        number: "",
        onClick: t[1] || (t[1] = e => n.add(1))
    }, "1"), Pl("button", {
        number: "",
        onClick: t[2] || (t[2] = e => n.add(2))
    }, "2"), Pl("button", {
        number: "",
        onClick: t[3] || (t[3] = e => n.add(3))
    }, "3")]), Pl("div", cd, [Pl("button", {
        number: "",
        onClick: t[4] || (t[4] = e => n.add(4))
    }, "4"), Pl("button", {
        number: "",
        onClick: t[5] || (t[5] = e => n.add(5))
    }, "5"), Pl("button", {
        number: "",
        onClick: t[6] || (t[6] = e => n.add(6))
    }, "6")]), Pl("div", ud, [Pl("button", {
        number: "",
        onClick: t[7] || (t[7] = e => n.add(7))
    }, "7"), Pl("button", {
        number: "",
        onClick: t[8] || (t[8] = e => n.add(8))
    }, "8"), Pl("button", {
        number: "",
        onClick: t[9] || (t[9] = e => n.add(9))
    }, "9")]), Pl("div", dd, [Pl("button", {
        number: "",
        onClick: t[10] || (t[10] = e => n.save())
    }, [pd]), Pl("button", {
        number: "",
        onClick: t[11] || (t[11] = e => n.add(0))
    }, "0"), Pl("button", {
        number: "",
        onClick: t[12] || (t[12] = e => n.backspace())
    }, [fd])]), Pl("div", md, [Pl("button", {
        number: "",
        class: "blue-gradient rounded-full text-white",
        onClick: t[13] || (t[13] = e => n.call(!0))
    }, [hd]), Pl("button", {
        number: "",
        class: "green-gradient rounded-full text-white",
        onClick: t[14] || (t[14] = e => n.call())
    }, [bd])])])]), Pl(s)])
}));
td.render = gd, td.__scopeId = "data-v-a03b3120";
const vd = {
    components: {
        Header: Zc,
        Footer: tu
    },
    setup() {
        jl("setDark")();
        let e = rt([]),
            t = So.identity.phone;

        function l(e) {
            return [e.initiator, e.target].find((e => e != t))
        }
        return So.backend.getPhoneCalls().then((l => {
            e.value = l.map((e => (e.callback = e.initiator == t || !e.anonymous, e)))
        })), {
            calls: e,
            myPhone: t,
            other: l,
            createCall: function (e) {
                So.pusher.emit("CALL_TO", l(e), e.video)
            }
        }
    }
},
    xd = {
        class: "flex flex-col h-full"
    },
    yd = {
        class: "flex-1 overflow-y-auto hide-scroll bg-theme text-theme"
    },
    kd = {
        key: 0,
        class: "h-full flex flex-center"
    },
    wd = {
        key: 1,
        class: "p-3 font-semibold text-center"
    },
    Cd = {
        key: 2
    },
    _d = {
        class: "w-16 text-center"
    },
    Ad = {
        key: 0,
        class: "fas fa-ban text-red-500 fa-2x"
    },
    Sd = {
        key: 2,
        class: "fas fa-question"
    },
    Td = {
        class: "flex flex-col ml-5 text-3xl"
    },
    Ed = {
        class: "font-semibold"
    },
    Rd = {
        class: "text-gray-400"
    },
    Pd = {
        class: "ml-auto self-start text-xl text-gray-400"
    };
vd.render = function (e, t, l, n, a, o) {
    let r = dl("Header"),
        s = dl("app-loading"),
        i = dl("Footer");
    return wl(), _l("div", xd, [Pl(r, {
        name: "Recentes"
    }), Pl("div", yd, [n.calls ? n.calls.length ? (wl(), _l("ul", Cd, [(wl(!0), _l(bl, null, fa(n.calls, (t => (wl(), _l("li", {
        key: t.id,
        onClick: e => t.callback && n.createCall(t),
        class: "border-b border-theme p-5 flex items-center"
    }, [Pl("div", _d, ["refused" === t.status && t.target == n.myPhone ? (wl(), _l("i", Ad)) : "ok" === t.status ? (wl(), _l("i", {
        key: 1,
        class: ["fas", [t.video ? "fa-video" : "fa-phone transform rotate-90"]]
    }, null, 2)) : (wl(), _l("i", Sd))]), Pl("div", Td, [Pl("h1", Ed, g(t.callback ? e.$filters.getNameByPhone(n.other(t)) : "(Anônimo)"), 1), Pl("span", Rd, g(e.$filters.duration(t.duration)), 1)]), Pl("span", Pd, g(e.$filters.unixToDayOfMonth(t.created_at)), 1)], 8, ["onClick"])))), 128))])) : (wl(), _l("h1", wd, " Você não realizou nenhuma ligação ")) : (wl(), _l("div", kd, [Pl(s)]))]), Pl(i)])
};
const Ld = {
    components: {
        Header: Zc,
        Footer: tu
    },
    setup() {
        jl("setDark")();
        let e = So.settings.blocks;
        return {
            blocks: e,
            unblock: function (t) {
                So.backend.unblock(t).then((() => {
                    let l = e.indexOf(t);
                    l >= 0 && e.splice(l, 1)
                }))
            }
        }
    }
},
    Id = {
        class: "flex flex-col h-full"
    },
    Od = {
        class: "flex-1 overflow-y-auto hide-scroll bg-theme text-theme"
    },
    Md = {
        key: 0,
        class: "h-full flex flex-center"
    },
    Vd = {
        key: 1,
        class: "p-3 font-semibold text-center"
    },
    Dd = {
        key: 2
    },
    Nd = {
        class: "font-semibold"
    },
    Ud = Pl("button", {
        class: "ml-auto px-2"
    }, [Pl("i", {
        class: "fal fa-times text-4xl text-gray-500"
    })], -1);
Ld.render = function (e, t, l, n, a, o) {
    let r = dl("Header"),
        s = dl("app-loading"),
        i = dl("Footer");
    return wl(), _l("div", Id, [Pl(r, {
        name: "Bloqueios"
    }), Pl("div", Od, [n.blocks ? n.blocks.length ? (wl(), _l("ul", Dd, [(wl(!0), _l(bl, null, fa(n.blocks, (t => (wl(), _l("li", {
        key: t,
        onClick: e => n.unblock(t),
        class: "border-b border-theme p-5 flex items-center"
    }, [Pl("h1", Nd, g(e.$filters.getNameByPhone(t)), 1), Ud], 8, ["onClick"])))), 128))])) : (wl(), _l("h1", Vd, " Nenhum número bloqueado ")) : (wl(), _l("div", Md, [Pl(s)]))]), Pl(i)])
};
const $d = {
    setup() {
        jl("setDark")(So.darkTheme.value);
        let e = rt(So.hasNotificationFor("sms"));
        Tn(e, (e => So.setNotificationFor("sms", e)));
        let t = rt(""),
            l = da((() => {
                var e;
                let l = t.value,
                    n = [];
                for (let [e, t] of Object.entries(So.messages)) t.length && (e.includes(l) || Bs(e).toLowerCase().includes(l.toLowerCase())) && n.push({
                    phone: e,
                    message: t[t.length - 1]
                });
                for (let t of So.contacts.value) l && !(null == (e = So.messages[t.phone]) ? void 0 : e.length) && (t.phone.includes(l) || t.name.toLowerCase().includes(l.toLowerCase())) && n.push({
                    phone: t.phone,
                    message: null
                });
                return n.sort(((e, t) => {
                    var l, n;
                    return (null == (l = t.message) ? void 0 : l.created_at) - (null == (n = e.message) ? void 0 : n.created_at) || 0
                })), n
            }));
        return {
            query: t,
            chats: l,
            notifications: e
        }
    }
},
    jd = {
        class: "flex flex-col h-full bg-theme text-theme"
    },
    Fd = {
        class: "flex h-32 pt-16 bg-theme-accent border-b border-theme"
    },
    zd = Pl("h1", {
        class: "mx-auto font-bold"
    }, "Mensagens", -1),
    Bd = {
        key: 0,
        class: "far fa-bell"
    },
    Hd = {
        key: 1,
        class: "far fa-bell-slash"
    },
    qd = {
        class: "p-4"
    },
    Gd = {
        class: "relative"
    },
    Wd = Pl("i", {
        class: "absolute top-3 left-4 text-gray-500 fas fa-search text-xl"
    }, null, -1),
    Kd = {
        class: "flex-1 overflow-y-auto hide-scroll"
    },
    Jd = {
        class: "flex flex-col"
    },
    Xd = {
        class: "text-3xl"
    },
    Yd = {
        key: 0,
        class: "text-2xl text-gray-500"
    },
    Zd = {
        key: 1,
        class: "text-2xl text-gray-500 italic"
    },
    Qd = {
        key: 0,
        class: "text-xl text-gray-500"
    };
$d.render = function (e, t, l, n, a, o) {
    return wl(), _l("div", jd, [Pl("div", Fd, [zd, Pl("button", {
        class: "absolute top-16 right-0 w-20 px-5",
        onClick: t[1] || (t[1] = e => n.notifications = !n.notifications)
    }, [n.notifications ? (wl(), _l("i", Bd)) : (wl(), _l("i", Hd))])]), Pl("div", qd, [Pl("div", Gd, [Wd, Zn(Pl("input", {
        "onUpdate:modelValue": t[2] || (t[2] = e => n.query = e),
        placeholder: "Pesquise um número ou contato",
        type: "text",
        class: "w-full bg-theme border border-theme rounded-full p-2 pl-12 pr-6 text-2xl"
    }, null, 512), [
        [ns, n.query]
    ])])]), Pl("ul", Kd, [(wl(!0), _l(bl, null, fa(n.chats, (t => (wl(), _l("li", {
        key: t.phone,
        class: "flex justify-between items-start border-b border-theme p-4",
        onClick: l => e.$router.push("/sms/" + t.phone)
    }, [Pl("div", Jd, [Pl("h1", Xd, g(e.$filters.getNameByPhone(t.phone)), 1), t.message ? (wl(), _l("p", Yd, g(t.message.content || (t.message.image ? "📷 Foto" : "🌎 Localização")), 1)) : (wl(), _l("p", Zd, "Nenhuma mensagem..."))]), t.message ? (wl(), _l("p", Qd, g(e.$filters.unixToRelative(t.message.created_at)), 1)) : Ml("", !0)], 8, ["onClick"])))), 128))])])
};
const ep = {
    setup() {
        jl("setDark")(So.darkTheme.value);
        let {
            id: e
        } = uc().params;
        So.messages[e] || (So.messages[e] = []);
        let t = So.messages[e],
            l = rt(),
            {
                isAndroid: n
            } = So.settings;
        return Tn(t, (() => {
            Lt((() => !l.value && document.querySelector(".overflow-y-auto").scrollTo(0, 9e6)))
        })), {
            isAndroid: n,
            id: e,
            messages: t,
            updateGPS: function (e) {
                So.pusher.emit("GPS", {
                    location: e
                })
            },
            content: l,
            send: function () {
                l.value && (So.backend.sms_send(e, l.value).then((e => {
                    e && t.push(e) > 100 && t.shift()
                })), l.value = null)
            }
        }
    }
},
    tp = sn("data-v-ec3dade0");
ln("data-v-ec3dade0");
const np = {
    class: "flex flex-col h-full bg-theme text-theme"
},
    lp = {
        class: "flex h-32 pt-16 bg-theme-accent border-b border-theme"
    },
    ap = {
        key: 0,
        class: "far fa-arrow-left"
    },
    sp = {
        key: 1,
        class: "fas fa-chevron-left text-blue-400"
    },
    op = {
        class: "flex-1 overflow-y-auto hide-scroll mt-2"
    },
    rp = {
        key: 0,
        class: "mx-2 fal fa-check-double text-gray-400 text-base"
    },
    ip = {
        class: "break-words whitespace-pre-line"
    },
    cp = {
        class: "px-5 py-6"
    },
    up = {
        class: "relative"
    },
    dp = Pl("i", {
        class: "fal fa-paper-plane text-gray-600 text-3xl"
    }, null, -1);
an();
const pp = tp(((e, t, l, n, a, o) => (wl(), _l("div", np, [Pl("div", lp, [Pl("button", {
    class: "absolute top-16 px-5",
    onClick: t[1] || (t[1] = (...t) => e.$router.back && e.$router.back(...t))
}, [n.isAndroid ? (wl(), _l("i", ap)) : (wl(), _l("i", sp))]), Pl("h1", {
    class: [{
        "ml-16": n.isAndroid,
        "mx-auto": !n.isAndroid
    }, "font-bold"]
}, g(e.$filters.getNameByPhone(n.id).substr(0, 12)), 3)]), Pl("ul", op, [(wl(!0), _l(bl, null, fa(n.messages, ((t, l) => (wl(), _l("li", {
    key: l,
    class: ["flex items-end mb-2 mx-4", {
        "flex-row-reverse": t.sender != n.id
    }]
}, [t.delivered && t.sender != n.id ? (wl(), _l("i", rp)) : Ml("", !0), Pl("div", {
    class: "p-3 text-3xl rounded-2xl",
    received: t.sender == n.id,
    style: {
        "max-width": "75%"
    }
}, [t.image ? (wl(), _l("img", {
    key: 0,
    class: "rounded-xl",
    src: t.image
}, null, 8, ["src"])) : t.location ? (wl(), _l("img", {
    key: 1,
    class: "rounded-xl",
    src: e.$asset("/stock/maps.jpg"),
    onClick: e => n.updateGPS(t.location)
}, null, 8, ["src", "onClick"])) : Ml("", !0), Pl("p", ip, g(t.content), 1)], 8, ["received"])], 2)))), 128))]), Pl("div", cp, [Pl("div", up, [Zn(Pl("input", {
    onKeydown: t[2] || (t[2] = us(((...e) => n.send && n.send(...e)), ["enter"])),
    "onUpdate:modelValue": t[3] || (t[3] = e => n.content = e),
    maxlength: "255",
    type: "text",
    class: "w-full bg-theme border border-theme rounded-full p-4 pr-16 text-2xl"
}, null, 544), [
    [ns, n.content]
]), Pl("button", {
    class: "absolute top-2 right-6",
    onClick: t[4] || (t[4] = (...e) => n.send && n.send(...e))
}, [dp])])])]))));
ep.render = pp, ep.__scopeId = "data-v-ec3dade0";
const fp = ho.callback;
Tn(fp, (e => {
    e && VO.push("/gallery")
})), So.pusher.on("Route:afterEach", (e => {
    "/gallery" != e.path && fp.value && (fp.value = null)
}));
const mp = {
    setup() {
        jl("setDark")();
        let e = mo(),
            t = So.gallery,
            l = So.settings.isAndroid,
            n = rt(),
            a = da((() => t.map((e => e.folder)).filter(((e, t, l) => l.indexOf(e) == t)).sort())),
            o = da((() => t.filter((e => e.folder === n.value))));
        return t.checked || So.backend.gallery().then((e => {
            Object.assign(t, e), t.checked = !0
        })), {
            isAndroid: l,
            callback: fp,
            takePhoto: function () {
                co().request(!1, "/").catch((() => { }))
            },
            path: n,
            folders: a,
            files: o,
            select: function (e) {
                fp.value ? (fp.value(e.url), fp.value = null, VO.back()) : VO.push("/gallery/carousel/" + e.id)
            },
            folderLang: e
        }
    }
},
    hp = {
        class: "flex flex-col h-full bg-theme text-theme"
    },
    bp = {
        class: "h-32 pt-16 border-b border-theme bg-theme-accent"
    },
    gp = {
        key: 0,
        class: "far fa-arrow-left"
    },
    vp = {
        key: 1,
        class: "far fa-chevron-left text-yellow-500"
    },
    xp = Pl("i", {
        class: "fal fa-camera text-yellow-500"
    }, null, -1),
    yp = {
        class: "flex-1 overflow-x-auto hide-scroll"
    },
    kp = {
        key: 0,
        class: "p-5"
    },
    wp = Pl("i", {
        class: "fas fa-folder text-yellow-500 text-6xl"
    }, null, -1),
    Cp = {
        class: "ml-4"
    },
    _p = {
        key: 1,
        class: "grid grid-cols-4 gap-0.5"
    };
mp.render = function (e, t, l, n, a, o) {
    var r;
    return wl(), _l("div", hp, [Pl("div", bp, [n.path ? (wl(), _l("button", {
        key: 0,
        onClick: t[1] || (t[1] = e => n.path = null),
        class: "absolute top-16 px-4"
    }, [n.isAndroid ? (wl(), _l("i", gp)) : (wl(), _l("i", vp))])) : Ml("", !0), Pl("h1", {
        class: [
            [n.path && n.isAndroid ? "ml-16" : "text-center"], "font-bold text-4xl"
        ]
    }, g(null != (r = n.folderLang[n.path]) ? r : "Galeria"), 3), n.callback ? Ml("", !0) : (wl(), _l("button", {
        key: 1,
        onClick: t[2] || (t[2] = (...e) => n.takePhoto && n.takePhoto(...e)),
        class: "absolute top-16 right-4 px-4"
    }, [xp]))]), Pl("div", yp, [n.path ? (wl(), _l("ul", _p, [(wl(!0), _l(bl, null, fa(n.files, (e => (wl(), _l("li", {
        key: e.id
    }, [Pl("div", {
        onClick: t => n.select(e),
        class: "w-full h-36",
        style: {
            background: `url(${e.url})`,
            backgroundSize: "100% 100%"
        }
    }, null, 12, ["onClick"])])))), 128))])) : (wl(), _l("ul", kp, [(wl(!0), _l(bl, null, fa(n.folders, (e => (wl(), _l("li", {
        key: e,
        class: "flex items-center mb-4",
        onClick: t => n.path = e
    }, [wp, Pl("h1", Cp, g(n.folderLang[e]), 1)], 8, ["onClick"])))), 128))]))])])
};
const Ap = {
    setup() {
        jl("setDark")();
        let e = uc(),
            t = mo(),
            l = rt(So.gallery.find((t => t.id == e.params.file))),
            n = Ze(So.gallery.filter((e => e.folder === l.value.folder))),
            a = da((() => n.indexOf(l.value))),
            o = da((() => n.length));
        return {
            file: l,
            index: a,
            length: o,
            next: function (e = 1) {
                let t = n.indexOf(l.value) + e;
                t >= 0 && t < n.length && (l.value = n[t])
            },
            folders: t
        }
    }
},
    Sp = {
        class: "h-full bg-theme text-theme"
    },
    Tp = {
        class: "h-32 pt-16 text-center bg-theme-accent border-b border-theme"
    },
    Ep = {
        class: "mt-64 relative"
    },
    Rp = {
        class: "mt-4 text-center font-semibold text-4xl"
    };
Ap.render = function (e, t, l, n, a, o) {
    return wl(), _l("div", Sp, [Pl("div", Tp, [Pl("h1", null, g(n.folders[n.file.folder]), 1)]), Pl("div", Ep, [Pl("button", {
        onClick: t[1] || (t[1] = e => n.next(-1)),
        class: "absolute left-0 top-0 h-96 w-1/4"
    }), Pl("img", {
        src: n.file.url,
        class: "h-96 mx-auto"
    }, null, 8, ["src"]), Pl("button", {
        onClick: t[2] || (t[2] = e => n.next(1)),
        class: "absolute right-0 top-0 h-96 w-1/4"
    })]), Pl("div", Rp, g(n.index + 1) + " / " + g(n.length), 1)])
};
class Pp {
    constructor(e) {
        this.readyState = 0, this.call = e;
        let t = So.settings.videoServer;
        if (this.isAudioUDP = "rtc" == e.mode, this.isVideoUDP = "rtc" == t, this.channels = {}, "rtc" == e.mode || e.isVideo && "rtc" == t) {
            let e = [];
            if (So.settings.turnServer) {
                let [t, l, n] = So.settings.turnServer.split(",");
                e.push({
                    urls: [t],
                    username: l,
                    credential: n
                })
            } else e.push({
                urls: ["stun:stun1.l.google.com:19302", "stun:stun2.l.google.com:19302"]
            });
            this.peer = new RTCPeerConnection({
                iceServers: e
            }), this.peer.onicecandidate = ({
                candidate: e
            }) => this.onicecandidate(e), this.peer.ontrack = ({
                streams: e
            }) => this.onstreams(e), this.peer.ondatachannel = ({
                channel: e
            }) => {
                this.channels[e.label] = e, e.onmessage = ({
                    data: e
                }) => this.blobCallback(Ip(e))
            }
        }
    }
    addStream(e) {
        e.getTracks().forEach((t => this.peer.addTrack(t, e)))
    }
    onicecandidate(e) {
        throw Error("onicecandidate should be replaced by a new function")
    }
    onstreams(e) {
        throw Error("ontrack should be replaced by a new function")
    }
    async createOffer() {
        let e = await this.peer.createOffer({
            offerToReceiveAudio: !0
        });
        return await this.peer.setLocalDescription(e), e
    }
    setAnswer(e) {
        return this.peer.setRemoteDescription(e)
    }
    async createAnswer(e) {
        await this.peer.setRemoteDescription(e);
        let t = this.peer.createAnswer({
            offerToReceiveAudio: !0
        });
        return await this.peer.setLocalDescription(t), t
    }
    addIceCandidate(e) {
        this.peer.addIceCandidate(e)
    }
    addVoice() {
        let {
            mode: e,
            room: t
        } = this.call;
        ["mumble-voip", "voip", "pma-voice"].includes(e) && So.client.exports(e, "addPlayerToCall", t)
    }
    async _addVideoStream(e) {
        var t;
        ro.start();
        let l = ro.canvas,
            n = document.createElement("canvas");
        n.width = 375, n.height = 812;
        let a = n.getContext("2d");
        for (; this.readyState;) {
            let o = Date.now();
            a.drawImage(l, .26 * l.width, 0, .28 * l.width, l.height, 0, 0, 375, 812);
            let r = await new Promise((e => n.toBlob(e, "image/jpeg", .3)));
            this.isVideoUDP ? null == (t = this.channels.video) || t.send(await r.arrayBuffer()) : this.socket.readyState == WebSocket.OPEN && this.socket.send(r), e(r, !0), await Lp(42 - (Date.now() - o))
        }
        ro.stop()
    }
    addVideo(e) {
        if (this.blobCallback = e, this.isVideoUDP) {
            if (this.call.owner) {
                let t = this.peer.createDataChannel("video");
                t.onmessage = ({
                    data: t
                }) => e(Ip(t)), t.onopen = () => this.channels.video = t
            }
            this.readyState = 1, this._addVideoStream(e)
        } else {
            let t = So.settings.videoServer;
            10 > t.lastIndexOf("/") && (t += "/"), t += this.call.room, this.socket = new WebSocket(t), this.socket.onopen = () => {
                this.readyState = 1, this._addVideoStream(e)
            }, this.socket.onmessage = ({
                data: t
            }) => e(t), this.socket.onclose = () => this.readyState = 0
        }
    }
    close() {
        var e, t;
        this.readyState = 0, null == (e = this.peer) || e.close(), null == (t = this.socket) || t.close();
        let {
            room: l,
            mode: n
        } = this.call;
        ["mumble-voip", "voip", "pma-voice"].includes(n) ? So.client.exports(n, "removePlayerFromCall", l) : "tokovoip" === n && So.client.exports("tokovoip_script", "removePlayerFromRadio", l)
    }
}

function Lp(e) {
    return new Promise((t => setTimeout(t, e)))
}

function Ip(e) {
    return new Blob([new Uint8Array(e, 0, e.byteLength)])
}
const Op = {
    setup() {
        jl("setDark")(!0);
        let {
            backgroundURL: e,
            settings: t,
            currentCall: l
        } = So, n = jl("setKeepInput"), a = l.value, o = rt(0), r = rt(0), s = new Pp(a), i = cc(), c = Ze({
            big: null,
            small: null
        }), u = rt(), d = rt(), p = {
            ring: So.settings.ringSound,
            dial: So.settings.dialSound
        }, f = null;
        async function m() {
            document.querySelectorAll("audio[audioEffect]").forEach((e => e.pause())), So.client.playAnim("toCall", !0), a.accepted = !0, So.client.setState("inCall", !0), So.client.setState("inVideoCall", a.isVideo), a.isVideo && (s.addVideo(((e, t) => {
                let l = t ? d.value : u.value;
                if (t ? c.small = !0 : c.big = !0, l instanceof HTMLCanvasElement) {
                    let t = l.getContext("2d"),
                        n = new Image;
                    n.onload = () => t.drawImage(n, 0, 0, l.width, l.height), n.src = URL.createObjectURL(e)
                }
            })), So.client.SetInVideoCall(!0)), n(!0), s.addVoice(), (s.isAudioUDP || a.isVideo && s.isVideoUDP) && a.owner && g("setOffer", await s.createOffer()), f = setInterval((() => o.value += 1), 1e3)
        }

        function h(e) {
            So.currentCall.value = null, i.back(), f && clearInterval(f), So.client.setState("inCall", !1), So.client.setState("inVideoCall", !1), s.close(), a.isVideo && So.client.SetInVideoCall(!1), So.visible.value ? So.client.playAnim("callToText", !0) : So.client.playAnim("fromCall"), e && So.backend.endPhoneCall(a.room)
        }
        s.isAudioUDP && (navigator.mediaDevices.getUserMedia({
            audio: {
                autoGainControl: !1
            }
        }).then((e => s.addStream(e))).catch((() => console.error("No available stream"))), s.onstreams = e => {
            let t = new Audio;
            t.autoplay = !0, t.srcObject = e[0]
        }), s.peer && (s.onicecandidate = e => e && g("addCandidate", e)), So.onceRoute("CALL_READY", m);
        let g = (e, ...t) => So.backend.call_p2p(e, t),
            b = {
                setOffer: async e => g("setAnswer", await s.createAnswer(e)),
                setAnswer: e => s.setAnswer(e),
                addCandidate: e => e && s.addIceCandidate(e)
            };
        return So.onceRoute("CALL_P2P", (({
            event: e,
            args: t
        }) => {
            b[e](...t || [])
        })), So.onceRoute("FORCE_LEAVE_CALL", (() => {
            So.currentCall.value && h(!0)
        })), vn((() => {
            let e = document.getElementById(a.owner ? "dial" : "ring");
            e.currentTime = 0, e.play()
        })), So.onceRoute("CALL_END", (() => h())), {
            backgroundURL: e,
            call: a,
            video: c,
            videoPeer: u,
            videoSource: d,
            settings: t,
            status: r,
            duration: o,
            audios: p,
            accept: function () {
                So.backend.answerPhoneCall(a.room), m()
            },
            block: function () {
                So.currentCall.value = null, i.back(), So.backend.block(a.contact.phone), So.settings.blocks.push(a.contact.phone)
            },
            refuse: function () {
                So.currentCall.value = null, i.back(), So.backend.refusePhoneCall(a.room)
            },
            end: h
        }
    }
},
    Mp = sn("data-v-58ae5e69");
ln("data-v-58ae5e69");
const Vp = {
    class: "mt-48 text-7xl text-white"
},
    Dp = {
        class: "text-white mt-4"
    },
    Np = {
        key: 0,
        class: "absolute inset-0 bg-black",
        big: ""
    },
    Up = {
        ref: "videoPeer",
        width: "375",
        height: "812",
        class: "w-full h-full"
    },
    $p = {
        key: 1,
        class: "absolute right-4 top-16 w-64 h-96 bg-black rounded-3xl",
        small: ""
    },
    jp = {
        ref: "videoSource",
        width: "160",
        height: "240",
        class: "w-full h-full rounded-3xl"
    },
    Fp = {
        class: "w-full absolute bottom-48"
    },
    zp = {
        key: 0,
        class: "flex justify-around"
    },
    Bp = Pl("i", {
        class: "fas fa-phone transform rotate-225"
    }, null, -1),
    Hp = Pl("h1", {
        class: "text-white text-xl text-center mt-3"
    }, "Recusar", -1),
    qp = Pl("i", {
        class: "fas fa-ban"
    }, null, -1),
    Gp = Pl("h1", {
        class: "text-white text-xl text-center mt-3"
    }, "Bloquear", -1),
    Wp = {
        key: 0,
        class: "fas fa-video"
    },
    Kp = {
        key: 1,
        class: "fas fa-phone transform rotate-90"
    },
    Jp = Pl("h1", {
        class: "text-white text-xl text-center mt-3"
    }, "Atender", -1),
    Xp = {
        key: 1,
        class: "text-center"
    },
    Yp = Pl("i", {
        class: "fas fa-times"
    }, null, -1),
    Zp = Pl("h1", {
        class: "text-white text-xl mt-3"
    }, "Encerrar", -1);
an();
const Qp = Mp(((e, t, l, n, a, o) => (wl(), _l("div", {
    class: "flex flex-col items-center h-full bg-cover relative",
    style: {
        backgroundImage: "url(" + n.backgroundURL + ")",
        backgroundPosition: "center",
        backgroundColor: "black"
    }
}, [Pl("h1", Vp, g(n.call.isAnonymous && !n.call.owner ? "Anônimo" : n.call.contact.name.substr(0, 16)), 1), Pl("span", Dp, g(e.$filters.duration(n.duration)), 1), n.video.big ? (wl(), _l("div", Np, [Pl("canvas", Up, null, 512)])) : Ml("", !0), n.video.small ? (wl(), _l("div", $p, [Pl("canvas", jp, null, 512)])) : Ml("", !0), Pl("div", Fp, [n.call.accepted || n.call.owner ? (wl(), _l("div", Xp, [Pl("button", {
    class: "text-white w-24 h-24 bg-gradient-to-r from-red-500 to-red-600 rounded-full",
    onClick: t[4] || (t[4] = e => n.end(!0))
}, [Yp]), Zp])) : (wl(), _l("div", zp, [Pl("div", null, [Pl("button", {
    class: "text-white w-24 h-24 bg-gradient-to-r from-red-500 to-red-600 rounded-full",
    onClick: t[1] || (t[1] = (...e) => n.refuse && n.refuse(...e))
}, [Bp]), Hp]), Pl("div", null, [Pl("button", {
    class: "text-white w-24 h-24 bg-gradient-to-r from-red-500 to-red-600 rounded-full",
    onClick: t[2] || (t[2] = (...e) => n.block && n.block(...e))
}, [qp]), Gp]), Pl("div", null, [Pl("button", {
    class: "text-white w-24 h-24 bg-gradient-to-r from-green-400 to-green-500 rounded-full",
    onClick: t[3] || (t[3] = (...e) => n.accept && n.accept(...e))
}, [n.call.isVideo ? (wl(), _l("i", Wp)) : (wl(), _l("i", Kp))]), Jp])]))]), Pl("audio", {
    audioEffect: "",
    id: "ring",
    src: n.audios.ring,
    loop: ""
}, null, 8, ["src"]), Pl("audio", {
    audioEffect: "",
    id: "dial",
    src: n.audios.dial,
    loop: ""
}, null, 8, ["src"])], 4))));
Op.render = Qp, Op.__scopeId = "data-v-58ae5e69";
const ef = {},
    tf = Pl("div", {
        class: "h-12 bg-whatsapp-dark"
    }, null, -1),
    nf = {
        class: "pt-4 bg-whatsapp text-white text-left"
    };
ef.render = function (e, t) {
    return wl(), _l(bl, null, [tf, Pl("div", nf, [Zt(e.$slots, "default")])], 64)
};
const lf = {
    props: ["onChange", "tab"],
    setup: e => ({
        fill: (t, l) => e.tab === t ? l + "_fill" : l
    })
},
    af = {
        class: "mt-auto grid grid-cols-4 p-2 px-5 bg-theme-accent"
    },
    sf = {
        class: "cupertino-icons text-6xl"
    },
    of = {
        class: "text-xl"
    };
lf.render = function (e, t, l, n, a, o) {
    return wl(), _l("div", af, [(wl(), _l(bl, null, fa([{
        tab: "calls",
        icon: "phone",
        label: "Chamadas"
    }, {
        tab: "contacts",
        icon: "person_circle",
        label: "Contatos"
    }, {
        tab: "chats",
        icon: "chat_bubble_2",
        label: "Conversas"
    }, {
        tab: "settings",
        icon: "gear",
        label: "Configurações"
    }], ((e, t) => Pl("button", {
        onClick: t => l.onChange(e.tab),
        class: ["p-2", {
            "bg-lightBlue-400 text-lightBlue-500 bg-opacity-10 rounded-lg": l.tab == e.tab
        }],
        key: t
    }, [Pl("i", sf, g(n.fill(e.tab, e.icon)), 1), Pl("p", of, g(e.label), 1)], 10, ["onClick"]))), 64))])
};
const rf = {
    components: {
        Header: ef
    },
    setup() {
        co();
        let e = jl("alert"),
            t = rt(!1),
            l = rt(!0),
            n = rt(So.hasNotificationFor("whatsapp")),
            a = rt("true" == So.storage.get("whatsapp-sensitive")),
            o = rt(So.asset("/stock/user.svg"));
        return Tn(a, (e => So.storage.set("whatsapp-sensitive", String(e)))), So.backend.wpp_getProfile().then((e => {
            o.value = e.avatarURL || So.asset("/stock/user.svg"), l.value = !!e.read_receipts, t.value = !1
        })), Tn(n, (e => So.setNotificationFor("whatsapp", e))), Tn(l, (e => {
            So.backend.wpp_updateSettings(e)
        })), {
            loading: t,
            avatarURL: o,
            read_receipts: l,
            notifications: n,
            sensitive: a,
            changeAvatar: async function () {
                try {
                    let e = await So.useAnyImage("/whatsapp", !0);
                    o.value = e, So.backend.wpp_updateAvatar(e)
                } catch (e) { }
            },
            deleteMessages: function () {
                So.backend.wpp_deleteMessages().then((() => e("Todas as mensagens privadas foram apagadas"))), So.pusher.emit("WHATSAPP_DELETE_MESSAGES")
            }
        }
    }
},
    cf = {
        key: 0,
        class: "flex-1 flex flex-center"
    },
    uf = {
        key: 1,
        class: "flex-1 overflow-y-auto hide-scroll p-5 flex flex-col text-theme"
    },
    df = {
        class: "relative mb-3"
    },
    pf = Pl("i", {
        class: "fas fa-camera"
    }, null, -1),
    ff = {
        class: "border-t border-theme pt-3 flex-1 flex flex-col"
    },
    mf = {
        class: "flex justify-between"
    },
    hf = Pl("label", {
        class: "text-3xl"
    }, "Confirmação de Leitura", -1),
    bf = {
        class: "flex justify-between mt-3"
    },
    gf = Pl("label", {
        class: "text-3xl"
    }, "Notificações", -1),
    vf = {
        class: "flex justify-between mt-3"
    },
    xf = Pl("label", {
        class: "text-3xl"
    }, "Conteúdo sensível", -1),
    yf = {
        class: "mt-auto"
    };
rf.render = function (e, t, l, n, a, o) {
    let r = dl("app-loading"),
        s = dl("app-toggle");
    return n.loading ? (wl(), _l("div", cf, [Pl(r)])) : (wl(), _l("div", uf, [Zt(e.$slots, "default"), Pl("div", df, [Pl("img", {
        src: n.avatarURL,
        class: "w-64 h-64 rounded-full mx-auto"
    }, null, 8, ["src"]), Pl("button", {
        onClick: t[1] || (t[1] = (...e) => n.changeAvatar && n.changeAvatar(...e)),
        class: "absolute bottom-0 right-40 px-4 py-2 rounded-full bg-gray-400 text-black"
    }, [pf])]), Pl("div", ff, [Pl("div", mf, [hf, Pl(s, {
        modelValue: n.read_receipts,
        "onUpdate:modelValue": t[2] || (t[2] = e => n.read_receipts = e)
    }, null, 8, ["modelValue"])]), Pl("div", bf, [gf, Pl(s, {
        modelValue: n.notifications,
        "onUpdate:modelValue": t[3] || (t[3] = e => n.notifications = e)
    }, null, 8, ["modelValue"])]), Pl("div", vf, [xf, Pl(s, {
        modelValue: n.sensitive,
        "onUpdate:modelValue": t[4] || (t[4] = e => n.sensitive = e)
    }, null, 8, ["modelValue"])]), Pl("div", yf, [Pl("button", {
        class: "text-red-500",
        onClick: t[5] || (t[5] = (...e) => n.deleteMessages && n.deleteMessages(...e))
    }, "Apagar todas as mensagens")])])]))
};
const kf = Ze([]),
    wf = Ze([]),
    Cf = Ze({}),
    _f = Ze({});

function Af(e, t = null) {
    let l = kf.find((t => t.id == e));
    return l && t && Object.assign(l, t), l
}

function Sf(e) {
    let t = kf.findIndex((t => t.id === e));
    t >= 0 && kf.splice(t, 1)
}

function Tf(e, t) {
    var l;
    return t || (t = e.target, e = null != (l = e.sender) ? l : e.initiator), e == So.identity.phone ? t : e
}
So.pusher.on("WHATSAPP_GROUP", (e => {
    e.phone = "group" + e.id, kf.push(e)
})), So.pusher.on("WHATSAPP_GROUP_PHOTO", (({
    id: e,
    avatarURL: t
}) => {
    Af(e, {
        avatarURL: t
    })
})), So.pusher.on("WHATSAPP_GROUP_NAME", (({
    id: e,
    name: t
}) => {
    Af(e, {
        name: t
    })
})), So.pusher.on("WHATSAPP_LEAVE_GROUP", (e => Sf(e))), So.pusher.on("WHATSAPP_UNGROUP", (e => Sf(e))), So.pusher.on("WHATSAPP_GROUP_KICK", (({
    id: e
}) => Sf(e))), So.pusher.on("WHATSAPP_GROUP_DESTROY", (({
    id: e
}) => Sf(e))), So.pusher.on("WHATSAPP_READED", (e => delete Cf[e])), So.pusher.on("WHATSAPP_AVATAR", (({
    phone: e,
    avatarURL: t
}) => _f[e] = t)), So.pusher.on("ADD_CONTACT", (async ({
    phone: e
}) => {
    let t = await So.backend.wpp_getAvatar(e);
    _f[e] = t
})), So.pusher.on("WHATSAPP_MESSAGE", (e => {
    if (e.channel_id > 1e9) Af(e.channel_id - 1e9, {
        message: e
    });
    else {
        e.other = Tf(e);
        let t = wf.findIndex((t => Tf(t) == e.other)); - 1 != t ? wf.splice(t, 1, e) : wf.push(e), e.sender != So.identity.phone && (Cf[e.channel_id] = (Cf[e.channel_id] || 0) + 1)
    }
})), So.pusher.on("WHATSAPP_DELETE_MESSAGES", (() => {
    $s(wf, (e => !e.target.startsWith("group")))
}));
var Ef = {
    loaded: !1,
    groups: kf,
    messages: wf,
    unread: Cf,
    avatars: _f,
    async ready() {
        this.loaded = !0, await So.backend.wpp_getProfile();
        let e = await So.backend.wpp_getResume();
        for (let [t, l] of (e.groups.forEach((e => e.phone = "group" + e.id)), e.messages.forEach((e => e.other = Tf(e))), Object.entries(e))) Object.assign(this[t], l);
        So.pusher.once("REFRESH", (() => {
            for (let e of (this.loaded = !1, [this.groups, this.messages, this.unread, this.avatars]))
                for (let t in e) delete e[t]
        })), this.loaded = !0
    }
};
const Rf = {
    components: {
        Header: ef,
        Footer: lf,
        Settings: rf
    },
    name: "WhatsApp",
    inject: ["setDark"],
    setup() {
        cc();
        let e = So.settings.isAndroid,
            t = da((() => So.identity.phone)),
            l = rt("chats"),
            n = rt(""),
            a = rt(!1),
            o = rt(Zs("whatsapp")),
            r = rt([]),
            s = da((() => {
                let e = n.value.toLowerCase();
                return r.value.filter((t => e ? Bs(f(t)).toLowerCase().includes(e) || f(t).includes(e) : 1))
            })),
            {
                groups: i,
                messages: c,
                unread: u,
                avatars: d
            } = Ef;
        So.localhost && (s.value = [{
            initiator: "000-001",
            target: "000-002",
            status: "ok",
            callback: !0,
            duration: 30,
            created_at: Date.now() / 1e3
        }, {
            initiator: "000-001",
            target: "000-003",
            callback: !0,
            duration: 30,
            created_at: Date.now() / 1e3
        }, {
            initiator: "000-001",
            target: "000-004",
            callback: !0,
            duration: 30,
            created_at: Date.now() / 1e3
        }]);
        let p = 0;
        Tn(l, (e => {
            "calls" === e && p < Date.now() && (So.backend.getPhoneCalls().then((e => {
                r.value = e.map((e => (e.callback = e.initiator == t.value || !e.anonymous, e)))
            })), p = Date.now() + 5e3)
        }));
        let f = (e, t) => {
            var l, n;
            return t || (t = null != (l = e.target) ? l : e.target, e = null != (n = e.sender) ? n : e.initiator), e == So.identity.phone ? t : e
        };

        function m(e) {
            let t = c.find((t => t.other === e));
            return {
                id: e,
                phone: e,
                name: Bs(e),
                avatarURL: d[e] || So.asset("/stock/user.svg"),
                message: t,
                unread: u[null == t ? void 0 : t.channel_id] || 0
            }
        }
        let h = da((() => {
            let e = n.value.trim().toLowerCase(),
                t = [];
            return "chats" === l.value ? (t.push(...c.filter((t => e ? Bs(t.other).toLowerCase().includes(e) || t.other.includes(e) : 1)).map((e => m(e.other)))), e ? (t.push(...i.filter((t => t.name.toLowerCase().includes(e)))), So.contacts.value.forEach((l => {
                t.some((e => e.phone == l.phone)) || (l.phone.includes(e) || l.name.toLowerCase().includes(e)) && t.push(m(l.phone))
            }))) : t.push(...i)) : "contacts" === l.value && So.contacts.value.forEach((l => {
                (l.phone.includes(e) || l.name.toLowerCase().includes(e)) && t.push(m(l.phone))
            })), t.sort(((e, t) => {
                var l, n;
                return (null == (l = t.message) ? void 0 : l.created_at) - (null == (n = e.message) ? void 0 : n.created_at)
            }))
        }));
        return Ef.loaded || Ef.ready(), {
            android: e,
            tab: l,
            appName: o,
            query: n,
            searching: a,
            conversations: h,
            calls: s,
            myPhone: t,
            contentDefaults: {
                image: "📷 Foto",
                location: "🌎 Localização",
                audio: "🔊 Áudio"
            },
            onContext: async function (e) {
                let t = await go().request([
                    ["Excluir conversa", "text-red-500 self-center"], "g" != e.phone[0] && ["Efetuar ligação", "text-blue-500 self-center"]
                ].filter((e => e)), 20);
                0 === t ? So.backend.wpp_deleteMessages(e.phone).then((() => {
                    $s(c, (t => t.other == e.phone))
                })) : 1 === t && So.pusher.emit("CALL_TO", e.phone)
            },
            other: f,
            createCall: function (e) {
                So.pusher.emit("CALL_TO", f(e), e.video)
            },
            getAvatar: function (e) {
                var t;
                return null != (t = d[e]) ? t : So.asset("/stock/user.svg")
            }
        }
    },
    activated() {
        this.setDark(!!So.settings.isAndroid || void 0)
    }
},
    Pf = sn("data-v-1e353ded");
ln("data-v-1e353ded");
const Lf = {
    class: "font-bold ml-6"
},
    If = {
        key: 0,
        class: "far fa-search-minus text-3xl"
    },
    Of = {
        key: 1,
        class: "far fa-search text-3xl"
    },
    Mf = Pl("i", {
        class: "fas fa-users"
    }, null, -1),
    Vf = Pl("i", {
        class: "fas fa-cog"
    }, null, -1),
    Df = {
        class: "mt-4 h-16 bg-whatsapp text-white border-b border-theme grid grid-cols-3"
    },
    Nf = {
        key: 1,
        class: "p-3 pb-0"
    },
    Uf = {
        key: 2,
        class: "flex-1 overflow-y-auto hide-scroll p-5"
    },
    $f = {
        key: 0,
        class: "mt-24"
    },
    jf = {
        class: "text-5xl font-bold"
    },
    Ff = {
        class: "relative text-placeholder"
    },
    zf = Pl("i", {
        class: "fas fa-search absolute left-2 top-3.5 text-xl"
    }, null, -1),
    Bf = {
        class: "flex-1 flex flex-col justify-around text-xl ml-3 border-1 border-b border-theme pb-2"
    },
    Hf = {
        class: "flex items-center justify-between"
    },
    qf = {
        class: "text-3xl text-theme"
    },
    Gf = {
        key: 0,
        class: "text-gray-400"
    },
    Wf = {
        class: "flex justify-between"
    },
    Kf = {
        key: 0,
        class: "text-xl text-gray-400"
    },
    Jf = {
        key: 1,
        class: "text-xl text-gray-500 italic"
    },
    Xf = {
        key: 2,
        class: "text-xl text-gray-500 italic"
    },
    Yf = {
        key: 3,
        class: "bg-blue-500 text-white px-3 py-1 text-base rounded-full flex flex-center"
    },
    Zf = {
        key: 0,
        class: "mt-24 mb-16"
    },
    Qf = Pl("h1", {
        class: "text-5xl font-bold"
    }, "Configurações", -1),
    em = {
        key: 4,
        class: "flex-1 overflow-y-auto hide-scroll p-5"
    },
    tm = {
        key: 0,
        class: "mt-24"
    },
    nm = Pl("h1", {
        class: "text-5xl font-bold"
    }, "Chamadas", -1),
    lm = {
        class: "text-theme"
    },
    am = {
        class: "flex flex-col ml-5 text-3xl"
    },
    sm = {
        class: "font-semibold"
    },
    om = {
        class: "text-gray-400 text-xl pt-2"
    },
    rm = {
        key: 0,
        class: "fas fa-video"
    },
    im = {
        key: 1,
        class: "fas fa-phone transform rotate-90"
    };
an();
const cm = Pf(((e, t, l, n, a, o) => {
    let r = dl("Header"),
        s = dl("app-input"),
        i = dl("Settings"),
        c = dl("Footer");
    return wl(), _l("div", {
        class: ["flex flex-col h-full", [n.android ? "bg-whatsapp-container" : "bg-theme text-theme"]]
    }, [n.android ? (wl(), _l(r, {
        key: 0
    }, {
        default: Pf((() => [Pl("h1", Lf, g(n.appName), 1), Pl("button", {
            onClick: t[1] || (t[1] = e => n.searching = !n.searching),
            class: "absolute top-16 right-32"
        }, [n.searching ? (wl(), _l("i", If)) : (wl(), _l("i", Of))]), Pl("button", {
            onClick: t[2] || (t[2] = t => e.$router.push("/whatsapp/create")),
            class: "absolute top-16 right-16"
        }, [Mf]), Pl("button", {
            onClick: t[3] || (t[3] = e => n.tab = "settings"),
            class: "absolute top-16 right-4"
        }, [Vf]), Pl("div", Df, [(wl(), _l(bl, null, fa({
            chats: "CHATS",
            contacts: "CONTATOS",
            calls: "LIGAÇÕES"
        }, ((e, t) => Pl("button", {
            key: t,
            tab: "",
            class: ["font-bold text-xl", {
                active: n.tab === t
            }],
            onClick: e => n.tab = t
        }, g(e), 11, ["onClick"]))), 64))])])),
        _: 1
    })) : Ml("", !0), !n.searching || "chats" != n.tab && "contacts" != n.tab ? Ml("", !0) : (wl(), _l("div", Nf, [Pl(s, {
        modelValue: n.query,
        "onUpdate:modelValue": t[4] || (t[4] = e => n.query = e),
        spellcheck: "false",
        placeholder: "Nome do contato",
        class: "bg-transparent border text-theme text-xl"
    }, null, 8, ["modelValue"])])), "chats" == n.tab || "contacts" == n.tab ? (wl(), _l("div", Uf, [n.android ? Ml("", !0) : (wl(), _l("div", $f, [Pl("h1", jf, g("chats" == n.tab ? "Conversas" : "Contatos"), 1), Pl("div", Ff, [Zn(Pl("input", {
        "onUpdate:modelValue": t[5] || (t[5] = e => n.query = e),
        class: "bg-theme-accent w-full text-lg p-2.5 pl-8 rounded-lg",
        spellcheck: "false",
        placeholder: "Pesquisar"
    }, null, 512), [
        [ns, n.query]
    ]), zf]), "chats" == n.tab ? (wl(), _l("h1", {
        key: 0,
        class: "text-right text-lightBlue-500 underline text-2xl mt-4",
        onClick: t[6] || (t[6] = t => e.$router.push("/whatsapp/create"))
    }, " Novo grupo ")) : Ml("", !0)])), Pl("ul", null, [(wl(!0), _l(bl, null, fa(n.conversations, (t => {
        var l, a;
        return wl(), _l("li", {
            onContextmenu: is((e => n.onContext(t)), ["prevent", "stop"]),
            key: t.id,
            onClick: l => e.$router.push("/whatsapp/" + t.phone),
            class: "flex mt-3"
        }, [Pl("img", {
            class: "border rounded-full w-24 h-24",
            src: t.avatarURL,
            alt: ""
        }, null, 8, ["src"]), Pl("div", Bf, [Pl("div", Hf, [Pl("h2", qf, g(t.name), 1), t.message ? (wl(), _l("span", Gf, g(e.$filters.unixToHHMM(t.message.created_at)), 1)) : Ml("", !0)]), Pl("div", Wf, [t.message ? (wl(), _l("span", Kf, [t.message.sender == n.myPhone ? (wl(), _l("i", {
            key: 0,
            class: ["fal fa-check-double", {
                "text-blue-400": !!t.message.saw_at
            }]
        }, null, 2)) : Ml("", !0), Il(" " + g((null == (l = t.message.content) ? void 0 : l.match(/(http)?s?:?(\/\/[^"']*\.(?:webm))/)) ? n.contentDefaults.audio : (null == (a = t.message.content) ? void 0 : a.substr(0, 40)) || n.contentDefaults[t.message.image ? "image" : "location"]), 1)])) : t.phone != t.id ? (wl(), _l("span", Jf, " Nenhuma mensagem... ")) : (wl(), _l("span", Xf, " Clique para iniciar uma conversa ")), t.unread ? (wl(), _l("span", Yf, g(t.unread), 1)) : Ml("", !0)])])], 40, ["onContextmenu", "onClick"])
    })), 128))])])) : "settings" == n.tab ? (wl(), _l(i, {
        key: 3
    }, {
        default: Pf((() => [n.android ? Ml("", !0) : (wl(), _l("div", Zf, [Qf]))])),
        _: 1
    })) : (wl(), _l("div", em, [n.android ? Ml("", !0) : (wl(), _l("div", tm, [nm])), Pl("ul", lm, [(wl(!0), _l(bl, null, fa(n.calls, (t => (wl(), _l("li", {
        key: t.id,
        class: "border-b border-theme p-5 flex items-center"
    }, [Pl("img", {
        class: "w-20 h-20 rounded-full",
        src: n.getAvatar(t.callback && n.other(t))
    }, null, 8, ["src"]), Pl("div", am, [Pl("h1", sm, g(t.callback ? e.$filters.getNameByPhone(n.other(t)) : "(Anônimo)"), 1), Pl("span", om, [Pl("i", {
        class: ["fal fa-long-arrow-left", {
            "text-red-500": "ok" != t.status,
            "text-green-500": "ok" == t.status,
            "transform -rotate-45": t.target == n.myPhone,
            "rotate-135": t.target != n.myPhone
        }]
    }, null, 2), Il(" " + g(e.$filters.unixToDayOfMonth(t.created_at)), 1)])]), t.callback ? (wl(), _l("button", {
        key: 0,
        class: ["ml-auto text-3xl", [n.android ? "text-whatsapp" : "text-blue-ios"]],
        onClick: e => t.callback && n.createCall(t)
    }, [t.video ? (wl(), _l("i", rm)) : (wl(), _l("i", im))], 10, ["onClick"])) : Ml("", !0)])))), 128))])])), n.android ? Ml("", !0) : (wl(), _l(c, {
        key: 5,
        tab: n.tab,
        onChange: e => n.tab = e
    }, null, 8, ["tab", "onChange"]))], 2)
}));
Rf.render = cm, Rf.__scopeId = "data-v-1e353ded";
const um = {
    props: ["src"],
    setup(e) {
        console.log(e.src)
        let t = Ze({
            playing: !1,
            duration: 0,
            offset: 0
        }),
            l = new Audio;
        l.oncanplay = () => t.offset = 0, l.src = e.src,

            l.ontimeupdate = () => {
                t.offset = l.currentTime
            }, l.ondurationchange = e => {
                e.target.duration != 1 / 0 && (t.duration = e.target.duration)
            }, l.addEventListener("ended", (() => {
                t.playing = !1
            }));
        let n = da((() => t.duration ? t.offset / t.duration * 95 : 0));
        return {
            state: t,
            resume() {
                l.play(), t.playing = !0, t.offset >= t.duration && (l.currentTime = 0)
            },
            pause() {
                l.pause(), t.playing = !1
            },
            percent: n
        }
    }
},
    dm = {
        class: "relative flex items-center h-20 px-6 rounded-lg w-full"
    },
    pm = Pl("i", {
        class: "fas fa-play text-gray-400"
    }, null, -1),
    fm = Pl("i", {
        class: "fas fa-pause text-gray-400"
    }, null, -1),
    mm = {
        class: "ml-4 flex-1 h-1 bg-gray-200"
    },
    hm = {
        class: "absolute bottom-0 right-4 text-theme text-lg"
    };
um.render = function (e, t, l, n, a, o) {
    return wl(), _l("div", dm, [n.state.playing ? (wl(), _l("button", {
        key: 1,
        onClick: t[2] || (t[2] = e => n.pause())
    }, [fm])) : (wl(), _l("button", {
        key: 0,
        onClick: t[1] || (t[1] = e => n.resume())
    }, [pm])), Pl("div", mm, [Pl("div", {
        style: {
            width: n.percent + "%",
            backgroundColor: n.state.playing ? "#4ade80" : "#60a5fa",
            height: "0.25rem"
        }
    }, null, 4), Pl("div", {
        style: {
            left: n.percent + "%",
            backgroundColor: n.state.playing ? "#4ade80" : "#60a5fa"
        },
        class: "relative bottom-3 rounded-full w-5 h-5 bg-blue-400"
    }, null, 4)]), Pl("span", hm, g(e.$filters.duration(n.state.duration)), 1)])
};
const bm = {
    components: {
        AudioPlayer: um,
        Header: ef
    },
    setup() {
        jl("setDark")(!!So.settings.isAndroid || null);
        let e = uc(),
            t = So.identity.phone,
            l = jl("alert"),
            n = jl("prompt"),
            a = jl("useImageFocus"),
            o = rt(""),
            r = rt([]),
            s = rt([0, 0, 0]),
            i = Ze({}),
            c = rt(null),
            u = rt(!!So.settings.videoServer),
            d = e.params.contact,
            p = rt(So.contacts.value.find((e => e.phone === d)));

        function f(e) {
            return e.location && (e.location = JSON.parse(e.location)), e
        }
        p.value || (d.startsWith("group") ? p.value = {
            id: d,
            isGroup: !0
        } : p.value = {
            name: d,
            unknown: !0,
            avatarURL: So.asset("/stock/user.svg")
        }), So.getPlayerCoords().then((e => s.value = e)), So.backend.wpp_getChat(d).then((e => {
            p.value.id = e.id, e.name && (p.value.name = e.name), p.value.avatarURL = e.avatarURL || So.asset("/stock/user.svg"), r.value = e.messages.map(f), Lt((() => h(!0)))
        }));
        let m = 0;

        function h(e, t) {
            var l;
            !0 !== e && o.value || (null == (l = document.querySelector(".overflow-y-auto")) || l.scrollTo(0, 9e6), p.value.id < 1e9 && !t && m < Date.now() && (m = Date.now() + 1e3, So.backend.wpp_markAsRead(d), So.pusher.emit("WHATSAPP_READED", p.value.id)))
        }
        async function g(e = "text", t) {
            let a = [d, (t || o.value).trim(), e];
            if ("location" === e) a.push(await So.getPlayerCoords());
            else if ("camera" === e) try {
                a[2] = "image", a.push(await co().request(!1, "/whatsapp"))
            } catch (e) {
                return
            } else if ("gallery" === e) try {
                a[2] = "image", a.push(await fo())
            } catch (e) {
                return
            } else if ("image" === e) {
                let e = await n("Insira o link da imagem");
                if (!e) return;
                if (!e.match(/(http)?s?:?(\/\/[^"']*\.(?:png|jpg|jpeg|gif|png|svg))/)) return l("Link inválido");
                a.push(e)
            } else if (!a[1]) return;
            So.backend.wpp_sendMessage(...a).then((e => {
                e.error && l(e.error)
            })), o.value = "", delete i.attachments
        }

        function b(e) {
            e.channel_id == p.value.id && (r.value.push(f(e)), Lt((() => h(!1, e.sender == t))))
        }
        So.onceRoute("WHATSAPP_MESSAGE", b), So.onceRoute("WHATSAPP_READ", (e => {
            e === d && r.value.forEach((e => {
                e.sender == t && (e.saw_at = Math.floor(Date.now() / 1e3))
            }))
        }));
        let v = ["#ef5350", "#EC407A", "#AB47BC", "#7E57C2", "#5C6BC0", "#42A5F5", "#26C6DA", "#26A69A", "#66BB6A", "#9CCC65", "#FF7043"];
        return {
            prompt: n,
            chat: p,
            myPhone: t,
            messages: r,
            addMessage: g,
            handleMessage: b,
            ajustSize: h,
            updateGPS: function (e) {
                So.pusher.emit("GPS", {
                    location: e
                })
            },
            location: s,
            text: o,
            recording: c,
            startRecording: function () {
                if (!So.microphone.value) return So.captureMicrophone(), l("A autorização do microfone não foi concedida.");
                let e = new MediaRecorder(So.microphone.value, {
                    audioBitsPerSecond: 16e3
                }),
                    t = setInterval((() => {
                        if (!c.value) return clearInterval(t);
                        c.value.duration += 1
                    }), 1e3);
                e.start(), c.value = {
                    duration: 0,
                    recorder: e,
                    stop(t = !1) {
                        c.value = null, t && (e.ondataavailable = e => to.upload(e.data, "webm").then((e => {
                            g("audio", e)
                        }), (() => l("Falha ao salvar áudio")))), e.stop()
                    }
                }
            },
            getColorForPhone: function (e) {
                return v[parseInt(e.replace(/-/g, "")) % v.length]
            },
            saveContact: async function () {
                var e;
                let t = null == (e = await n("Nome do contato")) ? void 0 : e.trim();
                if (t) return t.length > 128 ? l("Nome inválido") : void So.backend.addContact(d, t).then((e => {
                    e instanceof Object && (p.value.name = t, delete p.value.unknown, So.contacts.value.push(e), So.pusher.emit("ADD_CONTACT", e))
                }))
            },
            misc: i,
            isExternalLink: function (e) {
                if ("true" != So.storage.get("whatsapp-sensitive")) return !1;
                let t = So.settings.uploadServer;
                return !e.startsWith(t.substring(0, t.indexOf("/", 10)))
            },
            addAttachment: function () {
                let e = ["camera", "gallery", "location"];
                So.settings.allowUnsafeURL && e.splice(2, 0, "image"), go().request([
                    ["Câmera", "text-blue-500 self-center"],
                    ["Galeria", "text-blue-500 self-center"], So.settings.allowUnsafeURL && ["Imagem", "text-blue-500 self-center"],
                    ["Localização", "text-blue-500 self-center"]
                ], 30).then((t => e[t] && g(e[t])))
            },
            onContextImage: async function (e) {
                let t = await go().request([
                    ["Ver imagem", "text-blue-500 self-center"],
                    ["Salvar imagem", "text-blue-500 self-center"]
                ], 20);
                if (0 === t) a(e);
                else if (1 === t) {
                    if (So.gallery.some((t => t.url == e))) return l("Esta imagem já está salva");
                    So.backend.gallery_save("/downloads", e).then((e => {
                        So.gallery.push(e), So.gallery.sort(((e, t) => t.id - e.id))
                    }))
                }
            },
            createCall: function (e = !1) {
                So.pusher.emit("CALL_TO", d, e)
            },
            hasVideoCall: u,
            android: So.settings.isAndroid
        }
    },
    unmounted() {
        var e;
        null == (e = this.recording) || e.stop()
    }
},
    gm = sn("data-v-21268b06");
ln("data-v-21268b06");
const vm = {
    class: "flex flex-col h-full text-theme",
    container: ""
},
    xm = {
        class: "h-16"
    },
    ym = Pl("i", {
        class: "far fa-arrow-left text-3xl"
    }, null, -1),
    km = Pl("i", {
        class: "fas fa-user-plus pl-3 text-2xl"
    }, null, -1),
    wm = {
        key: 0,
        class: "absolute top-16 right-0"
    },
    Cm = Pl("i", {
        class: "fas fa-video text-2xl"
    }, null, -1),
    _m = Pl("i", {
        class: "fas fa-phone transform rotate-90 text-2xl"
    }, null, -1),
    Am = {
        key: 1,
        class: "h-36 bg-theme-accent flex items-center pt-20 pb-2 px-5 border-b border-theme"
    },
    Sm = Pl("i", {
        class: "cupertino-icons text-blue-ios"
    }, "chevron_back", -1),
    Tm = Pl("i", {
        class: "fas fa-user-plus pl-3 text-2xl text-blue-ios"
    }, null, -1),
    Em = {
        key: 0,
        class: "ml-auto mr-4"
    },
    Rm = Pl("i", {
        class: "fal fa-video text-blue-ios text-4xl"
    }, null, -1),
    Pm = Pl("i", {
        class: "cupertino-icons text-4xl text-blue-ios"
    }, "phone", -1),
    Lm = {
        class: "flex-1 overflow-y-auto hide-scroll p-5 relative"
    },
    Im = {
        key: 1
    },
    Om = {
        class: "text-xl w-full flex justify-between "
    },
    Mm = Pl("b", null, "Clique para atualizar seu GPS", -1),
    Vm = {
        class: "break-words"
    },
    Dm = {
        class: "flex-shrink-0 absolute right-3 bottom-1 flex items-center text-base text-gray-400"
    },
    Nm = {
        key: 2,
        class: "absolute right-8 bottom-28 bg-theme text-theme w-40 py-2 px-4 rounded-full flex justify-between"
    },
    Um = {
        class: "blink"
    },
    $m = Pl("i", {
        class: "far fa-trash-alt text-red-500"
    }, null, -1),
    jm = {
        key: 3,
        class: "h-24 flex items-center justify-around px-4"
    },
    Fm = Pl("i", {
        class: "far fa-paperclip text-3xl"
    }, null, -1),
    zm = {
        key: 0,
        xmlns: "http://www.w3.org/2000/svg",
        "enable-background": "new 0 0 24 24",
        height: "2.4rem",
        viewBox: "0 0 24 24",
        width: "2.4rem",
        fill: "#fff"
    },
    Bm = Pl("g", null, [Pl("rect", {
        fill: "none",
        height: "24",
        width: "24"
    }), Pl("rect", {
        fill: "none",
        height: "24",
        width: "24"
    }), Pl("rect", {
        fill: "none",
        height: "24",
        width: "24"
    })], -1),
    Hm = Pl("g", null, [Pl("g"), Pl("g", null, [Pl("path", {
        d: "M12,14c1.66,0,3-1.34,3-3V5c0-1.66-1.34-3-3-3S9,3.34,9,5v6C9,12.66,10.34,14,12,14z"
    }), Pl("path", {
        d: "M17,11c0,2.76-2.24,5-5,5s-5-2.24-5-5H5c0,3.53,2.61,6.43,6,6.92V21h2v-3.08c3.39-0.49,6-3.39,6-6.92H17z"
    })])], -1),
    qm = {
        key: 1,
        class: "fa fa-square text-3xl"
    },
    Gm = {
        key: 4,
        class: "h-20 flex items-center px-10 bg-theme-accent"
    },
    Wm = Pl("i", {
        class: "fal fa-plus text-4xl text-blue-ios"
    }, null, -1),
    Km = {
        key: 0,
        class: "fa fa-square text-red-500 text-3xl"
    },
    Jm = {
        key: 1,
        class: "fal fa-microphone text-blue-ios"
    };
an();
const Xm = gm(((e, t, l, n, a, o) => {
    var r, s, i;
    let c = dl("Header"),
        u = dl("AudioPlayer");
    return wl(), _l("div", vm, [n.android ? (wl(), _l(c, {
        key: 0
    }, {
        default: gm((() => {
            var l, a;
            return [Pl("div", xm, [Pl("button", {
                onClick: t[1] || (t[1] = (...t) => e.$router.back && e.$router.back(...t)),
                class: "absolute top-16 left-4"
            }, [ym]), Pl("img", {
                onClick: t[2] || (t[2] = t => n.chat.isGroup && e.$router.push("/whatsapp/edit/" + n.chat.id)),
                class: "absolute top-16 left-14 w-12 h-12 rounded-full",
                src: null != (l = n.chat.avatarURL) ? l : e.$asset("/stock/user.svg")
            }, null, 8, ["src"]), Pl("h1", {
                class: "ml-28 font-bold",
                onClick: t[4] || (t[4] = t => n.chat.isGroup && e.$router.push("/whatsapp/edit/" + n.chat.id))
            }, [Il(g(null == (a = n.chat.name) ? void 0 : a.slice(0, 20)) + " ", 1), n.chat.unknown ? (wl(), _l("button", {
                key: 0,
                onClick: t[3] || (t[3] = (...e) => n.saveContact && n.saveContact(...e))
            }, [km])) : Ml("", !0)]), n.chat.isGroup ? Ml("", !0) : (wl(), _l("div", wm, [n.hasVideoCall ? (wl(), _l("button", {
                key: 0,
                onClick: t[5] || (t[5] = e => n.createCall(!0)),
                class: "mr-8"
            }, [Cm])) : Ml("", !0), Pl("button", {
                onClick: t[6] || (t[6] = e => n.createCall()),
                class: "mr-8"
            }, [_m])]))])]
        })),
        _: 1
    })) : (wl(), _l("div", Am, [Pl("button", {
        onClick: t[7] || (t[7] = (...t) => e.$router.back && e.$router.back(...t))
    }, [Sm]), Pl("img", {
        class: "ml-14 w-12 h-12 rounded-full",
        src: null != (r = n.chat.avatarURL) ? r : e.$asset("/stock/user.svg")
    }, null, 8, ["src"]), Pl("h1", {
        class: "ml-4 font-bold text-3xl text-theme",
        onClick: t[9] || (t[9] = t => n.chat.isGroup && e.$router.push("/whatsapp/edit/" + n.chat.id))
    }, [Il(g(null == (i = null == (s = n.chat.name) ? void 0 : s.slice) ? void 0 : i.call(s, 0, 20)) + " ", 1), n.chat.unknown ? (wl(), _l("button", {
        key: 0,
        onClick: t[8] || (t[8] = (...e) => n.saveContact && n.saveContact(...e))
    }, [Tm])) : Ml("", !0)]), n.chat.isGroup ? Ml("", !0) : (wl(), _l("div", Em, [n.hasVideoCall ? (wl(), _l("button", {
        key: 0,
        onClick: t[10] || (t[10] = e => n.createCall(!0)),
        class: "mr-10"
    }, [Rm])) : Ml("", !0), Pl("button", {
        onClick: t[11] || (t[11] = e => n.createCall())
    }, [Pm])]))])), Pl("div", Lm, [(wl(!0), _l(bl, null, fa(n.messages, (l => (wl(), _l("div", {
        class: "flex",
        key: l.id
    }, [Pl("div", {
        class: ["max-w-10/12 mt-2 p-4 pb-8 rounded-xl relative", {
            "w-10/12": e.$filters.isAudio(l.content),
            "bg-sender ml-auto": l.sender == n.myPhone,
            "bg-target mr-auto": l.sender != n.myPhone
        }]
    }, [l.channel_id > 1e9 && l.sender != n.myPhone ? (wl(), _l("h1", {
        key: 0,
        class: "mb-1 text-xl",
        style: {
            color: n.getColorForPhone(l.sender)
        }
    }, g(e.$filters.getNameByPhone(l.sender)), 5)) : Ml("", !0), l.image ? (wl(), _l("div", Im, [Pl("img", {
        onContextmenu: is((e => n.onContextImage(l.image)), ["prevent", "stop"]),
        class: ["w-full rounded-lg", {
            censored: n.isExternalLink(l.image)
        }],
        onLoad: t[12] || (t[12] = (...e) => n.ajustSize && n.ajustSize(...e)),
        src: l.image,
        tabindex: "0"
    }, null, 42, ["onContextmenu", "src"])])) : l.location ? (wl(), _l("div", {
        key: 2,
        class: "flex flex-col items-center",
        onClick: e => n.updateGPS(l.location)
    }, [Pl("img", {
        class: "border rounded-lg",
        onLoad: t[13] || (t[13] = (...e) => n.ajustSize && n.ajustSize(...e)),
        src: "samba/stock/maps.jpg",
        alt: ""
    }, null, 32), Pl("div", Om, [Mm, Pl("span", null, g(e.$filters.vdist2(n.location, l.location)), 1)])], 8, ["onClick"])) : Ml("", !0), e.$filters.isAudio(l.content) ? (wl(), _l(u, {
        key: 3,
        src: l.content
    }, null, 8, ["src"])) : Ml("", !0), Pl("div", null, [Pl("span", Vm, g(e.$filters.isAudio(l.content) ? "" : l.content), 1), Pl("span", Dm, [Il(g(e.$filters.unixToHHMM(l.created_at)) + " ", 1), l.sender == n.myPhone ? (wl(), _l("i", {
        key: 0,
        class: ["fal fa-check-double pl-2", {
            "text-blue-400": l.saw_at
        }]
    }, null, 2)) : Ml("", !0)])])], 2)])))), 128))]), n.recording ? (wl(), _l("div", Nm, [Pl("span", Um, g(e.$filters.duration(n.recording.duration)), 1), Pl("button", {
        onClick: t[14] || (t[14] = e => n.recording.stop())
    }, [$m])])) : Ml("", !0), n.android ? (wl(), _l("div", jm, [Zn(Pl("input", {
        android: "",
        type: "text",
        onKeydown: t[15] || (t[15] = us((e => n.addMessage()), ["enter"])),
        "onUpdate:modelValue": t[16] || (t[16] = e => n.text = e),
        placeholder: "Envie uma mensagem",
        class: "flex-1 p-3.5 px-4 pr-14 text-2xl text-theme rounded-full"
    }, null, 544), [
        [ns, n.text]
    ]), Pl("button", {
        class: "absolute right-28",
        onClick: t[17] || (t[17] = e => n.addAttachment())
    }, [Fm]), Pl("button", {
        class: "flex flex-center ml-2 w-16 h-16 microphone",
        onClick: t[18] || (t[18] = e => n.recording ? n.recording.stop(!0) : n.startRecording())
    }, [n.recording ? (wl(), _l("i", qm)) : (wl(), _l("svg", zm, [Bm, Hm]))])])) : (wl(), _l("div", Gm, [Pl("button", {
        onClick: t[19] || (t[19] = (...e) => n.addAttachment && n.addAttachment(...e))
    }, [Wm]), Zn(Pl("input", {
        onKeydown: t[20] || (t[20] = us((e => n.addMessage()), ["enter"])),
        "onUpdate:modelValue": t[21] || (t[21] = e => n.text = e),
        class: "ml-4 bg-theme rounded-3xl bg-theme border border-theme w-full p-2 px-4 text-2xl text-theme"
    }, null, 544), [
        [ns, n.text]
    ]), Pl("button", {
        class: "ml-5",
        onClick: t[22] || (t[22] = e => n.recording ? n.recording.stop(!0) : n.startRecording())
    }, [n.recording ? (wl(), _l("i", Km)) : (wl(), _l("i", Jm))])]))])
}));
bm.render = Xm, bm.__scopeId = "data-v-21268b06";
const Ym = rt(So.asset("/stock/user.svg")),
    Zm = rt(""),
    Qm = Ze([So.identity.phone]),
    eh = da((() => {
        var e;
        return null != (e = So.settings.whatsappMaxMembers) ? e : 100
    })),
    th = {
        components: {
            Header: ef
        },
        setup() {
            jl("setDark")(!!So.settings.isAndroid || null);
            let e = So.settings.isAndroid,
                t = jl("prompt"),
                l = jl("alert"),
                n = cc(),
                a = rt(!0),
                o = da((() => So.contacts.value.filter((e => !Qm.includes(e.phone)))));
            return {
                android: e,
                maxMembers: eh,
                dark: So.darkTheme,
                avatarURL: Ym,
                name: Zm,
                contacts: o,
                invited: Qm,
                removeMember: function (e) {
                    Qm.splice(Qm.indexOf(e), 1)
                },
                promptAvatarURL: async function () {
                    try {
                        let e = await go().request(["Link externo", "Galeria"], 20, !0),
                            n = await (e ? fo() : t("Insira o link"));
                        if ((null == n ? void 0 : n.length) > 255) l("Link muito grande, máximo de 255 caracteres");
                        else if (n) {
                            Ym.value = n;
                            let e = new Image;
                            e.onload = () => a.value = !0, e.src = n
                        }
                    } catch (e) { }
                },
                submit: function () {
                    var e;
                    if (!a.value) return l("Imagem inválida");
                    if (Ym.value.length > 255) return l("Imagem muito grande");
                    if (!(null == (e = Zm.value) ? void 0 : e.trim()) || Zm.value.length > 32) return l("Nome inválido");
                    if (Qm.length < 2) return l("Usuários insuficientes");
                    let t = Qm.filter(((e, t) => t));
                    So.backend.wpp_createGroup(Zm.value.trim(), Ym.value, t).then((() => {
                        n.back()
                    })), Ym.value = So.asset("/stock/user.svg"), Zm.value = "", Qm.length = 0, Qm.push(So.identity.phone)
                }
            }
        }
    },
    nh = sn("data-v-f8c9758a");
ln("data-v-f8c9758a");
const lh = {
    class: "h-16"
},
    ah = Pl("i", {
        class: "far fa-arrow-left"
    }, null, -1),
    sh = Pl("h1", {
        class: "absolute left-16 font-bold"
    }, "Criar Grupo", -1),
    oh = {
        key: 1,
        class: "mt-24 mb-8 px-5"
    },
    rh = Pl("h1", {
        class: "text-5xl font-bold"
    }, "Criar Grupo", -1),
    ih = {
        class: "flex-1 p-5"
    },
    ch = {
        class: "relative mx-auto w-40"
    },
    uh = Pl("i", {
        class: "fas fa-link text-white text-xl"
    }, null, -1),
    dh = Pl("label", null, "Nome", -1),
    ph = {
        class: "block mt-4"
    },
    fh = {
        class: "border rounded-xl p-4 overflow-y-auto fancy-scroll",
        style: {
            height: "40rem"
        }
    },
    mh = {
        key: 0,
        class: "text-2xl"
    },
    hh = Pl("i", {
        class: "far fa-times text-red-500"
    }, null, -1),
    bh = {
        key: 0,
        class: "text-2xl"
    },
    gh = Pl("i", {
        class: "far fa-user-plus text-blue-500"
    }, null, -1),
    vh = {
        key: 0,
        class: "absolute bottom-8 right-8"
    };
an();
const xh = nh(((e, t, l, n, a, o) => {
    let r = dl("Header"),
        s = dl("app-input");
    return wl(), _l("div", {
        class: ["flex flex-col h-full text-theme", [n.android ? "bg-whatsapp-container" : "bg-theme"]]
    }, [n.android ? (wl(), _l(r, {
        key: 0
    }, {
        default: nh((() => [Pl("div", lh, [Pl("button", {
            onClick: t[1] || (t[1] = (...t) => e.$router.back && e.$router.back(...t)),
            class: "absolute left-0 px-4"
        }, [ah]), sh])])),
        _: 1
    })) : (wl(), _l("div", oh, [rh])), Pl("div", ih, [Pl("div", ch, [Pl("img", {
        src: n.avatarURL,
        class: "w-40 h-40 rounded-full"
    }, null, 8, ["src"]), Pl("button", {
        onClick: t[2] || (t[2] = e => n.promptAvatarURL()),
        class: ["absolute bottom-0 right-0 w-12 h-12 rounded-full bg-gray-500 border-2 flex flex-center", [n.dark ? "border-black" : "border-white"]]
    }, [uh], 2)]), Pl("div", null, [dh, Pl(s, {
        modelValue: n.name,
        "onUpdate:modelValue": t[3] || (t[3] = e => n.name = e),
        maxlength: "24",
        class: "text-3xl bg-transparent text-theme border"
    }, null, 8, ["modelValue"])]), Pl("label", ph, "Membros (" + g(n.invited.length) + "/" + g(n.maxMembers) + ")", 1), Pl("ul", fh, [(wl(!0), _l(bl, null, fa(n.invited, ((t, l) => (wl(), _l("li", {
        key: l,
        class: "flex justify-between items-center mb-2 last:mb-0"
    }, [Pl("span", null, g(e.$filters.getNameByPhone(t)), 1), l ? (wl(), _l("div", mh, [Pl("button", {
        onClick: e => n.removeMember(t),
        class: "pl-3"
    }, [hh], 8, ["onClick"])])) : Ml("", !0)])))), 128)), (wl(!0), _l(bl, null, fa(n.contacts, ((t, l) => (wl(), _l("li", {
        key: l,
        class: "flex justify-between items-center mb-2 last:mb-0"
    }, [Pl("span", null, g(e.$filters.getNameByPhone(t.phone)), 1), n.invited.length < n.maxMembers ? (wl(), _l("div", bh, [Pl("button", {
        onClick: e => n.invited.push(t.phone),
        class: "pl-3"
    }, [gh], 8, ["onClick"])])) : Ml("", !0)])))), 128))]), n.invited.length > 1 ? (wl(), _l("div", vh, [Pl("button", {
        onClick: t[4] || (t[4] = (...e) => n.submit && n.submit(...e)),
        class: "bg-blue-500 px-6 p-3 rounded-xl text-white"
    }, "Criar")])) : Ml("", !0)])], 2)
}));
th.render = xh, th.__scopeId = "data-v-f8c9758a";
const yh = da((() => {
    var e;
    return null != (e = So.settings.whatsappMaxMembers) ? e : 100
})),
    kh = {
        components: {
            Header: ef
        },
        setup() {
            jl("setDark")(!!So.settings.isAndroid || null);
            let e = jl("prompt"),
                t = jl("alert"),
                l = jl("confirm"),
                n = cc(),
                a = uc(),
                o = Ze({}),
                r = a.params.group.slice(5);
            So.localhost && (o.id = 1, o.owner = So.identity.phone, o.isOwner = !0, o.members = ["000-004", "000-002"]);
            let s = da((() => {
                let e = [];
                return o.id && (e.push(o.owner, ...o.members), o.isOwner && e.push(...So.contacts.value.map((e => e.phone)))), e.filter(((e, t, l) => l.indexOf(e) == t))
            }));
            async function i(e, l) {
                let n = await So.backend[e](...l);
                return (null == n ? void 0 : n.error) ? (t(n.error), Promise.reject("WhatsApp response with error")) : n
            }
            return So.backend.wpp_getGroup(r).then((e => {
                e.isOwner = e.owner === So.identity.phone, Object.assign(o, e), (null == e ? void 0 : e.id) || (n.back(), t("Grupo inválido (Sem ID)"))
            })), i.empty = () => { }, {
                android: So.settings.isAndroid,
                maxMembers: yh,
                dark: So.darkTheme,
                members: s,
                group: o,
                promptAvatarURL: async function () {
                    try {
                        let l = await go().request(["Link externo", "Galeria"], 20, !0),
                            n = await (l ? fo() : e("Insira o link"));
                        (null == n ? void 0 : n.length) > 255 ? t("Link muito grande, máximo de 255 caracteres") : n && i("wpp_updateGroupAvatar", [o.id, n]).then((() => o.avatarURL = n), i.empty)
                    } catch (e) { }
                },
                updateName: async function (e) {
                    i("wpp_updateGroupName", [o.id, e]).then((() => o.name = e), i.empty)
                },
                removeMember: function (e) {
                    l("Deseja remover " + Bs(e) + "?").then((t => t && i("wpp_removeFromGroup", [o.id, e]).then((() => {
                        o.members = o.members.filter((t => t != e))
                    }), i.empty)))
                },
                leaveGroup: async function () {
                    i("wpp_leaveGroup", [o.id]).then((() => n.go(-2)), i.empty)
                },
                destroyGroup: async function () {
                    i("wpp_deleteGroup", [o.id]).then((() => n.go(-2)), i.empty)
                },
                promoteMember: async function (e) {
                    if (!await l("Deseja transferir a posse do grupo para " + Bs(e) + "?")) return;
                    let n = await i("wpp_promote", [o.id, e]);
                    if (null == n ? void 0 : n.error) return t(n.error);
                    let a = o.members.indexOf(e);
                    o.members.splice(a, 1, So.identity.phone), o.owner = e, o.isOwner = !1
                },
                inviteMember: function (e) {
                    i("wpp_inviteToGroup", [o.id, e]).then((() => o.members.push(e)), i.empty)
                }
            }
        }
    },
    wh = sn("data-v-491341e1");
ln("data-v-491341e1");
const Ch = {
    class: "flex flex-col h-full bg-whatsapp-container text-theme"
},
    _h = {
        class: "h-16"
    },
    Ah = Pl("i", {
        class: "far fa-arrow-left"
    }, null, -1),
    Sh = {
        class: "absolute left-16 font-bold"
    },
    Th = {
        key: 1,
        class: "mt-24 mb-8 px-5"
    },
    Eh = Pl("h1", {
        class: "text-5xl font-bold"
    }, "Editar Grupo", -1),
    Rh = {
        class: "flex-1 p-5"
    },
    Ph = {
        key: 0,
        class: "relative mx-auto w-40"
    },
    Lh = Pl("i", {
        class: "fas fa-link text-white text-xl"
    }, null, -1),
    Ih = {
        class: "mt-4"
    },
    Oh = Pl("label", {
        for: "block m-2"
    }, "Nome do Grupo", -1),
    Mh = {
        key: 1,
        class: "mt-4"
    },
    Vh = {
        class: "border rounded-xl p-4 overflow-y-auto fancy-scroll",
        style: {
            height: "40rem"
        }
    },
    Dh = {
        key: 0,
        class: "text-2xl"
    },
    Nh = Pl("i", {
        class: "far fa-chevron-up text-green-500"
    }, null, -1),
    Uh = Pl("i", {
        class: "far fa-times text-red-500"
    }, null, -1),
    $h = Pl("i", {
        class: "far fa-user-plus text-blue-500"
    }, null, -1),
    jh = {
        key: 2,
        class: "absolute bottom-8 left-8"
    },
    Fh = {
        key: 3,
        class: "absolute bottom-8 right-8"
    };
an();
const zh = wh(((e, t, l, n, a, o) => {
    let r = dl("Header"),
        s = dl("app-input");
    return wl(), _l("div", Ch, [n.android ? (wl(), _l(r, {
        key: 0
    }, {
        default: wh((() => {
            var l;
            return [Pl("div", _h, [Pl("button", {
                onClick: t[1] || (t[1] = (...t) => e.$router.back && e.$router.back(...t)),
                class: "absolute left-0 px-4"
            }, [Ah]), Pl("h1", Sh, g(null == (l = n.group.name) ? void 0 : l.slice(0, 20)), 1)])]
        })),
        _: 1
    })) : (wl(), _l("div", Th, [Eh])), Pl("div", Rh, [n.group.id ? (wl(), _l("div", Ph, [Pl("img", {
        src: n.group.avatarURL,
        class: "w-40 h-40 border rounded-full"
    }, null, 8, ["src"]), n.group.isOwner ? (wl(), _l("button", {
        key: 0,
        onClick: t[2] || (t[2] = e => n.promptAvatarURL()),
        class: ["absolute bottom-0 right-0 w-12 h-12 rounded-full bg-gray-500 border-2 flex flex-center", [n.dark ? "border-black" : "border-white"]]
    }, [Lh], 2)) : Ml("", !0)])) : Ml("", !0), Pl("div", Ih, [Oh, Pl(s, {
        value: n.group.name,
        onChange: t[3] || (t[3] = e => n.updateName(e.target.value)),
        maxlength: "24",
        class: "text-3xl bg-transparent text-theme border"
    }, null, 8, ["value"])]), n.group.members ? (wl(), _l("div", Mh, [Pl("label", null, "Membros (" + g(n.group.members.length + 1) + "/" + g(n.maxMembers) + ")", 1), Pl("ul", Vh, [(wl(!0), _l(bl, null, fa(n.members, (t => (wl(), _l("li", {
        key: t,
        class: "flex justify-between items-center mb-2 last:mb-0"
    }, [Pl("span", null, g(e.$filters.getNameByPhone(t)), 1), n.group.isOwner && t != n.group.owner ? (wl(), _l("div", Dh, [n.group.members.includes(t) ? (wl(), _l("button", {
        key: 0,
        onClick: e => n.promoteMember(t),
        class: "px-3"
    }, [Nh], 8, ["onClick"])) : Ml("", !0), n.group.members.includes(t) ? (wl(), _l("button", {
        key: 1,
        onClick: e => n.removeMember(t),
        class: "pl-3"
    }, [Uh], 8, ["onClick"])) : n.group.members.length < 99 ? (wl(), _l("button", {
        key: 2,
        onClick: e => n.inviteMember(t),
        class: "pl-3"
    }, [$h], 8, ["onClick"])) : Ml("", !0)])) : Ml("", !0)])))), 128))])])) : Ml("", !0), n.members.length > 1 && !n.group.isOwner ? (wl(), _l("div", jh, [Pl("button", {
        onClick: t[4] || (t[4] = (...e) => n.leaveGroup && n.leaveGroup(...e)),
        class: "text-red-500"
    }, "Sair do grupo")])) : Ml("", !0), n.group.isOwner ? (wl(), _l("div", Fh, [Pl("button", {
        onClick: t[5] || (t[5] = (...e) => n.destroyGroup && n.destroyGroup(...e)),
        class: "text-red-500"
    }, "Excluir o grupo")])) : Ml("", !0)])])
}));
kh.render = zh, kh.__scopeId = "data-v-491341e1";
const Bh = {
    props: ["footer", "hasBell"],
    setup() {
        jl("setDark")(!0);
        let e = da((() => So.settings.isAndroid)),
            t = [{
                name: "Mensagens",
                path: "/tor",
                icon: "fal fa-reply-all"
            }, {
                name: "Grupos",
                path: "/tor/groups",
                icon: "fal fa-comment-alt"
            }, {
                name: "Anúncios",
                path: "/tor/store",
                icon: "fal fa-bags-shopping"
            }];
        So.isDisabled("tor-payments") || t.push({
            name: "Pagamentos",
            path: "/tor/payments",
            icon: "fal fa-wallet"
        });
        let l = rt(So.hasNotificationFor("tor"));
        return Tn(l, (e => So.setNotificationFor("tor", e))), {
            isAndroid: e,
            routes: t,
            notifications: l
        }
    }
},
    Hh = {
        class: "flex flex-col h-full bg-black"
    },
    qh = {
        class: "h-32 pt-16 bg-tor-secondary text-white flex-shrink-0"
    },
    Gh = {
        key: 0,
        class: "far fa-arrow-left mr-4"
    },
    Wh = {
        key: 1,
        class: "fas fa-chevron-left text-blue-400"
    },
    Kh = {
        class: "font-bold ml-16"
    },
    Jh = {
        key: 0,
        class: "far fa-bell"
    },
    Xh = {
        key: 1,
        class: "far fa-bell-slash"
    },
    Yh = {
        class: "flex-1 overflow-y-auto hide-scroll"
    },
    Zh = {
        key: 0,
        class: "h-32 bg-tor-secondary flex justify-between items-center px-8 text-white text-4xl"
    },
    Qh = {
        class: "text-lg mt-3"
    };
Bh.render = function (e, t, l, n, a, o) {
    return wl(), _l("div", Hh, [Pl("div", qh, [Pl("button", {
        onClick: t[1] || (t[1] = t => e.$router.back()),
        class: "absolute top-16 px-5"
    }, [n.isAndroid ? (wl(), _l("i", Gh)) : (wl(), _l("i", Wh))]), Pl("h1", Kh, [Zt(e.$slots, "header"), l.hasBell ? (wl(), _l("button", {
        key: 0,
        onClick: t[2] || (t[2] = e => n.notifications = !n.notifications),
        class: "absolute top-20 right-8 w-6 h-4 flex flex-center"
    }, [n.notifications ? (wl(), _l("i", Jh)) : (wl(), _l("i", Xh))])) : Ml("", !0)])]), Pl("div", Yh, [Zt(e.$slots, "default")]), Zt(e.$slots, "footer"), !1 !== l.footer ? (wl(), _l("div", Zh, [(wl(!0), _l(bl, null, fa(n.routes, (t => (wl(), _l("button", {
        key: t.path,
        class: ["text-center", {
            "text-tor": e.$route.path == t.path
        }],
        onClick: l => e.$router.replace(t.path)
    }, [Pl("i", {
        class: t.icon
    }, null, 2), Pl("h1", Qh, g(t.name), 1)], 10, ["onClick"])))), 128))])) : Ml("", !0)])
};
const eb = Ze({
    id: "0",
    is(e) {
        return this.id == e || this.id == (null == e ? void 0 : e.sender)
    },
    getNickname(e) {
        var t;
        return null != (t = localStorage.getItem("tor:nickname:" + e)) ? t : "Usuário " + e
    },
    setNickname(e, t) {
        localStorage.setItem("tor:nickname:" + e, t)
    },
    direct: [],
    groups: ["geral"],
    listening: []
});
for (let e of ["direct", "groups", "listening"]) {
    let t = "smartphone@deepweb@" + e,
        l = localStorage.getItem(t);
    if (l) {
        let t = JSON.parse(l);
        eb[e] = t
    }
    Tn((() => eb[e]), (e => {
        localStorage.setItem(t, JSON.stringify(e))
    }), {
        deep: !0
    })
}
An((() => So.backend.tor_subscribe(eb.groups))), So.pusher.on("TOR_MESSAGE", (e => {
    let t = String(e.sender);
    t != eb.id && e.channel.startsWith("dm:") && !eb.direct.includes(t) && eb.direct.unshift(t)
}));
const tb = {
    components: {
        Page: Bh
    },
    setup() {
        let e = cc(),
            t = rt([]);
        return So.backend.tor_blocked().then((t => {
            t && (e.replace("/home"), So.alert(t))
        })), So.backend.tor_resume(eb.direct).then((e => {
            t.value = Object.entries(e).map((([e, t]) => ({
                id: e,
                name: eb.getNickname(e),
                avatarURL: "samba/stock/avatar.svg",
                message: t
            }))).sort(((e, t) => e.message && t.message ? e.message.created_at > t.message.created_at ? -1 : 1 : e.message == t.message ? 0 : e.message ? -1 : 1))
        })), So.onceRoute("TOR_MESSAGE", (e => {
            if (e.channel.startsWith("dm:") && e.sender != eb.id) {
                let l = t.value.find((t => t.id == e.sender));
                l && (l.message = e)
            }
        })), So.backend.tor_id().then((e => eb.id = e)), {
            users: t,
            search: function () {
                So.prompt("Digite o id do usuário").then((t => {
                    (t = null == t ? void 0 : t.trim()) && (t.match(/^\d+$/) ? e.push("/tor/" + t) : So.alert("Usuário inválido"))
                }))
            }
        }
    }
},
    nb = Il(" Deep Web "),
    lb = {
        class: "text-2xl flex-1"
    },
    ab = {
        class: "flex justify-between"
    },
    sb = {
        class: "font-bold"
    },
    ob = {
        key: 0,
        class: "text-lg"
    },
    rb = {
        key: 0,
        class: "text-gray-400"
    },
    ib = {
        key: 0
    },
    cb = {
        key: 1
    },
    ub = {
        key: 2
    },
    db = {
        key: 1,
        class: "text-gray-400 italic"
    },
    pb = Pl("i", {
        class: "fa fa-pen"
    }, null, -1);
tb.render = function (e, t, l, n, a, o) {
    let r = dl("Page");
    return wl(), _l(r, {
        hasBell: "yes"
    }, {
        header: en((() => [nb])),
        default: en((() => [Pl("ul", null, [(wl(!0), _l(bl, null, fa(n.users, (t => (wl(), _l("li", {
            key: t.id,
            onClick: l => e.$router.push("/tor/" + t.id),
            class: "p-5 flex items-start text-white hover:bg-gray-900"
        }, [Pl("img", {
            class: "bg-white rounded-full w-20 mr-4",
            src: t.avatarURL
        }, null, 8, ["src"]), Pl("div", lb, [Pl("div", ab, [Pl("h1", sb, g(t.name), 1), t.message ? (wl(), _l("h1", ob, g(e.$filters.unixToRelative(t.message.created_at)), 1)) : Ml("", !0)]), t.message ? (wl(), _l("p", rb, [t.message.location ? (wl(), _l("span", ib, "🌎 Localização")) : t.message.image ? (wl(), _l("span", cb, "📷 Foto")) : (wl(), _l("span", ub, g(t.message.content), 1))])) : (wl(), _l("p", db, "Nenhuma mensagem..."))])], 8, ["onClick"])))), 128))]), Pl("button", {
            onClick: t[1] || (t[1] = (...e) => n.search && n.search(...e)),
            class: "absolute bottom-40 right-8 w-24 h-24 bg-tor text-white rounded-full"
        }, [pb])])),
        _: 1
    })
};
const fb = {
    components: {
        Page: Bh
    },
    setup() {
        let e = cc(),
            t = rt([]);
        return So.backend.tor_resume(eb.groups, !0).then((e => {
            t.value = Object.entries(e).map((([e, t]) => ({
                id: e,
                message: t
            }))).sort(((e, t) => e.message && t.message ? e.message.created_at > t.message.created_at ? -1 : 1 : e.message == t.message ? 0 : e.message ? -1 : 1))
        })), So.onceRoute("TOR_MESSAGE", (e => {
            if (!e.channel.startsWith("dm:") && e.sender != eb.id) {
                let l = t.value.find((t => t.id == e.channel));
                l && (l.message = e)
            }
        })), {
            state: eb,
            groups: t,
            search: function () {
                So.prompt("Digite o nome do grupo").then((t => {
                    (t = null == t ? void 0 : t.trim()) && (t.match(/^[\w-.]+$/) ? e.push("/tor/" + t) : So.alert("Grupo inválido"))
                }))
            }
        }
    }
},
    mb = Il(" Deep Web "),
    hb = Pl("div", {
        class: "bg-white rounded-full w-20 h-20 mr-4 flex flex-center"
    }, [Pl("i", {
        class: "fas fa-users text-4xl text-gray-500"
    })], -1),
    bb = {
        class: "text-2xl flex-1"
    },
    gb = {
        class: "flex justify-between"
    },
    vb = {
        class: "font-bold"
    },
    xb = {
        key: 0,
        class: "text-lg"
    },
    yb = {
        key: 0,
        class: "text-gray-400"
    },
    kb = {
        key: 0
    },
    wb = {
        key: 1
    },
    Cb = {
        key: 2
    },
    _b = {
        key: 1,
        class: "text-gray-400 italic"
    },
    Ab = Pl("i", {
        class: "fa fa-search"
    }, null, -1);
fb.render = function (e, t, l, n, a, o) {
    let r = dl("Page");
    return wl(), _l(r, {
        hasBell: "yes"
    }, {
        header: en((() => [mb])),
        default: en((() => [Pl("ul", null, [(wl(!0), _l(bl, null, fa(n.groups, (t => (wl(), _l("li", {
            key: t,
            onClick: l => e.$router.push("/tor/" + t.id),
            class: "p-5 flex items-start text-white hover:bg-gray-900"
        }, [hb, Pl("div", bb, [Pl("div", gb, [Pl("h1", vb, "#" + g(t.id), 1), t.message ? (wl(), _l("h1", xb, g(e.$filters.unixToRelative(t.message.created_at)), 1)) : Ml("", !0)]), t.message ? (wl(), _l("p", yb, [t.message.location ? (wl(), _l("span", kb, "🌎 Localização")) : t.message.image ? (wl(), _l("span", wb, "📷 Foto")) : (wl(), _l("span", Cb, g(t.message.content), 1))])) : (wl(), _l("p", _b, "Nenhuma mensagem..."))])], 8, ["onClick"])))), 128))]), Pl("button", {
            onClick: t[1] || (t[1] = (...e) => n.search && n.search(...e)),
            class: "absolute bottom-40 right-8 w-24 h-24 bg-tor text-white rounded-full"
        }, [Ab])])),
        _: 1
    })
};
const Sb = {
    components: {
        Page: Bh
    },
    setup() {
        let e = uc(),
            t = da((() => e.params.id)),
            l = !t.value.match(/^\d+$/),
            n = rt(l ? "#" + t.value : eb.getNickname(t.value)),
            a = da((() => l ? eb.groups.includes(t.value) : eb.direct.includes(t.value))),
            o = e.params.id,
            r = rt(""),
            s = rt([]),
            i = da((() => {
                let e, t = [];
                for (let l of s.value) (null == e ? void 0 : e[0].sender) != l.sender ? t.push(e = [l]) : e.push(l);
                return t
            }));

        function c(e) {
            var t;
            !0 !== e && r.value || null == (t = document.querySelector(".overflow-y-auto")) || t.scrollTo({
                top: 9e6,
                behavior: e ? "auto" : "smooth"
            })
        }
        async function u(e, t) {
            (e || t || r.value) && (So.backend.tor_send(l ? o : parseInt(o), r.value, e, t), r.value = "")
        }
        return So.backend.tor_messages(l ? o : parseInt(o)).then((e => {
            for (let t of e) try {
                let e = JSON.parse(t.content);
                3 === e.length && (t.location = e, t.content = "")
            } catch (e) { }
            s.value = e, Lt((() => c(!0)))
        })).catch((e => console.error(e))), So.onceRoute("TOR_MESSAGE", (e => {
            s.value.find((t => t.id == e.id)) || l && e.channel != t.value || (l || e.sender == t.value || e.sender == eb.id) && (s.value.push(e), Lt(c))
        })), {
            state: eb,
            input: r,
            messages: s,
            addMessage: u,
            blocks: i,
            addAttachment: async function () {
                let e = ["camera", "gallery", "location"];
                So.settings.allowUnsafeURL && e.splice(2, 0, "image"), l || So.isDisabled("tor-payments") || e.push("payment");
                let n = await go().request([
                    ["Câmera", "text-blue-500 text-center"],
                    ["Galeria", "text-blue-500 text-center"], e.includes("image") && ["Imagem", "text-blue-500 text-center"],
                    ["Localização", "text-blue-500 text-center"], e.includes("payment") && ["Pagamento", "text-blue-500 text-center"]
                ], 7 * e.length);
                try {
                    switch (e[n]) {
                        case "camera":
                            return u(await co(!1, "/tor"));
                        case "gallery":
                            return u(await fo());
                        case "image":
                            return u(await So.promptImageURL());
                        case "location":
                            let e = await So.getPlayerCoords();
                            return u(null, JSON.stringify(e));
                        case "payment":
                            let l = parseInt(await So.prompt("Insira o valor"));
                            l > 0 && So.lockAndProceed((() => So.backend.tor_pay(parseInt(t.value), l).then((e => {
                                So.alert(null == e ? void 0 : e.error)
                            }))))
                    }
                } catch (e) { }
            },
            setLocation: function (e) {
                So.pusher.emit("GPS", {
                    location: e
                })
            },
            ajustSize: c,
            isPinned: a,
            togglePinned: function () {
                let e = l ? eb.groups : eb.direct,
                    n = e.indexOf(t.value);
                n >= 0 ? e.splice(n, 1) : e.push(t.value)
            },
            isGroup: l,
            nickname: n,
            changeNickname: function () {
                So.prompt("Insira o apelido", 12).then((e => {
                    let l = null == e ? void 0 : e.trim();
                    l && l.length <= 12 && (eb.setNickname(t.value, l), n.value = l)
                }))
            }
        }
    }
},
    Tb = sn("data-v-1fdef7f8");
ln("data-v-1fdef7f8");
const Eb = {
    class: "flex items-center"
},
    Rb = {
        key: 0,
        class: "bg-white rounded-full w-12 h-12 mr-4 flex flex-center"
    },
    Pb = Pl("i", {
        class: "fas fa-users text-2xl text-gray-500"
    }, null, -1),
    Lb = {
        class: "ml-auto"
    },
    Ib = Pl("i", {
        class: "fas fa-user-tag"
    }, null, -1),
    Ob = {
        key: 0,
        class: "fal fa-times"
    },
    Mb = {
        key: 1,
        class: "fas fa-thumbtack transform rotate-45"
    },
    Vb = {
        key: 0,
        class: "text-white text-base"
    },
    Db = {
        class: "break-words relative mt-1"
    },
    Nb = {
        class: "mr-2"
    },
    Ub = {
        class: "text-base h-6 float-right relative top-3"
    },
    $b = {
        class: "h-20 px-4 flex items-center bg-tor-secondary"
    },
    jb = Pl("i", {
        class: "far fa-paper-plane"
    }, null, -1),
    Fb = Pl("i", {
        class: "far fa-paperclip transform rotate-180"
    }, null, -1);
an();
const zb = Tb(((e, t, l, n, a, o) => {
    let r = dl("Page");
    return wl(), _l(r, {
        footer: !1
    }, {
        header: Tb((() => [Pl("div", Eb, [n.isGroup ? (wl(), _l("div", Rb, [Pb])) : (wl(), _l("img", {
            key: 1,
            class: "w-12 h-12 bg-white rounded-full mr-4",
            src: "samba/stock/avatar.svg"
        }, null, 8, ["src"])), Pl("h1", null, g(n.nickname), 1), Pl("div", Lb, [n.isGroup ? Ml("", !0) : (wl(), _l("button", {
            key: 0,
            class: "mr-2 px-2",
            onClick: t[1] || (t[1] = (...e) => n.changeNickname && n.changeNickname(...e))
        }, [Ib])), Pl("button", {
            class: "mr-4 px-2",
            onClick: t[2] || (t[2] = (...e) => n.togglePinned && n.togglePinned(...e))
        }, [n.isPinned ? (wl(), _l("i", Ob)) : (wl(), _l("i", Mb))])])])])),
        footer: Tb((() => [Pl("div", $b, [Zn(Pl("input", {
            "onUpdate:modelValue": t[5] || (t[5] = e => n.input = e),
            onKeydown: t[6] || (t[6] = us((e => n.addMessage()), ["enter"])),
            class: "ml-8 flex-1 caret-tor text-white text-3xl bg-transparent",
            placeholder: "Mensagem"
        }, null, 544), [
            [ns, n.input, void 0, {
                trim: !0
            }]
        ]), n.input ? (wl(), _l("button", {
            key: 0,
            onClick: t[7] || (t[7] = e => n.addMessage()),
            class: "p-4 text-gray-500"
        }, [jb])) : (wl(), _l("button", {
            key: 1,
            onClick: t[8] || (t[8] = (...e) => n.addAttachment && n.addAttachment(...e)),
            class: "p-4 text-gray-500"
        }, [Fb]))])])),
        default: Tb((() => [(wl(!0), _l(bl, null, fa(n.blocks, ((l, a) => (wl(), _l("ul", {
            key: a,
            class: "p-4"
        }, [Pl("li", {
            class: ["flex", {
                "flex-row-reverse": l[0].sender == n.state.id
            }]
        }, [n.state.is(l[0]) ? Ml("", !0) : (wl(), _l("img", {
            key: 0,
            class: "w-16 h-16 bg-white rounded-full",
            src: "samba/stock/avatar.svg"
        }, null, 8, ["src"])), Pl("ul", {
            class: ["flex flex-col items-start w-full", l[0].sender == n.state.id ? "mr-4" : "ml-4"]
        }, [!n.state.is(l[0]) && n.isGroup ? (wl(), _l("li", Vb, [Pl("button", {
            onClick: t => e.$router.push("/tor/" + l[0].sender)
        }, "Usuário " + g(l[0].sender), 9, ["onClick"])])) : Ml("", !0), (wl(!0), _l(bl, null, fa(l, (l => {
            var a;
            return wl(), _l("li", {
                key: l.id,
                class: ["message p-2 rounded text-3xl text-white mb-1.5", [l.sender == n.state.id ? "ml-auto bg-tor" : "bg-gray-800"]]
            }, [l.image ? (wl(), _l("img", {
                key: 0,
                class: "w-full rounded",
                onLoad: t[3] || (t[3] = (...e) => n.ajustSize && n.ajustSize(...e)),
                src: l.image
            }, null, 40, ["src"])) : l.location ? (wl(), _l("img", {
                key: 1,
                onClick: e => n.setLocation(l.location),
                class: "w-full rounded",
                onLoad: t[4] || (t[4] = (...e) => n.ajustSize && n.ajustSize(...e)),
                src: "samba/stock/maps.jpg"
            }, null, 40, ["onClick"])) : Ml("", !0), Pl("p", Db, [Pl("span", Nb, g(l.content), 1), Pl("span", Ub, g(e.$filters.unixToHHMM(null != (a = l.created_at) ? a : Date.now())), 1)])], 2)
        })), 128))], 2)], 2)])))), 128))])),
        _: 1
    })
}));
Sb.render = zb, Sb.__scopeId = "data-v-1fdef7f8";
const Bb = {
    components: {
        Page: Bh
    },
    setup() {
        let e = cc(),
            t = rt([]),
            l = da((() => So.identity.moderator)),
            n = jl("useImageFocus");
        return So.backend.tor_ads().then((e => t.value = e)), {
            state: eb,
            create: function () {
                e.push("/tor/store/create")
            },
            ads: t,
            focusImage: n,
            destroy: function (e) {
                So.backend.tor_destroy_ad(e).then((() => {
                    t.value = t.value.filter((t => t.id != e))
                }))
            },
            moderator: l
        }
    }
},
    Hb = Il(" Deep Web "),
    qb = {
        class: "p-4"
    },
    Gb = {
        class: "bg-gray-800 rounded flex-1 p-3"
    },
    Wb = {
        class: "flex justify-between items-start mb-4"
    },
    Kb = {
        class: "font-bold break-words mr-2"
    },
    Jb = Pl("i", {
        class: "fal fa-times text-red-500"
    }, null, -1),
    Xb = {
        class: "text-xl mb-4"
    },
    Yb = {
        class: "text-lg"
    },
    Zb = Pl("i", {
        class: "fas fa-reply"
    }, null, -1),
    Qb = Il(" Conversar"),
    eg = Pl("i", {
        class: "far fa-plus"
    }, null, -1);
Bb.render = function (e, t, l, n, a, o) {
    let r = dl("Page");
    return wl(), _l(r, null, {
        header: en((() => [Hb])),
        default: en((() => [Pl("ul", qb, [(wl(!0), _l(bl, null, fa(n.ads, (t => (wl(), _l("li", {
            key: t.id,
            class: "flex text-white text-2xl mb-6"
        }, [Pl("img", {
            class: "w-20 h-20 rounded-full bg-white mr-4",
            src: "samba/stock/avatar.svg",
            alt: ""
        }, null, 8, ["src"]), Pl("div", Gb, [Pl("div", Wb, [Pl("h1", Kb, g(t.title), 1), n.moderator || n.state.id == t.anom_id ? (wl(), _l("button", {
            key: 0,
            onClick: e => n.destroy(t.id)
        }, [Jb], 8, ["onClick"])) : Ml("", !0)]), Pl("p", Xb, g(t.description), 1), t.image ? (wl(), _l("img", {
            key: 0,
            class: "h-64 mb-4 mx-auto",
            onClick: e => n.focusImage(t.image),
            src: t.image
        }, null, 8, ["onClick", "src"])) : Ml("", !0), Pl("p", Yb, "Autor: " + g(t.anom_id), 1), Pl("button", {
            onClick: l => e.$router.push(`/tor/${t.anom_id}`),
            class: "font-bold"
        }, [Zb, Qb], 8, ["onClick"])])])))), 128))]), Pl("button", {
            onClick: t[1] || (t[1] = (...e) => n.create && n.create(...e)),
            class: "absolute bottom-40 right-8 w-24 h-24 bg-tor text-white rounded-full"
        }, [eg])])),
        _: 1
    })
};
const tg = Ze({}),
    ng = {
        components: {
            Page: Bh
        },
        setup() {
            let e = cc();
            return {
                state: eb,
                form: tg,
                addImage: async function () {
                    try {
                        let e = await go().request([
                            ["Câmera", "text-center"],
                            ["Galeria", "text-center"]
                        ], 20, !0);
                        tg.image = e ? await fo() : await co(!1, "/tor")
                    } catch (e) { }
                },
                publish: function () {
                    tg.title && tg.description && (So.backend.tor_publish(tg).then((() => e.back())), Object.assign(tg, {
                        title: "",
                        description: "",
                        image: ""
                    }))
                }
            }
        }
    },
    lg = sn("data-v-a969c978");
ln("data-v-a969c978");
const ag = Il(" Deep Web "),
    sg = {
        class: "p-5 text-xl text-white"
    },
    og = Pl("h1", null, "Título", -1),
    rg = Pl("h1", null, "Descrição", -1),
    ig = Pl("h1", null, "Foto (Opcional)", -1),
    cg = {
        class: "text-right mt-4"
    };
an();
const ug = lg(((e, t, l, n, a, o) => {
    let r = dl("Page");
    return wl(), _l(r, {
        footer: !1
    }, {
        header: lg((() => [ag])),
        default: lg((() => [Pl("div", sg, [og, Zn(Pl("input", {
            "onUpdate:modelValue": t[1] || (t[1] = e => n.form.title = e),
            tabindex: "1"
        }, null, 512), [
            [ns, n.form.title, void 0, {
                trim: !0
            }]
        ]), rg, Zn(Pl("input", {
            "onUpdate:modelValue": t[2] || (t[2] = e => n.form.description = e),
            tabindex: "1"
        }, null, 512), [
            [ns, n.form.description, void 0, {
                trim: !0
            }]
        ]), ig, n.form.image ? (wl(), _l("img", {
            key: 0,
            class: "h-64 rounded mx-auto mt-4",
            src: n.form.image
        }, null, 8, ["src"])) : (wl(), _l("button", {
            key: 1,
            onClick: t[3] || (t[3] = e => n.addImage()),
            class: "bg-tor p-2"
        }, "Clique para adicionar")), Pl("div", cg, [Pl("button", {
            onClick: t[4] || (t[4] = e => n.publish()),
            class: "bg-tor p-2"
        }, "Publicar")])])])),
        _: 1
    })
}));
ng.render = ug, ng.__scopeId = "data-v-a969c978";
const dg = {
    components: {
        Page: Bh
    },
    setup() {
        let e = rt([]);
        return So.backend.tor_payments().then((t => {
            t.forEach((e => {
                e.sending = e.sender == eb.id
            })), e.value = t
        })), {
            state: eb,
            payments: e
        }
    }
},
    pg = Il(" Deep Web "),
    fg = {
        class: "p-4"
    },
    mg = {
        class: "break-words"
    },
    hg = {
        key: 0
    },
    bg = {
        key: 1
    };
dg.render = function (e, t, l, n, a, o) {
    let r = dl("Page");
    return wl(), _l(r, null, {
        header: en((() => [pg])),
        default: en((() => [Pl("ul", fg, [(wl(!0), _l(bl, null, fa(n.payments, (t => (wl(), _l("li", {
            key: t.id,
            class: ["flex items-start text-white text-xl mb-4", [t.sending ? "flex-row-reverse" : ""]]
        }, [Pl("img", {
            class: "w-14 h-14 rounded-full bg-white",
            src: "samba/stock/avatar.svg",
            alt: ""
        }, null, 8, ["src"]), Pl("div", {
            class: ["rounded flex-1 p-3", [t.sending ? "bg-tor mr-4" : "bg-gray-800 ml-4"]]
        }, [Pl("h1", mg, [t.sending ? (wl(), _l("span", hg, "Você enviou " + g(e.$filters.intToMoney(t.amount)) + " para @" + g(t.target), 1)) : (wl(), _l("span", bg, "Você recebeu " + g(e.$filters.intToMoney(t.amount)) + " de @" + g(t.sender), 1))])], 2)], 2)))), 128))])])),
        _: 1
    })
};
const gg = {
    profile: Ze(So.localhost ? {
        id: 1,
        username: "sambaroleplay",
        bio: "aaaaaaaaaaaaaaaaaaa",
        verified: 1,
        avatarURL: "samba/default.jpg"
    } : {}),
    stories: rt([]),
    storiesSeen: {},
    addStory(e) {
        this.stories.value.push(e), delete this.storiesSeen[e.author.username], this.sortStory()
    },
    remStory(e) {
        let t = this.stories.value,
            l = t.find((t => t.id == e));
        l && (t.splice(t.indexOf(l), 1), delete this.storiesSeen[l.author.username], this.sortStory())
    },
    showProfileMap(e) {
        go().clearAndRequest(Object.entries(e).map((([e, t]) => ({
            key: e,
            html: `\n      <div class="flex items-center">\n        <div class="w-16 h-16 bg-instagram rounded-full">\n          <img class="w-16 h-16 p-0.5 rounded-full" src="${zs(t)}">\n        </div>\n        <span class="ml-5">${zs(e)}</span>\n      </div>`
        }))), 50).then((e => e && VO.push("/instagram/profiles/" + e)))
    },
    getStoryMap() {
        let e = {};
        for (let t of this.stories.value) {
            let l = t.author.username;
            l in e ? e[l].push(t) : e[l] = [t]
        }
        for (let t in e) e[t].seen = !!this.storiesSeen[t];
        return e
    },
    markAsSeen(e) {
        this.storiesSeen[e] = !0, this.sortStory()
    },
    sortStory() {
        this.stories.value.sort(((e, t) => {
            let l = this.storiesSeen[e.author.username],
                n = this.storiesSeen[t.author.username];
            return e.author.username == t.author.username ? 0 : e.author.username == this.profile.username ? -1 : t.author.username == this.profile.username ? 1 : l != n ? l ? 1 : -1 : e.author.username.localeCompare(t.author.username)
        }))
    },
    async loadStories() {
        this.stories.value = await So.backend.ig_getStories(), this.sortStory()
    }
};
So.pusher.on("REFRESH", (() => {
    gg.profile = {}
})), So.pusher.on("INSTAGRAM_STORY", (e => {
    gg.addStory(e)
})), So.pusher.on("INSTAGRAM_DELETE_STORY", (e => {
    gg.remStory(e)
}));
const vg = {
    props: ["back"],
    setup() {
        let e = cc(),
            t = rt(So.hasNotificationFor("instagram"));
        Tn(t, (e => So.setNotificationFor("instagram", e)));
        let l = So.settings.instagramLogo;
        return {
            dark: So.darkTheme,
            notifications: t,
            logo: l,
            logout: function () {
                for (let e in gg.profile) delete gg.profile[e];
                So.backend.ig_logout(), e.replace("/instagram/login")
            }
        }
    }
},
    xg = {
        class: "h-32 pt-16 border-b border-theme bg-theme text-theme text-left flex-shrink-0"
    },
    yg = Pl("i", {
        class: "far fa-sign-out"
    }, null, -1);
vg.render = function (e, t, l, n, a, o) {
    return wl(), _l("div", xg, [Pl("img", {
        src: n.logo,
        class: "h-14 ml-6",
        style: {
            filter: n.dark ? "invert(1)" : ""
        }
    }, null, 12, ["src"]), Pl("button", {
        class: "absolute top-16 right-20",
        onClick: t[1] || (t[1] = e => n.logout())
    }, [yg]), Pl("button", {
        class: "absolute top-16 right-4",
        onClick: t[2] || (t[2] = e => n.notifications = !n.notifications)
    }, [Pl("i", {
        class: ["far", n.notifications ? "fa-bell" : "fa-bell-slash", "w-12"]
    }, null, 2)])])
};
const kg = {
    setup() {
        co();
        let e = cc();
        return {
            profile: gg.profile,
            createPost: async function () {
                try {
                    let t = await So.useAnyImage("/instagram");
                    setTimeout((() => e.replace({
                        path: "/instagram/create",
                        query: {
                            url: t
                        }
                    })), 200)
                } catch (e) { }
            }
        }
    }
},
    wg = Pl("div", {
        class: "w-full h-28"
    }, null, -1),
    Cg = {
        class: "absolute bottom-0 w-full h-28 bg-theme text-theme border-t border-theme px-2 grid grid-cols-5"
    },
    _g = Pl("i", {
        class: "fal fa-home-alt text-3xl"
    }, null, -1),
    Ag = {
        key: 0,
        class: "mx-auto w-1 h-1 bg-theme2 rounded-full"
    },
    Sg = Pl("i", {
        class: "fal fa-search text-3xl"
    }, null, -1),
    Tg = {
        key: 0,
        class: "mx-auto w-1 h-1 bg-theme2 rounded-full"
    },
    Eg = Pl("i", {
        class: "fal fa-plus-square text-3xl"
    }, null, -1),
    Rg = {
        key: 0,
        class: "mx-auto w-1 h-1 bg-theme2 rounded-full"
    },
    Pg = Pl("i", {
        class: "fal fa-heart text-3xl"
    }, null, -1),
    Lg = {
        key: 0,
        class: "mx-auto w-1 h-1 bg-theme2 rounded-full"
    };
kg.render = function (e, t, l, n, a, o) {
    var r;
    return wl(), _l(bl, null, [wg, Pl("div", Cg, [Pl("button", {
        onClick: t[1] || (t[1] = t => e.$router.replace("/instagram"))
    }, [_g, "/instagram" === e.$route.path ? (wl(), _l("div", Ag)) : Ml("", !0)]), Pl("button", {
        onClick: t[2] || (t[2] = t => e.$router.replace("/instagram/search"))
    }, [Sg, "/instagram/search" === e.$route.path ? (wl(), _l("div", Tg)) : Ml("", !0)]), Pl("button", {
        onClick: t[3] || (t[3] = (...e) => n.createPost && n.createPost(...e))
    }, [Eg, "/instagram/create" === e.$route.path ? (wl(), _l("div", Rg)) : Ml("", !0)]), Pl("button", {
        onClick: t[4] || (t[4] = t => e.$router.replace("/instagram/notifications"))
    }, [Pg, "/instagram/notifications" === e.$route.path ? (wl(), _l("div", Lg)) : Ml("", !0)]), Pl("button", {
        onClick: t[5] || (t[5] = t => e.$router.replace("/instagram/profiles/" + n.profile.username)),
        class: "mx-auto"
    }, [Pl("img", {
        class: "rounded-full h-12 w-12",
        src: null == (r = n.profile) ? void 0 : r.avatarURL
    }, null, 8, ["src"])])])], 64)
};
const Ig = {
    components: {
        Header: vg,
        Bottom: kg
    },
    setup() {
        let e = uc(),
            t = cc(),
            l = rt(!1),
            n = rt(e.query.url),
            a = rt("");
        return {
            selfie: l,
            image: n,
            content: a,
            publish: function () {
                So.backend.ig_createPost(n.value, a.value, !1).then((() => {
                    t.replace("/instagram")
                }))
            }
        }
    }
},
    Og = {
        class: "bg-theme text-theme h-full p-5"
    },
    Mg = {
        key: 0
    },
    Vg = {
        class: "mt-3"
    },
    Dg = Pl("label", null, "Status", -1),
    Ng = {
        class: "mt-3"
    };
Ig.render = function (e, t, l, n, a, o) {
    let r = dl("Header"),
        s = dl("app-input"),
        i = dl("Bottom");
    return wl(), _l(bl, null, [Pl(r), Pl("div", Og, [n.image ? (wl(), _l("div", Mg, [Pl("img", {
        class: "max-h-96 rounded-xl mx-auto",
        src: n.image
    }, null, 8, ["src"]), Pl("div", Vg, [Dg, Pl(s, {
        class: "bg-theme border-theme",
        placeholder: "Como você está se sentindo?",
        modelValue: n.content,
        "onUpdate:modelValue": t[1] || (t[1] = e => n.content = e),
        maxlength: "240"
    }, null, 8, ["modelValue"])]), Pl("div", Ng, [Pl("button", {
        onClick: t[2] || (t[2] = (...e) => n.publish && n.publish(...e)),
        class: "mt-5 bg-blue-500 p-3 text-white w-full rounded-xl"
    }, " Publicar ")])])) : Ml("", !0)]), Pl(i)], 64)
};
const Ug = {
    props: ["post"],
    setup(e) {
        let t = e.post,
            l = rt(""),
            {
                profile: n
            } = gg,
            a = uc(),
            o = cc(),
            r = jl("useImageFocus"),
            s = a.path.endsWith("/posts/" + t.id),
            i = da((() => gg.stories.value.some((e => e.author.username == t.author.username))));

        function c() {
            c.lastLike > Date.now() || (c.lastLike = Date.now() + 667, So.backend.ig_setLike(t.id, !t.likes.includes(n.id)))
        }
        return c.lastLike = 0, s ? (Tn(t.comments, (() => Lt((() => {
            let e = document.querySelector("ul[comments]");
            l.value || e.scrollTo(0, 9e6)
        })))), So.onceRoute("INSTAGRAM_LIKE", (({
            post_id: e,
            profile_id: l,
            toggle: n
        }) => {
            e == t.id && (n ? t.likes.push(l) : t.likes = t.likes.filter((e => e != l)))
        })), So.onceRoute("INSTAGRAM_REPLY", (e => {
            t.id == e.post_id && t.comments.push(e)
        }))) : (So.onceRoute("INSTAGRAM_LIKE", (({
            post_id: e,
            profile_id: l,
            toggle: n
        }) => {
            e == t.id && (n ? t.likes.push(l) : t.likes = t.likes.filter((e => e != l)))
        })), So.onceRoute("INSTAGRAM_REPLY", (({
            post_id: e
        }) => {
            e == t.id && (t.comments += 1)
        }))), {
            profile: n,
            hasStory: i,
            comment: l,
            reply: function () {
                var e;
                (null == (e = l.value) ? void 0 : e.trim()) && (So.backend.ig_reply(t.id, l.value), l.value = "")
            },
            like: c,
            showOptions: async function () {
                let e = {};
                (t.profile_id == n.id || So.identity.moderator) && (e.delete = "Excluir publicação"), t.profile_id != n.id && (!So.localhost && await So.backend.ig_isFollowing(t.profile_id) ? e.unfollow = "Deixar de seguir" : e.follow = "Seguir"), t.likes.includes(n.id) ? e.dislike = "Descurtir" : e.like = "Curtir", e.likes = "Ver curtidas", go().request(e, 33).then((e => {
                    switch (e) {
                        case "delete":
                            So.backend.ig_deletePost(t.id);
                            break;
                        case "likes":
                            So.backend.ig_getLikes(t.id).then((e => gg.showProfileMap(e)));
                            break;
                        case "like":
                            So.backend.ig_setLike(t.id, !0);
                            break;
                        case "dislike":
                            So.backend.ig_setLike(t.id, !1);
                            break;
                        case "follow":
                            So.backend.ig_setFollow(t.profile_id, !0);
                            break;
                        case "unfollow":
                            So.backend.ig_setFollow(t.profile_id, !1)
                    }
                }))
            },
            handleImageClick: function () {
                s ? r(t.image) : o.push("/instagram/posts/" + t.id)
            }
        }
    }
},
    $g = sn("data-v-1e9271c0");
ln("data-v-1e9271c0");
const jg = {
    class: "flex flex-col border-b border-theme flex-1"
},
    Fg = {
        class: "flex items-center p-3"
    },
    zg = Pl("i", {
        class: "far fa-ellipsis-v"
    }, null, -1),
    Bg = {
        class: "p-3 flex items-center"
    },
    Hg = {
        key: 0,
        class: "far fa-heart"
    },
    qg = {
        key: 1,
        class: "fas fa-heart text-red-500"
    },
    Gg = Pl("i", {
        class: "far fa-comment",
        style: {
            transform: "rotateY(180deg)"
        }
    }, null, -1),
    Wg = {
        key: 0,
        class: "ml-3"
    },
    Kg = {
        key: 1,
        class: "ml-3"
    },
    Jg = {
        class: "text-gray-500 text-xl ml-auto"
    },
    Xg = {
        key: 0,
        style: {
            flex: "1 0 0"
        },
        comments: "",
        class: "overflow-y-auto hide-scroll border-t border-theme p-3"
    },
    Yg = {
        key: 0,
        class: "mb-3"
    },
    Zg = {
        class: "mr-3"
    },
    Qg = {
        class: "font-light text-3xl break-words"
    },
    ev = {
        class: "mr-3"
    },
    tv = {
        class: "font-light text-3xl break-words"
    },
    nv = {
        key: 1,
        style: {
            flex: "1 0 0"
        },
        class: "p-3"
    },
    lv = {
        class: "mr-3"
    },
    av = {
        class: "text-3xl break-words"
    },
    sv = {
        key: 2,
        class: "border-t border-theme flex px-4 p-5 mb-3 flex-shrink-0"
    };
an();
const ov = $g(((e, t, l, n, a, o) => {
    var r, s;
    let i = dl("app-verified");
    return wl(), _l("div", jg, [Pl("div", Fg, [Pl("div", {
        class: ["h-20 w-20 rounded-full", {
            "bg-instagram": n.hasStory
        }]
    }, [Pl("img", {
        class: "h-20 w-20 rounded-full p-0.5",
        src: l.post.author.avatarURL,
        alt: ""
    }, null, 8, ["src"])], 2), Pl("h3", {
        class: "ml-5",
        onClick: t[1] || (t[1] = t => e.$router.replace("/instagram/profiles/" + l.post.author.username))
    }, g(null != (r = l.post.author.name) ? r : l.post.author.username), 1), (null == (s = l.post.author) ? void 0 : s.verified) ? (wl(), _l(i, {
        key: 0,
        class: "ml-3 w-8 h-8"
    })) : Ml("", !0), Pl("button", {
        class: "ml-auto text-theme px-6 py-3",
        onClick: t[2] || (t[2] = e => n.showOptions())
    }, [zg])]), Pl("img", {
        style: {
            "max-height": "32rem"
        },
        class: "block w-auto mx-auto",
        onClick: t[3] || (t[3] = (...e) => n.handleImageClick && n.handleImageClick(...e)),
        loading: "lazy",
        src: l.post.image,
        alt: ""
    }, null, 8, ["src"]), Pl("div", Bg, [Pl("button", {
        onClick: t[4] || (t[4] = e => n.like(l.post.id))
    }, [l.post.likes.includes(n.profile.id) ? (wl(), _l("i", qg)) : (wl(), _l("i", Hg)), Il(" " + g(l.post.likes.length.toLocaleString("pt-BR")), 1)]), Pl("button", {
        class: "ml-5",
        onClick: t[5] || (t[5] = t => e.$router.push("/instagram/posts/" + l.post.id))
    }, [Gg, Array.isArray(l.post.comments) ? (wl(), _l("span", Wg, g(l.post.comments.length.toLocaleString("pt-BR")), 1)) : (wl(), _l("span", Kg, g(l.post.comments.toLocaleString("pt-BR")), 1))]), Pl("span", Jg, g(e.$filters.unixToDayOfMonth(l.post.created_at)), 1)]), Array.isArray(l.post.comments) ? (wl(), _l("ul", Xg, [l.post.content ? (wl(), _l("li", Yg, [Pl("b", Zg, g(l.post.author.username), 1), Pl("span", Qg, g(l.post.content), 1)])) : Ml("", !0), (wl(!0), _l(bl, null, fa(l.post.comments, ((e, t) => (wl(), _l("li", {
        key: t
    }, [Pl("b", ev, g(e.author.username), 1), Pl("span", tv, g(e.content), 1)])))), 128))])) : l.post.content ? (wl(), _l("div", nv, [Pl("b", lv, g(l.post.author.username), 1), Pl("span", av, g(l.post.content), 1)])) : Ml("", !0), Array.isArray(l.post.comments) ? (wl(), _l("div", sv, [Zn(Pl("input", {
        type: "text",
        maxlength: "255",
        class: "w-full bg-theme pr-5",
        "onUpdate:modelValue": t[6] || (t[6] = e => n.comment = e),
        onKeydown: t[7] || (t[7] = us(((...e) => n.reply && n.reply(...e)), ["enter"])),
        placeholder: "Adicione um comentário"
    }, null, 544), [
        [ns, n.comment]
    ]), Pl("button", {
        class: [n.comment ? "text-blue-500" : "text-blue-200"],
        onClick: t[8] || (t[8] = (...e) => n.reply && n.reply(...e))
    }, "Post", 2)])) : Ml("", !0)])
}));
Ug.render = ov, Ug.__scopeId = "data-v-1e9271c0";
const rv = {
    setup() {
        let e = cc(),
            t = uc(),
            l = rt(0),
            n = rt(t.params.id),
            a = da((() => gg.stories.value.filter((e => e.author.username == n.value)))),
            o = da((() => a.value[l.value])),
            r = gg.stories.value.map((e => e.author.username)).filter(qs),
            s = da((() => n.value === gg.profile.username || So.identity.moderator));

        function i(e) {
            l.value = 0, n.value = e, a.effect()
        }

        function c() {
            let t = r.indexOf(n.value) + 1;
            gg.markAsSeen(n.value), t < r.length ? i(r[t]) : e.back()
        }
        return Tn(n, (t => e.replace("/instagram/stories/" + t))), {
            index: l,
            stories: a,
            current: o,
            next: function (e = 1) {
                if (e < 0) return function () {
                    if (0 == l.value) {
                        let e = r.indexOf(n.value) - 1; - 1 != e && i(r[e])
                    } else l.value -= 1
                }();
                l.value + 1 >= a.value.length ? c() : l.value += 1
            },
            destroy: async function () {
                var e;
                let t = l.value,
                    n = a.value.length,
                    o = null == (e = a.value) ? void 0 : e[t];
                o && So.backend.ig_deleteStory(o.id).then((() => {
                    (1 == n || t >= n - 1) && c()
                }))
            },
            canDestroy: s
        }
    }
},
    iv = sn("data-v-5e4237d2");
ln("data-v-5e4237d2");
const cv = {
    class: "absolute inset-0 pt-16 h-32 w-full bg-theme z-1 text-center"
},
    uv = Pl("i", {
        class: "fas fa-chevron-left text-blue-400"
    }, null, -1),
    dv = {
        class: "text-theme"
    },
    pv = Pl("i", {
        class: "far fa-trash-alt text-red-500"
    }, null, -1),
    fv = {
        key: 2,
        class: "absolute break-words bottom-48 p-2 left-2 right-2 rounded-2xl text-center text-white bg-black bg-opacity-50"
    },
    mv = {
        class: "absolute bottom-8 w-full flex justify-center"
    },
    hv = {
        key: 0,
        class: "w-4 h-4 rounded-full bg-gray-200"
    },
    bv = {
        key: 1,
        class: "w-4 h-4 rounded-full border bg-gray-600"
    };
an();
const gv = iv(((e, t, l, n, a, o) => {
    var r, s, i;
    let c = dl("app-verified");
    return wl(), _l("div", {
        class: "bg-theme p-2 h-full flex flex-col justify-center",
        key: e.$route.params.id
    }, [Pl("div", cv, [Pl("button", {
        onClick: t[1] || (t[1] = t => e.$router.back()),
        class: "absolute top-16 left-0 px-5"
    }, [uv]), Pl("span", dv, [Il(g(e.$route.params.id.substr(0, 16)) + " ", 1), (null == (r = n.stories[n.index]) ? void 0 : r.author.verified) ? (wl(), _l(c, {
        key: 0,
        class: "inline w-8 h-8"
    })) : Ml("", !0)]), n.canDestroy ? (wl(), _l("button", {
        key: 0,
        onClick: t[2] || (t[2] = (...e) => n.destroy && n.destroy(...e)),
        class: "absolute top-16 right-0 px-5"
    }, [pv])) : Ml("", !0)]), Pl("div", {
        class: "absolute top-32 -left-2 -right-2 -bottom-2",
        style: {
            background: "black",
            backgroundImage: "url(" + n.current.image + ")",
            backgroundSize: "100% 100%",
            filter: "blur(5px)"
        }
    }, null, 4), n.current.video ? (wl(), _l("video", {
        key: 0,
        onEnded: t[3] || (t[3] = e => n.next()),
        src: n.current.video,
        class: "absolute left-0 right-0 w-full",
        autoplay: "",
        controls: ""
    }, null, 40, ["src"])) : (wl(), _l("img", {
        key: 1,
        class: "absolute left-0 right-0 w-full",
        src: n.current.image
    }, null, 8, ["src"])), Pl("button", {
        class: "absolute left-0 h-1/3 w-5/12",
        onClick: t[4] || (t[4] = e => n.next(-1))
    }), Pl("button", {
        class: "absolute right-0 h-1/3 w-5/12",
        onClick: t[5] || (t[5] = e => n.next())
    }), (null == (s = n.stories[n.index]) ? void 0 : s.content) ? (wl(), _l("h1", fv, g(null == (i = n.stories[n.index]) ? void 0 : i.content), 1)) : Ml("", !0), Pl("div", mv, [(wl(!0), _l(bl, null, fa(n.stories, ((e, t) => (wl(), _l("div", {
        key: t,
        class: "mr-2 last:mr-0"
    }, [t == n.index ? (wl(), _l("div", hv)) : (wl(), _l("div", bv))])))), 128))])])
}));
rv.render = gv, rv.__scopeId = "data-v-5e4237d2";
const vv = {
    components: {
        Header: vg,
        NavBar: kg,
        AddPost: Ig,
        Post: Ug,
        Story: rv
    },
    setup() {
        jl("setDark")();
        let e = jl("prompt"),
            t = jl("videoCamera"),
            l = Ze([]),
            {
                profile: n
            } = gg,
            a = co(),
            o = da((() => gg.getStoryMap())),
            r = rt(So.hasNotificationFor("instagram"));
        return Tn(r, (e => So.setNotificationFor("instagram", e))), So.backend.ig_getTimeline().then((e => {
            l.length = 0, Object.assign(l, e)
        })), So.onceRoute("INSTAGRAM_POST", (e => {
            l.unshift(e) > 100 && (l.length = 100)
        })), So.onceRoute("INSTAGRAM_DESTROY", (e => {
            let t = l.findIndex((t => t.id == e)); - 1 != t && l.splice(t, 1)
        })), So.localhost && l.push({
            id: 1,
            author: {
                username: "sambaroleplay",
                verified: 1
            },
            content: "Hello world",
            image: "",
            likes: [],
            comments: 0,
            created_at: Date.now() / 1e3
        }), So.pusher.removeAllListeners("INSTAGRAM_LIKE"), So.pusher.removeAllListeners("INSTAGRAM_REPLY"), {
            dark: So.storage.darkTheme,
            notifications: r,
            profile: n,
            stories: o,
            posts: l,
            createStory: async function () {
                try {
                    let l, n = await go().request([
                        ["Vídeo", "self-center"],
                        ["Câmera", "self-center"],
                        ["Galeria", "self-center"], So.settings.allowUnsafeURL && ["Imagem", "self-center"]
                    ], 25, !0),
                        o = "";
                    0 == n ? ([l, thumbnail] = await t(), o = await to.upload(thumbnail, "jpg")) : o = 1 == n ? await a.request(!1, "/instagram") : 2 == n ? await fo() : await So.promptImageURL();
                    let r = await e("Status");
                    So.backend.ig_createStory(o, r, l)
                } catch (e) { }
            }
        }
    }
},
    xv = {
        class: "flex flex-col h-full"
    },
    yv = {
        class: "flex-1 overflow-y-auto hide-scroll bg-theme text-theme"
    },
    kv = {
        class: "h-44 px-2 flex items-center border-b border-theme shadow overflow-x-auto fancy-scroll"
    },
    wv = {
        key: 0,
        class: "flex-shrink-0"
    },
    Cv = {
        class: "flex flex-center rounded-full relative"
    },
    _v = Pl("i", {
        class: "fas fa-plus text-base text-white"
    }, null, -1),
    Av = Pl("h1", {
        class: "text-lg text-center"
    }, "Seu story", -1),
    Sv = Pl("i", {
        class: "fas fa-plus text-base text-white"
    }, null, -1),
    Tv = {
        class: "w-28 overflow-x-hidden text-lg text-center"
    };
vv.render = function (e, t, l, n, a, o) {
    let r = dl("Header"),
        s = dl("Post"),
        i = dl("NavBar");
    return wl(), _l("div", xv, [Pl(r), Pl("div", yv, [Pl("ul", kv, [n.stories[n.profile.username] ? Ml("", !0) : (wl(), _l("li", wv, [Pl("div", Cv, [Pl("img", {
        class: "w-28 h-28 p-1 rounded-full",
        src: n.profile.avatarURL
    }, null, 8, ["src"]), Pl("button", {
        onClick: t[1] || (t[1] = is(((...e) => n.createStory && n.createStory(...e)), ["stop"])),
        class: [n.dark ? "border-black" : "border-white", "absolute bottom-1 right-1 border-2 bg-lightBlue-600 w-8 h-8 rounded-full text-white flex flex-center"]
    }, [_v], 2)]), Av])), (wl(!0), _l(bl, null, fa(n.stories, ((l, a) => (wl(), _l("li", {
        class: "ml-1 last:pr-1 flex-shrink-0",
        key: a
    }, [Pl("div", {
        class: ["w-28 flex flex-center rounded-full relative", {
            "bg-instagram": !l.seen || n.profile.username == a
        }],
        onClick: t => e.$router.push("/instagram/stories/" + a)
    }, [Pl("img", {
        class: "w-28 h-28 p-1 rounded-full",
        src: l[0].image
    }, null, 8, ["src"]), n.profile.username == a ? (wl(), _l("button", {
        key: 0,
        class: [n.dark ? "border-black" : "border-white", "absolute bottom-1 right-1 border-2 bg-lightBlue-600 w-8 h-8 rounded-full text-white flex flex-center"],
        onClick: t[2] || (t[2] = is(((...e) => n.createStory && n.createStory(...e)), ["stop"]))
    }, [Sv], 2)) : Ml("", !0)], 10, ["onClick"]), Pl("h1", Tv, g(n.profile.username == a ? "Seu story" : a), 1)])))), 128))]), Pl("ul", null, [(wl(!0), _l(bl, null, fa(n.posts, (e => (wl(), _l("li", {
        postid: e.id,
        key: e.id
    }, [Pl(s, {
        post: e
    }, null, 8, ["post"])], 8, ["postid"])))), 128))])]), Pl(i)])
};
const Ev = {
    setup() {
        jl("setDark")();
        let e = rt(!0),
            t = rt(1),
            l = rt([]),
            n = So.settings.instagramLogo;
        return So.backend.ig_accounts().then((async n => {
            l.value = n, t.value = await So.backend.ig_max_accounts(), e.value = !1
        })), gg.profile.id && VO.replace("/instagram"), {
            dark: So.storage.darkTheme,
            logo: n,
            max: t,
            accounts: l,
            login: async function (e) {
                let t = await So.backend.ig_login(e);
                t && (Object.assign(gg.profile, t), gg.loadStories(), VO.replace("/instagram"))
            },
            isLoading: e
        }
    }
},
    Rv = {
        key: 0,
        class: "h-full bg-theme"
    },
    Pv = {
        key: 1,
        class: "flex flex-col h-full bg-theme text-theme p-5 pt-24"
    },
    Lv = {
        class: "mb-8"
    },
    Iv = {
        class: "w-3/4 mx-auto"
    },
    Ov = {
        class: "ml-2 flex flex-col"
    },
    Mv = {
        class: "text-2xl"
    },
    Vv = {
        class: "text-xl"
    };
Ev.render = function (e, t, l, n, a, o) {
    return n.isLoading ? (wl(), _l("div", Rv)) : (wl(), _l("div", Pv, [Pl("div", Lv, [Pl("img", {
        class: "h-16 mx-auto",
        src: n.logo,
        style: {
            filter: "invert(" + (n.dark ? 1 : 0) + ")"
        }
    }, null, 12, ["src"])]), Pl("ul", Iv, [(wl(!0), _l(bl, null, fa(n.accounts, (e => {
        var t;
        return wl(), _l("li", {
            class: "flex items-center mb-5",
            key: e.id
        }, [Pl("img", {
            class: "w-24 h-24 rounded-lg",
            src: e.avatarURL
        }, null, 8, ["src"]), Pl("div", Ov, [Pl("h1", Mv, g(null != (t = e.name) ? t : e.username), 1), Pl("h3", Vv, "@" + g(e.username), 1)]), Pl("button", {
            onClick: t => n.login(e.id),
            class: "ml-auto bg-blue-500 rounded-xl text-white text-lg p-2 px-4"
        }, "Login", 8, ["onClick"])])
    })), 128))]), n.max > n.accounts.length ? (wl(), _l("div", {
        key: 0,
        class: ["text-center", {
            "my-auto": !n.accounts.length
        }]
    }, [Pl("button", {
        onClick: t[1] || (t[1] = t => e.$router.replace("/instagram/register")),
        class: "w-2/3 text-center bg-blue-500 rounded-xl text-white text-2xl p-2"
    }, "Criar uma conta")], 2)) : Ml("", !0)]))
};
const Dv = rt(""),
    Nv = rt(""),
    Uv = rt(""),
    $v = rt(""),
    jv = {
        setup() {
            jl("setDark")();
            let e = jl("alert"),
                t = So.settings.instagramLogo;
            return {
                dark: So.storage.darkTheme,
                avatarURL: Dv,
                name: Nv,
                username: Uv,
                bio: $v,
                takeSelfie: async function () {
                    try {
                        let e = await So.useAnyImage("/instagram", !0);
                        Dv.value = e
                    } catch (e) { }
                },
                createAccount: function () {
                    var t;
                    if (["register", "search", "create", "liked", "stories"].includes(null == (t = Uv.value) ? void 0 : t.toLowerCase())) return e("Este nome não pode ser utilizado");
                    Dv.value ? So.backend.ig_register(Nv.value, Uv.value, $v.value, Dv.value).then((t => {
                        if (t.error) e(t.error);
                        else
                            for (let e of (VO.replace("/instagram/login"), [Dv, Nv, Uv, $v])) e.value = ""
                    })) : e("A selfie é obrigatória!")
                },
                logo: t
            }
        }
    },
    Fv = {
        class: "flex flex-col h-full bg-theme text-theme p-5 pt-24"
    },
    zv = {
        class: "mb-8"
    },
    Bv = {
        class: "w-64 h-64 bg-instagram mx-auto rounded-full"
    },
    Hv = Pl("span", {
        class: "text-center text-gray-500 text-xl mt-2"
    }, "Clique na imagem para alterar", -1),
    qv = {
        key: 0
    },
    Gv = {
        class: "mt-3"
    },
    Wv = Pl("label", null, "Nome", -1),
    Kv = {
        class: "mt-3"
    },
    Jv = Pl("label", null, "Usuário", -1),
    Xv = {
        class: "mt-3"
    },
    Yv = Pl("label", null, "Biografia", -1),
    Zv = {
        class: "mt-3"
    };
jv.render = function (e, t, l, n, a, o) {
    let r = dl("app-input");
    return wl(), _l("div", Fv, [Pl("div", zv, [Pl("img", {
        class: "h-16 mx-auto",
        src: n.logo,
        style: {
            filter: "invert(" + (n.dark ? 1 : 0) + ")"
        }
    }, null, 12, ["src"])]), Pl("div", Bv, [Pl("img", {
        onClick: t[1] || (t[1] = (...e) => n.takeSelfie && n.takeSelfie(...e)),
        class: "rounded-full w-64 h-64 p-1",
        src: n.avatarURL || e.$asset("/stock/user.jpg")
    }, null, 8, ["src"])]), Hv, n.avatarURL ? (wl(), _l("div", qv, [Pl("div", Gv, [Wv, Pl(r, {
        maxlength: "32",
        modelValue: n.name,
        "onUpdate:modelValue": t[2] || (t[2] = e => n.name = e),
        class: "text-3xl bg-theme border-theme"
    }, null, 8, ["modelValue"])]), Pl("div", Kv, [Jv, Pl(r, {
        maxlength: "24",
        modelValue: n.username,
        "onUpdate:modelValue": t[3] || (t[3] = e => n.username = e),
        class: "text-3xl bg-theme border-theme"
    }, null, 8, ["modelValue"])]), Pl("div", Xv, [Yv, Pl(r, {
        maxlength: "255",
        modelValue: n.bio,
        "onUpdate:modelValue": t[4] || (t[4] = e => n.bio = e),
        class: "text-3xl bg-theme border-theme"
    }, null, 8, ["modelValue"])]), Pl("div", Zv, [Pl("button", {
        onClick: t[5] || (t[5] = (...e) => n.createAccount && n.createAccount(...e)),
        class: "w-full text-center bg-blue-500 rounded-xl text-white p-3"
    }, "Cadastre-se")])])) : Ml("", !0)])
};
const Qv = {
    components: {
        Header: vg,
        NavBar: kg
    },
    setup() {
        let e = rt(""),
            t = rt([]),
            l = null;

        function n() {
            So.backend.ig_search(e.value).then((e => {
                t.value = e.length && e
            }))
        }
        return Tn(e, (e => {
            if (!e) return t.value = [];
            clearTimeout(l), l = setTimeout(n, 500)
        })), {
            query: e,
            profiles: t
        }
    }
},
    ex = {
        class: "h-full flex flex-col bg-theme text-theme"
    },
    tx = {
        class: "p-3"
    },
    nx = {
        class: "relative"
    },
    lx = Pl("i", {
        class: "fal fa-search absolute inset-y-5 left-4 text-gray-400 text-lg"
    }, null, -1),
    ax = {
        key: 0,
        class: "p-3"
    },
    sx = {
        key: 1,
        class: "flex-1 overflow-y-auto hide-scroll p-3"
    },
    ox = {
        class: "bg-instagram w-24 h-24 rounded-full mr-3"
    };
Qv.render = function (e, t, l, n, a, o) {
    let r = dl("Header"),
        s = dl("app-input"),
        i = dl("app-verified"),
        c = dl("nav-bar");
    return wl(), _l("div", ex, [Pl(r), Pl("div", tx, [Pl("div", nx, [lx, Pl(s, {
        class: "bg-theme text-2xl border-theme pl-12",
        modelValue: n.query,
        "onUpdate:modelValue": t[1] || (t[1] = e => n.query = e),
        placeholder: "Nome de usuário"
    }, null, 8, ["modelValue"])])]), n.query && !n.profiles ? (wl(), _l("h1", ax, "Nenhum resultado encontrado")) : (wl(), _l("ul", sx, [(wl(!0), _l(bl, null, fa(n.profiles, (t => (wl(), _l("li", {
        key: t.id,
        onClick: l => e.$router.push("/instagram/profiles/" + t.username),
        class: "flex items-center mb-2 last:mb-0"
    }, [Pl("div", ox, [Pl("img", {
        src: t.avatarURL,
        class: "p-0.5 w-24 h-24 rounded-full"
    }, null, 8, ["src"])]), Pl("span", null, g(t.username), 1), t.verified ? (wl(), _l(i, {
        key: 0,
        class: "w-8 h-8 ml-3 mt-2"
    })) : Ml("", !0)], 8, ["onClick"])))), 128))])), Pl(c)])
};
const rx = {
    components: {
        Header: vg,
        NavBar: kg
    },
    setup() {
        jl("setDark")();
        let e = rt(!1),
            t = rt([]);
        return So.backend.ig_notifications().then((l => {
            t.value = l, e.value = !1
        })).then((() => So.backend.ig_saw_notifications())), {
            loading: e,
            notifications: t
        }
    }
},
    ix = {
        class: "flex flex-col bg-theme text-theme h-full"
    },
    cx = {
        key: 0,
        class: "h-full flex flex-col flex-center"
    },
    ux = {
        key: 1,
        class: "p-5 text-center"
    },
    dx = {
        key: 2,
        class: "overflow-y-auto hide-scroll flex-1 p-5"
    },
    px = {
        class: "ml-4 mt-2 text-3xl"
    },
    fx = {
        class: "text-gray-500"
    };
rx.render = function (e, t, l, n, a, o) {
    let r = dl("Header"),
        s = dl("app-loading"),
        i = dl("nav-bar");
    return wl(), _l("div", ix, [Pl(r), n.loading ? (wl(), _l("div", cx, [Pl(s, {
        style: {
            filter: "invert(1)"
        }
    })])) : n.notifications.length ? (wl(), _l("ul", dx, [(wl(!0), _l(bl, null, fa(n.notifications, (t => {
        var l;
        return wl(), _l("li", {
            key: t.id,
            class: "flex items-start mb-5"
        }, [Pl("img", {
            class: "w-24 h-24 rounded-full",
            src: null != (l = t.avatarURL) ? l : e.$asset("/stock/user.svg")
        }, null, 8, ["src"]), Pl("p", px, [Il(g(t.content) + " ", 1), Pl("span", fx, g(e.$filters.unixToRelative(t.created_at)), 1)])])
    })), 128))])) : (wl(), _l("h1", ux, "Nenhuma notificação")), Pl(i)])
};
const mx = {
    components: {
        Header: vg,
        Bottom: kg
    },
    setup() {
        jl("setDark")();
        let e = jl("alert"),
            t = Ze({}),
            l = Ze({});
        Object.assign(l, gg.profile), Object.assign(t, gg.profile);
        let n = da((() => {
            for (let e of ["name", "username", "bio"])
                if (t[e] != l[e]) return !0;
            return !1
        }));
        return {
            profile: l,
            changeAvatar: async function () {
                try {
                    let e = await So.useAnyImage("/instagram", !0);
                    t.avatarURL = l.avatarURL = e, gg.profile.avatarURL = e, So.backend.ig_changeAvatar(e)
                } catch (e) { }
            },
            hasChanges: n,
            save: function () {
                So.backend.ig_updateProfile({
                    name: l.name,
                    username: l.username,
                    bio: l.bio
                }).then((n => {
                    if (null == n ? void 0 : n.error) e(n.error);
                    else {
                        for (let e of gg.stories.value) e.author.username == t.username && (e.author.username = l.username);
                        gg.sortStory(), Object.assign(t, l), Object.assign(gg.profile, l)
                    }
                }))
            }
        }
    }
},
    hx = {
        class: "h-full bg-theme text-theme"
    },
    bx = {
        class: "mt-16 text-center"
    },
    gx = {
        class: "mt-8 mx-4"
    },
    vx = Pl("label", {
        class: "text-gray-400 font-semibold text-2xl"
    }, "Nome", -1),
    xx = {
        class: "mt-6 mx-4"
    },
    yx = Pl("label", {
        class: "text-gray-400 font-semibold text-2xl"
    }, "Usuário", -1),
    kx = {
        class: "mt-6 mx-4"
    },
    wx = Pl("label", {
        class: "text-gray-400 font-semibold text-2xl"
    }, "Bio", -1),
    Cx = Pl("i", {
        class: "fal fa-check mr-2"
    }, null, -1),
    _x = Il(" Salvar ");
mx.render = function (e, t, l, n, a, o) {
    let r = dl("Header"),
        s = dl("Bottom");
    return wl(), _l("div", hx, [Pl(r), Pl("div", bx, [Pl("img", {
        class: "mx-auto w-48 h-48 rounded-full",
        src: n.profile.avatarURL
    }, null, 8, ["src"]), Pl("button", {
        onClick: t[1] || (t[1] = (...e) => n.changeAvatar && n.changeAvatar(...e)),
        class: "font-semibold text-blue-500"
    }, " Mudar foto de perfil ")]), Pl("div", gx, [vx, Zn(Pl("input", {
        "onUpdate:modelValue": t[2] || (t[2] = e => n.profile.name = e),
        maxlength: "32",
        class: "block w-full bg-transparent p-1 border-b border-theme"
    }, null, 512), [
        [ns, n.profile.name]
    ])]), Pl("div", xx, [yx, Zn(Pl("input", {
        "onUpdate:modelValue": t[3] || (t[3] = e => n.profile.username = e),
        maxlength: "24",
        class: "block w-full bg-transparent p-1 border-b border-theme"
    }, null, 512), [
        [ns, n.profile.username]
    ])]), Pl("div", kx, [wx, Zn(Pl("input", {
        maxlength: "255",
        "onUpdate:modelValue": t[4] || (t[4] = e => n.profile.bio = e),
        class: "block w-full bg-transparent p-1 border-b border-theme"
    }, null, 512), [
        [ns, n.profile.bio]
    ])]), n.hasChanges ? (wl(), _l("button", {
        key: 0,
        onClick: t[5] || (t[5] = (...e) => n.save && n.save(...e)),
        class: "absolute bottom-32 right-4 bg-blue-500 text-white rounded-xl p-2 px-4"
    }, [Cx, _x])) : Ml("", !0), Pl(s)])
};
const Ax = {
    components: {
        Bottom: kg,
        Header: vg,
        Post: Ug,
        Menu: or
    },
    setup() {
        let e = uc(),
            t = rt(),
            l = Ze([]);

        function n(e) {
            n.last > Date.now() || (n.last = Date.now() + 1e3, So.backend.ig_setFollow(t.value.id, e).then((() => {
                t.value.isFollowed = e, t.value.followers += e ? 1 : -1
            })))
        }
        return So.backend.ig_getProfile(e.params.id).then((e => {
            e ? (e.profile.isYou = e.profile.id == gg.profile.id, t.value = e.profile, t.value.hasStory = gg.stories.value.some((t => t.author.username == e.profile.username)), l.push(...e.posts)) : t.value = !1
        })), n.last = 0, So.onceRoute("INSTAGRAM_DESTROY", (e => {
            let t = l.findIndex((t => t.id == e)); - 1 != t && l.splice(t, 1)
        })), {
            profile: t,
            posts: l,
            setFollow: n,
            getFollowers: function () {
                So.backend.ig_getFollowers(t.value.id).then((e => gg.showProfileMap(e)))
            },
            getFollowing: function () {
                So.backend.ig_getFollowing(t.value.id).then((e => gg.showProfileMap(e)))
            }
        }
    }
},
    Sx = {
        class: "bg-theme text-theme h-full flex flex-col"
    },
    Tx = {
        key: 0,
        class: "p-3"
    },
    Ex = {
        key: 1,
        class: "p-3 flex items-center border-b border-theme shadow-lg"
    },
    Rx = {
        class: "flex-1 flex flex-col items-start"
    },
    Px = {
        class: "ml-4 mb-4 flex"
    },
    Lx = {
        class: "grid grid-cols-3 p-5 gap-5"
    },
    Ix = {
        class: "text-center text-2xl"
    },
    Ox = {
        class: "font-bold block"
    },
    Mx = Pl("span", {
        class: "text-gray-500"
    }, "Posts", -1),
    Vx = {
        class: "font-bold block"
    },
    Dx = Pl("span", {
        class: "text-gray-500"
    }, "Seguidores", -1),
    Nx = {
        class: "font-bold block"
    },
    Ux = Pl("span", {
        class: "text-gray-500"
    }, "Seguindo", -1),
    $x = {
        class: "text-2xl mb-4 mx-4"
    },
    jx = {
        class: "font-bold"
    },
    Fx = {
        class: "px-4 w-full"
    },
    zx = {
        class: "overflow-y-auto hide-scroll grid grid-cols-3"
    },
    Bx = {
        key: 2,
        class: "text-center mt-4"
    };
Ax.render = function (e, t, l, n, a, o) {
    var r;
    let s = dl("Header"),
        i = dl("app-verified"),
        c = dl("Bottom");
    return wl(), _l("div", Sx, [Pl(s), !1 === n.profile ? (wl(), _l("h1", Tx, "Perfil não encontrado")) : n.profile ? (wl(), _l("div", Ex, [Pl("div", Rx, [Pl("div", Px, [Pl("div", {
        class: ["w-28 h-28", {
            "bg-instagram rounded-full": n.profile.hasStory
        }]
    }, [Pl("img", {
        src: n.profile.avatarURL,
        class: "w-28 h-28 p-0.5 rounded-full"
    }, null, 8, ["src"])], 2), Pl("div", Lx, [Pl("div", Ix, [Pl("span", Ox, g(n.profile.posts || 0), 1), Mx]), Pl("div", {
        class: "text-center text-2xl",
        onClick: t[1] || (t[1] = (...e) => n.getFollowers && n.getFollowers(...e))
    }, [Pl("span", Vx, g(n.profile.followers || 0), 1), Dx]), Pl("div", {
        class: "text-center text-2xl",
        onClick: t[2] || (t[2] = (...e) => n.getFollowing && n.getFollowing(...e))
    }, [Pl("span", Nx, g(n.profile.following || 0), 1), Ux])])]), Pl("div", $x, [Pl("h1", jx, [Il(g(null != (r = n.profile.name) ? r : n.profile.username) + " ", 1), n.profile.verified ? (wl(), _l(i, {
        key: 0,
        class: "inline ml-1 mb-0.5 w-6 h-6"
    })) : Ml("", !0)]), Pl("p", null, g(n.profile.bio), 1)]), Pl("div", Fx, [n.profile.isYou ? (wl(), _l("button", {
        key: 0,
        onClick: t[3] || (t[3] = t => e.$router.push("/instagram/edit")),
        class: "block w-full border border-theme p-1 rounded-xl"
    }, " Editar perfil ")) : (wl(), _l("button", {
        key: 1,
        onClick: t[4] || (t[4] = e => n.setFollow(!n.profile.isFollowed)),
        class: "block w-full bg-blue-500 p-1 text-white rounded-xl"
    }, g(n.profile.isFollowed ? "Deixar de seguir" : "Seguir"), 1))])])])) : Ml("", !0), Pl("ul", zx, [(wl(!0), _l(bl, null, fa(n.posts, (t => (wl(), _l("li", {
        key: t.id,
        onClick: l => e.$router.push("/instagram/posts/" + t.id)
    }, [Pl("div", {
        class: "h-56 bg-cover bg-center",
        style: {
            backgroundImage: "url(" + t.image + ")"
        }
    }, null, 4)], 8, ["onClick"])))), 128))]), n.profile && !n.posts.length ? (wl(), _l("h3", Bx, "Este usuário não tem publicações")) : Ml("", !0), Pl(c)])
};
const Hx = {
    components: {
        Header: vg,
        NavBar: kg,
        Post: Ug
    },
    setup() {
        let e = rt(!0),
            t = rt(),
            l = cc(),
            n = uc();
        return So.backend.ig_getPost(n.params.id).then((l => {
            t.value = l, e.value = !1
        })), So.onceRoute("INSTAGRAM_DESTROY", (e => {
            var n;
            (null == (n = t.value) ? void 0 : n.id) == e && l.back()
        })), {
            loading: e,
            post: t
        }
    }
},
    qx = {
        class: "flex flex-col bg-theme text-theme h-full"
    },
    Gx = {
        key: 0
    },
    Wx = {
        key: 2
    };
Hx.render = function (e, t, l, n, a, o) {
    let r = dl("Header"),
        s = dl("Post");
    return wl(), _l("div", qx, [Pl(r, {
        back: "Voltar"
    }), n.loading ? (wl(), _l("div", Gx)) : n.post ? (wl(), _l(s, {
        key: 1,
        post: n.post
    }, null, 8, ["post"])) : (wl(), _l("h1", Wx, "Post não encontrado"))])
};
const Kx = rt(),
    Jx = {
        setup() {
            var e;
            return {
                logo: null != (e = So.settings.twitterLogo) ? e : globalThis.twitterLogo,
                profile: Kx,
                scrollTop: function () {
                    let e = document.querySelector(".overflow-y-auto");
                    e && (e.scrollTop = 0)
                }
            }
        }
    },
    Xx = {
        class: "flex-shrink-0 h-28 border-b border-theme flex justify-center items-end pb-3"
    };
Jx.render = function (e, t, l, n, a, o) {
    return wl(), _l("div", Xx, [Pl("img", {
        onClick: t[1] || (t[1] = t => {
            var l;
            return e.$router.push("/twitter/profiles/" + (null == (l = n.profile) ? void 0 : l.id))
        }),
        class: "absolute left-8 w-12 h-12 rounded-full",
        src: n.profile.avatarURL
    }, null, 8, ["src"]), n.logo ? (wl(), _l("img", {
        key: 0,
        class: "w-12 h-12",
        src: n.logo
    }, null, 8, ["src"])) : (wl(), _l("i", {
        key: 1,
        onClick: t[2] || (t[2] = (...e) => n.scrollTop && n.scrollTop(...e)),
        class: "fab fa-twitter text-4xl text-twitter"
    })), Pl("i", {
        onClick: t[3] || (t[3] = t => e.$router.push("/twitter/create")),
        class: "absolute right-8 top-16 fa fa-feather-alt text-twitter"
    })])
};
const Yx = {
    props: {
        tag: {
            default: "li"
        },
        post: {
            required: !0
        }
    },
    emits: ["setLike", "setRetweet"],
    setup(e, t) {
        let l = cc(),
            n = e.post,
            a = n.retweeted_by ? n.tweet_id : n.id;
        return {
            id: a,
            redirect() {
                l.push(`/twitter/posts/${a}`)
            },
            retweet() {
                So.backend["twitter_" + (n.retweeted ? "unretweet" : "retweet")](a).then((e => {
                    t.emit("setRetweet", a, e)
                }))
            },
            like() {
                So.backend["twitter_" + (n.liked ? "dislike" : "like")](a).then((e => {
                    t.emit("setLike", a, e)
                }))
            },
            showOptions() {
                let e = {};
                (n.author.id === Kx.value.id || So.identity.moderator) && (e.delete = "Excluir tweet"), e.view = "Ver tweet", go().request(e, 25, !0).then((e => {
                    "delete" === e ? So.backend.twitter_destroy(a) : "view" === e && this.redirect()
                }), (() => { }))
            }
        }
    }
},
    Zx = {
        key: 0,
        class: "ml-16 mb-1 text-lg text-gray-500 font-bold"
    },
    Qx = Pl("i", {
        class: "fas fa-retweet"
    }, null, -1),
    ey = {
        class: "flex"
    },
    ty = {
        class: "ml-4 flex-1 flex flex-col"
    },
    ny = {
        class: "flex items-center text-xl mb-1"
    },
    ly = {
        class: "font-bold mr-2"
    },
    ay = {
        class: "text-gray-500"
    },
    sy = Pl("i", {
        class: "fas fa-ellipsis-v"
    }, null, -1),
    oy = {
        class: "text-2xl"
    },
    ry = {
        class: "flex justify-between text-2xl mt-3 w-96"
    },
    iy = Pl("i", {
        class: "far fa-comment mr-2"
    }, null, -1),
    cy = Pl("i", {
        class: "far fa-retweet mr-2"
    }, null, -1);
Yx.render = function (e, t, l, n, a, o) {
    let r = dl("app-verified");
    return wl(), _l(fl(l.tag), {
        class: "p-3 border-b border-theme text-theme"
    }, {
        default: en((() => {
            var a;
            return [l.post.retweeted_by ? (wl(), _l("p", Zx, [Qx, Il(" " + g(l.post.retweeted_by) + " retweetou ", 1)])) : Ml("", !0), Pl("div", ey, [Pl("img", {
                onClick: t[1] || (t[1] = t => e.$router.push("/twitter/profiles/" + l.post.author.id)),
                class: "w-20 h-20 rounded-full",
                src: l.post.author.avatarURL,
                alt: ""
            }, null, 8, ["src"]), Pl("div", ty, [Pl("div", ny, [Pl("span", ly, g(l.post.author.name), 1), l.post.author.verified ? (wl(), _l(r, {
                key: 0,
                class: "mr-2 w-5 h-5"
            })) : Ml("", !0), Pl("span", ay, " @" + g(l.post.author.username) + " · " + g(e.$filters.unixToRelative(null != (a = l.post.created_at) ? a : 0)), 1), Pl("button", {
                class: "ml-auto px-4",
                onClick: t[2] || (t[2] = (...e) => n.showOptions && n.showOptions(...e))
            }, [sy])]), Pl("p", oy, g(l.post.content), 1), Pl("div", ry, [Pl("button", {
                onClick: t[3] || (t[3] = (...e) => n.redirect && n.redirect(...e))
            }, [iy, Pl("span", null, g(l.post.comments), 1)]), Pl("button", {
                onClick: t[4] || (t[4] = (...e) => n.retweet && n.retweet(...e)),
                class: {
                    "text-green-400": l.post.retweeted
                }
            }, [cy, Pl("span", null, g(l.post.retweets), 1)], 2), Pl("button", {
                onClick: t[5] || (t[5] = (...e) => n.like && n.like(...e)),
                class: {
                    "text-red-500": l.post.liked
                }
            }, [Pl("i", {
                class: [{
                    fas: l.post.liked
                }, "far fa-heart mr-2"]
            }, null, 2), Pl("span", null, g(l.post.likes), 1)], 2)])])])]
        })),
        _: 1
    })
};
const uy = {
    components: {
        Post: Yx
    },
    props: ["all"],
    setup(e) {
        let t = e.all;
        So.onceRoute("TWITTER_DESTROY", (e => {
            let l = 0;
            for (; - 1 != (l = t.findIndex((t => t.id == e || t.tweet_id == e)));) t.splice(l, 1)
        }));
        let l = (e, l, n = 1) => So.onceRoute(e, (e => {
            t.filter((t => t.id == e || t.tweet_id == e && t.retweeted_by)).forEach((e => {
                e[l] += n
            }))
        }));
        return l("TWITTER_LIKE", "likes"), l("TWITTER_DISLIKE", "likes", -1), l("TWITTER_REPLY", "comments"), l("TWITTER_RETWEET", "retweets"), l("TWITTER_UNRETWEET", "retweets", -1), {
            setLike: function (e, l) {
                t.filter((t => t.id == e || t.tweet_id == e && t.retweeted_by)).forEach((e => {
                    e.liked = l
                }))
            },
            setRetweet: function (e, l) {
                t.filter((t => t.id == e || t.tweet_id == e && t.retweeted_by)).forEach((e => e.retweeted = l));
                let n = t.findIndex((t => t.tweet_id == e && t.retweeted_by));
                !l && n >= 0 && t.splice(n, 1)
            }
        }
    },
    render: function (e, t, l, n, a, o) {
        let r = dl("Post");
        return wl(), _l("ul", null, [(wl(!0), _l(bl, null, fa(l.all, (e => (wl(), _l(r, {
            tag: "li",
            key: e.id,
            post: e,
            onSetLike: n.setLike,
            onSetRetweet: n.setRetweet
        }, null, 8, ["post", "onSetLike", "onSetRetweet"])))), 128))])
    }
},
    dy = {
        components: {
            Header: Jx,
            Timeline: uy
        },
        setup() {
            jl("setDark")();
            let e = Ze([]);
            if (So.localhost) {
                Kx.value = {
                    name: "Samba Roleplay",
                    username: "sambaroleplay",
                    bio: "Programador do celular",
                    avatarURL: "https://picsum.photos/200"
                };
                for (let t = 0; t < 100; t += 1) e.push({
                    id: t + 1,
                    author: {
                        name: "John Doe",
                        username: "johndoe",
                        avatarURL: "https://picsum.photos/200"
                    },
                    content: "Lorem ipsum dolor sit amet ".repeat(10),
                    likes: Math.floor(1e3 * Math.random()),
                    retweets: Math.floor(1e3 * Math.random()),
                    comments: Math.floor(100 * Math.random()),
                    liked: .75 > Math.random(),
                    retweeted: .75 > Math.random()
                })
            }
            return So.backend.twitter().then((t => {
                t ? (Kx.value = t, So.backend.twitter_timeline().then((t => {
                    Object.assign(e, t), So.onceRoute("TWITTER_TWEET", (t => e.unshift(t)))
                }))) : "/twitter" === VO.currentRoute.value.path && VO.replace("/twitter/register")
            })), {
                profile: Kx,
                posts: e
            }
        }
    },
    py = {
        key: 0,
        class: "flex flex-col h-full bg-theme"
    },
    fy = {
        key: 1,
        class: "h-full bg-theme"
    };
dy.render = function (e, t, l, n, a, o) {
    let r = dl("Header"),
        s = dl("Timeline");
    return n.profile ? (wl(), _l("div", py, [Pl(r), Pl(s, {
        class: "overflow-y-auto hide-scroll",
        all: n.posts
    }, null, 8, ["all"])])) : (wl(), _l("div", fy))
};
const my = {
    setup() {
        var e;
        jl("setDark")();
        let t = jl("alert"),
            l = rt({}),
            n = null != (e = So.settings.twitterLogo) ? e : globalThis.twitterLogo;
        return {
            form: l,
            register: function () {
                So.backend.twitter_register(l.value).then((e => {
                    e && e.error ? t(e.error) : VO.replace("/twitter")
                }))
            },
            logo: n
        }
    }
},
    hy = sn("data-v-571aa757");
ln("data-v-571aa757");
const by = {
    class: "h-full bg-theme"
},
    gy = {
        class: "h-28 flex items-end justify-center pb-4"
    },
    vy = {
        key: 1,
        class: "fab fa-twitter text-4xl text-twitter"
    },
    xy = {
        class: "w-10/12 mx-auto mt-32 text-theme"
    },
    yy = {
        class: "text-right mt-6"
    };
an();
const ky = hy(((e, t, l, n, a, o) => (wl(), _l("div", by, [Pl("div", gy, [Pl("span", {
    onClick: t[1] || (t[1] = (...t) => e.$router.back && e.$router.back(...t)),
    class: "absolute left-4 text-3xl text-twitter"
}, "Cancelar"), n.logo ? (wl(), _l("img", {
    key: 0,
    class: "w-12 h-12",
    src: n.logo
}, null, 8, ["src"])) : (wl(), _l("i", vy))]), Pl("div", xy, [Zn(Pl("input", {
    "onUpdate:modelValue": t[2] || (t[2] = e => n.form.name = e),
    maxlength: "24",
    class: "border-b border-theme w-full text-3xl p-2 bg-theme",
    placeholder: "Nome"
}, null, 512), [
    [ns, n.form.name]
]), Zn(Pl("input", {
    "onUpdate:modelValue": t[3] || (t[3] = e => n.form.username = e),
    maxlength: "16",
    class: "mt-8 border-b border-theme w-full text-3xl p-2 bg-theme",
    placeholder: "Nome de usuário"
}, null, 512), [
    [ns, n.form.username]
]), Zn(Pl("input", {
    "onUpdate:modelValue": t[4] || (t[4] = e => n.form.bio = e),
    maxlength: "255",
    class: "mt-8 border-b border-theme w-full text-3xl p-2 bg-theme",
    placeholder: "Biografia"
}, null, 512), [
    [ns, n.form.bio]
]), Pl("div", yy, [Pl("button", {
    onClick: t[5] || (t[5] = (...e) => n.register && n.register(...e)),
    class: "bg-twitter text-white p-2 px-4 rounded-full"
}, "Cadastrar")])])]))));
my.render = ky, my.__scopeId = "data-v-571aa757";
const wy = {
    setup() {
        jl("setDark")();
        let e = jl("alert"),
            t = cc(),
            l = Ze({});
        return {
            profile: Kx,
            form: l,
            submit: function () {
                So.backend.twitter_store(l.content).then((l => {
                    l && l.error ? e(l.error) : t.back()
                }))
            }
        }
    }
},
    Cy = sn("data-v-4a7be0d9");
ln("data-v-4a7be0d9");
const _y = {
    class: "flex flex-col h-full bg-theme"
},
    Ay = {
        class: "mt-16 px-8 flex justify-between"
    },
    Sy = {
        class: "p-8 flex h-full"
    };
an();
const Ty = Cy(((e, t, l, n, a, o) => (wl(), _l("div", _y, [Pl("div", Ay, [Pl("i", {
    onClick: t[1] || (t[1] = (...t) => e.$router.back && e.$router.back(...t)),
    class: "fal fa-times text-twitter text-4xl"
}), Pl("button", {
    onClick: t[2] || (t[2] = (...e) => n.submit && n.submit(...e)),
    class: "bg-twitter text-white text-2xl font-bold px-6 py-2 rounded-full"
}, "Tweet")]), Pl("div", Sy, [Pl("img", {
    class: "w-16 h-16 mr-4 rounded-full",
    src: n.profile.avatarURL,
    alt: ""
}, null, 8, ["src"]), Zn(Pl("textarea", {
    "onUpdate:modelValue": t[3] || (t[3] = e => n.form.content = e),
    maxlength: "280",
    class: "w-full h-full resize-none bg-transparent text-theme",
    placeholder: "O que está acontecendo?"
}, null, 512), [
    [ns, n.form.content]
])])]))));
wy.render = Ty, wy.__scopeId = "data-v-4a7be0d9";
const Ey = {
    components: {
        Timeline: uy
    },
    setup() {
        jl("setDark")();
        let e = uc(),
            t = cc(),
            l = jl("alert"),
            n = rt({}),
            a = Ze([]),
            o = rt("00:00"),
            r = rt("1 Jan 73"),
            s = rt();
        return So.localhost && (n.value = {
            id: 1,
            author: {
                name: "Usuario",
                username: "usuario",
                avatarURL: "https://picsum.photos/200"
            },
            content: "Hello"
        }), An((() => {
            e.params.id && So.backend.twitter_view(e.params.id).then((e => {
                n.value = e.tweet, a.length = 0, Object.assign(a, e.comments);
                let [t, l] = Us(e.tweet.created_at);
                r.value = t, o.value = l
            }))
        })), vn((() => {
            let e = (e, t) => So.onceRoute(e, (e => e == n.value.id && t()));
            So.onceRoute("TWITTER_DESTROY", (e => {
                if (n.value.id != e) {
                    let t = a.indexOf((t => t.id == e));
                    return t >= 0 && a.index(t)
                }
                t.back(), l("Este tweet foi excluído")
            })), e("TWITTER_LIKE", (() => n.value.likes++)), e("TWITTER_RETWEET", (() => n.value.retweets++)), e("TWITTER_DISLIKE", (() => n.value.likes--)), e("TWITTER_UNRETWEET", (() => n.value.retweets--))
        })), {
            content: s,
            createReply: function () {
                let e = s.value.trim();
                e && So.backend.twitter_reply(parseInt(n.value.id), e).then((e => {
                    if (e.error) return l(e.error);
                    e && a.unshift(e), s.value = ""
                }))
            },
            mine: Kx,
            tweet: n,
            hour: o,
            date: r,
            android: So.settings.isAndroid,
            comments: a,
            like: function () {
                So.backend["twitter_" + (n.value.liked ? "dislike" : "like")](n.value.id).then((e => {
                    n.value.liked = e
                }))
            },
            retweet: function () {
                So.backend["twitter_" + (n.value.retweeted ? "unretweet" : "retweet")](n.value.id).then((e => {
                    n.value.retweeted = e
                }))
            }
        }
    }
},
    Ry = {
        class: "flex flex-col h-full bg-theme text-theme"
    },
    Py = Pl("div", {
        class: "h-16 flex-shrink-0 bg-theme"
    }, null, -1),
    Ly = {
        class: "overflow-y-auto hide-scroll"
    },
    Iy = {
        key: 0,
        class: "px-5"
    },
    Oy = {
        class: "flex items-center"
    },
    My = {
        class: "ml-4"
    },
    Vy = {
        class: "flex items-center"
    },
    Dy = {
        class: "text-gray-500"
    },
    Ny = {
        class: "mt-6 text-4xl leading-snug"
    },
    Uy = {
        class: "mt-4 text-gray-500 text-xl"
    },
    $y = {
        class: "mt-4 flex text-2xl border-t border-b border-theme py-4"
    },
    jy = {
        class: "text-gray-500"
    },
    Fy = {
        class: "text-theme"
    },
    zy = Il(" Retweets"),
    By = {
        class: "ml-5 text-gray-500"
    },
    Hy = {
        class: "text-theme"
    },
    qy = Il(" Likes"),
    Gy = {
        class: "flex justify-between items-center text-2xl border-b border-theme py-4 px-8"
    },
    Wy = Pl("i", {
        class: "fal fa-comment text-4xl"
    }, null, -1),
    Ky = Pl("i", {
        class: "fal fa-retweet text-4xl"
    }, null, -1),
    Jy = {
        key: 1,
        class: "p-4"
    },
    Xy = {
        class: "flex ml-16 mb-2 justify-between items-center"
    },
    Yy = {
        class: "text-2xl text-gray-500"
    },
    Zy = Pl("i", {
        class: "fal fa-level-up transform-flip-x mr-2"
    }, null, -1),
    Qy = Il(" Respondendo "),
    ek = {
        class: "text-twitter"
    },
    tk = {
        class: "flex items-start border-b border-theme pb-4"
    };
Ey.render = function (e, t, l, n, a, o) {
    var r;
    let s = dl("app-verified"),
        i = dl("Timeline");
    return wl(), _l("div", Ry, [Py, Pl("div", Ly, [(null == (r = n.tweet) ? void 0 : r.id) ? (wl(), _l("div", Iy, [Pl("div", Oy, [Pl("img", {
        onClick: t[1] || (t[1] = t => e.$router.push("/twitter/profiles/" + n.tweet.author.id)),
        class: "w-24 h-24 rounded-full",
        src: n.tweet.author.avatarURL
    }, null, 8, ["src"]), Pl("div", My, [Pl("div", Vy, [Pl("h1", null, g(n.tweet.author.name), 1), n.tweet.author.verified ? (wl(), _l(s, {
        key: 0,
        class: "ml-2 w-6 h-6"
    })) : Ml("", !0)]), Pl("h1", Dy, "@" + g(n.tweet.author.username), 1)])]), Pl("p", Ny, g(n.tweet.content), 1), Pl("p", Uy, g(n.hour) + " · " + g(n.date) + " · Twitter for " + g(n.android ? "Sambadroid" : "SambaOS"), 1), Pl("div", $y, [Pl("p", jy, [Pl("b", Fy, g(n.tweet.retweets), 1), zy]), Pl("p", By, [Pl("b", Hy, g(n.tweet.likes), 1), qy])])])) : Ml("", !0), Pl("div", Gy, [Pl("button", {
        onClick: t[2] || (t[2] = e => n.content = null == n.content ? "" : null)
    }, [Wy]), Pl("button", {
        onClick: t[3] || (t[3] = (...e) => n.retweet && n.retweet(...e)),
        class: {
            "text-green-400": n.tweet.retweeted
        }
    }, [Ky], 2), Pl("button", {
        onClick: t[4] || (t[4] = (...e) => n.like && n.like(...e)),
        class: {
            "text-red-500": n.tweet.liked
        }
    }, [Pl("i", {
        class: ["fal fa-heart text-4xl", {
            fas: n.tweet.liked
        }]
    }, null, 2)], 2)]), null != n.content ? (wl(), _l("div", Jy, [Pl("div", Xy, [Pl("p", Yy, [Zy, Qy, Pl("span", ek, "@" + g(n.tweet.author.username), 1)]), Pl("button", {
        onClick: t[5] || (t[5] = (...e) => n.createReply && n.createReply(...e)),
        class: "bg-twitter px-6 py-2 text-xl text-white rounded-full"
    }, "Responder")]), Pl("div", tk, [Pl("img", {
        class: "w-20 h-20 rounded-full",
        src: n.mine.avatarURL
    }, null, 8, ["src"]), Zn(Pl("textarea", {
        onKeydown: t[6] || (t[6] = us(is(((...e) => n.createReply && n.createReply(...e)), ["prevent"]), ["enter"])),
        class: "ml-3 mt-5 w-full h-36 bg-transparent text-theme resize-none hide-scroll",
        "onUpdate:modelValue": t[7] || (t[7] = e => n.content = e),
        placeholder: "Tweete sua resposta"
    }, null, 544), [
        [ns, n.content]
    ])])])) : Ml("", !0), Pl(i, {
        all: n.comments
    }, null, 8, ["all"])])])
};
const nk = {
    components: {
        Timeline: uy
    },
    setup() {
        jl("setDark")();
        let e = uc(),
            t = rt(),
            l = Ze([]);
        return So.localhost && (t.value = {
            name: "Samba Roleplay",
            username: "sambaroleplay",
            verified: 1
        }, l.push(...Array(50).fill(0).map(((e, t) => ({
            id: t + 1,
            author: {
                avatarURL: "https://picsum.photos/200"
            },
            content: "Hello world " + t
        }))))), So.backend.twitter_profile(e.params.id).then((e => {
            t.value = null == e ? void 0 : e.profile, Object.assign(l, null == e ? void 0 : e.posts)
        })), {
            dark: So.darkTheme,
            profile: t,
            posts: l,
            mine: Kx,
            follow: async function () {
                await So.backend.twitter_follow(e.params.id) && (t.value.followers += 1, t.value.isFollowed = !0)
            },
            unfollow: async function () {
                await So.backend.twitter_unfollow(e.params.id) && (t.value.followers -= 1, t.value.isFollowed = !1)
            }
        }
    }
},
    lk = {
        class: "flex flex-col h-full bg-theme"
    },
    ak = Pl("div", {
        class: "h-12 flex-shrink-0 bg-theme-accent"
    }, null, -1),
    sk = {
        key: 0,
        class: "overflow-y-auto hide-scroll"
    },
    ok = {
        class: "relative"
    },
    rk = {
        class: "pt-4 text-right h-20"
    },
    ik = {
        class: "text-theme px-4 border-b border-theme"
    },
    ck = {
        class: "flex items-center"
    },
    uk = {
        class: "text-4xl"
    },
    dk = {
        class: "text-gray-500 text-2xl my-2"
    },
    pk = {
        class: "text-xl"
    },
    fk = {
        class: "flex text-2xl my-4"
    },
    mk = Il(),
    hk = Pl("span", {
        class: "text-gray-500"
    }, "Seguindo", -1),
    bk = {
        class: "ml-6"
    },
    gk = Il(),
    vk = Pl("span", {
        class: "text-gray-500"
    }, "Seguidores", -1);
nk.render = function (e, t, l, n, a, o) {
    var r, s, i, c;
    let u = dl("app-verified"),
        d = dl("Timeline");
    return wl(), _l("div", lk, [ak, n.profile ? (wl(), _l("div", sk, [Pl("div", ok, [Pl("img", {
        class: "w-full h-56",
        src: n.profile.bannerURL
    }, null, 8, ["src"]), Pl("img", {
        class: ["absolute left-8 top-36 w-36 h-36 rounded-full border-4", [n.dark ? "border-black" : "border-white"]],
        src: null == (r = n.profile) ? void 0 : r.avatarURL,
        alt: ""
    }, null, 10, ["src"])]), Pl("div", rk, [(null == (s = n.mine) ? void 0 : s.id) == n.profile.id ? (wl(), _l("button", {
        key: 0,
        onClick: t[1] || (t[1] = t => e.$router.push("/twitter/settings")),
        class: "mr-4 px-6 rounded-full text-twitter border border-twitter"
    }, "Editar perfil")) : n.profile.isFollowed ? (wl(), _l("button", {
        key: 1,
        onClick: t[2] || (t[2] = (...e) => n.unfollow && n.unfollow(...e)),
        class: "mr-4 px-6 rounded-full text-twitter border border-twitter"
    }, "Deixar de seguir")) : (wl(), _l("button", {
        key: 2,
        onClick: t[3] || (t[3] = (...e) => n.follow && n.follow(...e)),
        class: "mr-4 px-6 rounded-full text-twitter border border-twitter"
    }, "Seguir"))]), Pl("div", ik, [Pl("div", ck, [Pl("h1", uk, g(n.profile.name), 1), n.profile.verified ? (wl(), _l(u, {
        key: 0,
        class: "ml-2 w-6 h-6"
    })) : Ml("", !0)]), Pl("h3", dk, "@" + g(n.profile.username), 1), Pl("p", pk, g(n.profile.bio), 1), Pl("div", fk, [Pl("p", null, [Pl("b", null, g(null != (i = n.profile.following) ? i : 0), 1), mk, hk]), Pl("p", bk, [Pl("b", null, g(null != (c = n.profile.followers) ? c : 0), 1), gk, vk])])]), Pl(d, {
        all: n.posts
    }, null, 8, ["all"])])) : Ml("", !0)])
};
const xk = Ze({}),
    yk = {
        components: {
            Header: Jx
        },
        setup() {
            xk.id || Object.assign(xk, Kx.value);
            let e = jl("alert"),
                t = jl("prompt"),
                l = da((() => {
                    for (let [e, t] of Object.entries(Kx.value))
                        if (t != xk[e]) return !0
                }));
            return {
                dark: So.darkTheme,
                form: xk,
                save: function () {
                    So.backend.twitter_save(xk).then((t => {
                        if (t.error) return e(t.error);
                        Object.assign(xk, t), Object.assign(Kx.value, t)
                    }))
                },
                changeAvatar: async function () {
                    try {
                        let e = await So.useAnyImage("/twitter", !0);
                        xk.avatarURL = e
                    } catch (e) { }
                },
                changeBanner: function () {
                    t("Link da imagem").then((e => {
                        if (e) {
                            let t = new Image;
                            t.onload = () => xk.bannerURL = e, t.src = e
                        }
                    }))
                },
                hasChanges: l
            }
        }
    },
    kk = sn("data-v-1576647c");
ln("data-v-1576647c");
const wk = {
    class: "h-full text-theme bg-theme"
},
    Ck = {
        class: "h-32 pb-4 border-b border-theme flex items-end"
    },
    _k = Pl("i", {
        class: "far text-2xl fa-arrow-left"
    }, null, -1),
    Ak = Pl("h1", null, "Editar perfil", -1),
    Sk = {
        class: "relative"
    },
    Tk = {
        class: "relative w-full"
    },
    Ek = Pl("i", {
        class: "fas fa-camera opacity-75"
    }, null, -1),
    Rk = {
        class: "absolute left-8 top-36 flex flex-center"
    },
    Pk = Pl("i", {
        class: "fas fa-camera opacity-75"
    }, null, -1),
    Lk = {
        class: "px-5 mt-20"
    },
    Ik = {
        class: "mb-4 flex flex-col"
    },
    Ok = Pl("label", null, "Nome", -1),
    Mk = {
        class: "mb-4 flex flex-col"
    },
    Vk = Pl("label", null, "Nome de usuário", -1),
    Dk = {
        class: "mb-4 flex flex-col"
    },
    Nk = Pl("label", null, "Bio", -1);
an();
const Uk = kk(((e, t, l, n, a, o) => {
    var r;
    return wl(), _l("div", wk, [Pl("div", Ck, [Pl("button", {
        onClick: t[1] || (t[1] = (...t) => e.$router.back && e.$router.back(...t)),
        class: "px-5 text-twitter"
    }, [_k]), Ak, n.hasChanges ? (wl(), _l("button", {
        key: 0,
        onClick: t[2] || (t[2] = (...e) => n.save && n.save(...e)),
        class: "ml-auto text-twitter text-2xl px-5"
    }, "Salvar")) : Ml("", !0)]), Pl("div", Sk, [Pl("div", Tk, [Pl("button", {
        onClick: t[3] || (t[3] = (...e) => n.changeBanner && n.changeBanner(...e)),
        class: "absolute inset-0 w-full text-center text-white"
    }, [Ek]), Pl("img", {
        class: "h-56 w-full",
        src: null == (r = n.form) ? void 0 : r.bannerURL,
        alt: ""
    }, null, 8, ["src"])]), Pl("div", Rk, [Pl("button", {
        onClick: t[4] || (t[4] = (...e) => n.changeAvatar && n.changeAvatar(...e)),
        class: "absolute inset-0 w-full rounded-full text-center text-white"
    }, [Pk]), Pl("img", {
        class: ["w-36 h-36 rounded-full border-4", [n.dark ? "border-black" : "border-white"]],
        src: n.form.avatarURL,
        alt: ""
    }, null, 10, ["src"])])]), Pl("div", Lk, [Pl("div", Ik, [Ok, Zn(Pl("input", {
        maxlength: "24",
        "onUpdate:modelValue": t[5] || (t[5] = e => n.form.name = e),
        class: "border-b border-theme p-1"
    }, null, 512), [
        [ns, n.form.name]
    ])]), Pl("div", Mk, [Vk, Zn(Pl("input", {
        maxlength: "16",
        "onUpdate:modelValue": t[6] || (t[6] = e => n.form.username = e),
        class: "border-b border-theme p-1"
    }, null, 512), [
        [ns, n.form.username]
    ])]), Pl("div", Dk, [Nk, Zn(Pl("input", {
        maxlength: "255",
        "onUpdate:modelValue": t[7] || (t[7] = e => n.form.bio = e),
        class: "border-b border-theme p-1"
    }, null, 512), [
        [ns, n.form.bio]
    ])])])])
}));
yk.render = Uk, yk.__scopeId = "data-v-1576647c";
const $k = new Map;

function jk(e, t) {
    let l, n;
    Array.isArray(e) ? [l, n] = e : (l = () => e.value, n = t => e.value = t);
    let a = [],
        o = Math.floor((l() - t) / 23);
    0 == o && n(t);
    for (let r = 25; r <= 600; r += 25) a.push(setTimeout((() => {
        n(600 == r ? t : l() - o), 600 == r && $k.delete(e)
    }), r));
    $k.set(e, (() => {
        a.forEach(clearTimeout), n(t)
    }))
}
const Fk = {
    setup() {
        let e, t, l = rt(),
            n = !1;
        return {
            container: l,
            down: function (a) {
                n = !0, e = a.pageX - l.value.offsetLeft, t = l.value.scrollLeft
            },
            up: function () {
                n = !1
            },
            move: function (a) {
                if (!n) return;
                a.preventDefault();
                let o = .75 * (a.pageX - l.value.offsetLeft - e);
                l.value.scrollLeft = t - o
            }
        }
    },
    render: function (e, t, l, n, a, o) {
        return wl(), _l("div", {
            class: "overflow-x-auto hide-scroll",
            ref: "container",
            onMousedown: t[1] || (t[1] = is(((...e) => n.down && n.down(...e)), ["stop", "prevent"])),
            onMouseup: t[2] || (t[2] = (...e) => n.up && n.up(...e)),
            onMouseleave: t[3] || (t[3] = (...e) => n.up && n.up(...e)),
            onMousemove: t[4] || (t[4] = (...e) => n.move && n.move(...e))
        }, [Zt(e.$slots, "default")], 544)
    }
},
    zk = rt(),
    Bk = {
        props: {
            header: {
                default: !0
            }
        },
        components: {
            HorizontalScroll: Fk
        },
        setup() {
            let e = da((() => So.settings.bankType)),
                t = da((() => So.settings.bankLogo)),
                l = da((() => {
                    var e;
                    return !(null == (e = So.settings.disabledApps) ? void 0 : e.includes("invoice"))
                })),
                n = da((() => {
                    var e;
                    return !(null == (e = So.settings.disabledApps) ? void 0 : e.includes("fines"))
                }));
            return null == zk.value && So.backend.bank_hasPix().then((e => zk.value = e)), {
                pix: zk,
                bankType: e,
                bankLogo: t,
                hasInvoices: l,
                hasFines: n
            }
        }
    },
    Hk = {
        key: 0,
        class: "h-12 bank-dark"
    },
    qk = {
        key: 1,
        class: "h-20 flex-shrink-0 pt-4 text-center"
    },
    Gk = {
        key: 1,
        class: "relative-white flex justify-center"
    },
    Wk = Pl("img", {
        class: "w-16",
        src: "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAEAAAAAwCAYAAAChS3wfAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsMAAA7DAcdvqGQAAATxSURBVGhD7ZpbqFRVGMf3PnYsDQNJSysTooumlFKCJSHdoAfDLkQEZURhVNBDUBqUPfRSEPXSS4RQEJiRZJ0CLQuyjKIw1ETNSjllJZplF7OLs/r91/r2NHNm75k5Z8Zp72b+8OPb+1uXWWvttfbazLfiqEm5kuuP4uhGLq+HWTBRbvgBtsNHsBbPh3FfXOL6/yPn3FmwBZrRLlgCJ1jxYksdga9A+hLuhdlwCkyG6XA1PAoboQTSPrirVHJ9VlUxRSce8N1xbhM0fKrkmQUr4QhIb8MkSy6eaPxbvhvOaf03LfLPh92+ZLDnWFKxRMP15KU55mpalJkAG3xp576B0y2pOKLRW33znbvQXMMS5cbBx76GYEdbUi5Usw3SwLGYeXCSd0TR43AqPAy75KjQ37ATNsVxfMR7UkSdUzCfwomwlLyqs0rkkZkLGui07fkArKbsb+G2vqjvGMwC0G+n6XO27Dft2hcYBffBfhiutDssgszvCtJuV0Z0AMaZuyx8Sk92kCxpBvVbkboi3wpfor6e8A3m4ljMi3CN7tEO2Ap6LFeC3v7vwI9QKc2WCyCZLcthMU+p5kOI39AT2QZnwm3keU7+RKRrhugD6z3YLV+FtJWqbcfDfMqulzNL1KWPtL26hFVwGCo1HjQ7fvd3FHgGpINwE5T3bq7rvgPwj4a74ZAyoUcsqUakPRSyuBXmKgvfjpDkppurSvjXhmR3lbkyRZ4zQlb3vbmqhL8vJLPu4BLQ1PtD15anLHxNvQRJXwDa+w9D6tse/zyQPjNXWfiSAZhmrirhXxOS2zIAcUgOT/oe0FJ4iqml6TciUfZ1zCug5bRIvhQlU3uC2f9cGoCLw2X0vNlWtNJsUudQ/Wl2lNk0+e2gU9IA6EUm7TPbigbN6iU0UmXuJEdD5Zddm9TRp9cOtXsACqfeAJjtWvUGwGzXqjcAZrtWvQEw27XqDYDZrlVvAMx2rfI3AM7/odIx5XEGdLRN7f6x1v8P6OjfIe0fgA43v3XlcQlkKZldbW1z/pZAtpL/LKeabUXJv9KH8rQEkthiVh0bzN7gQhyxFd1q9oM8LYHkCWcFM1+Cn+FSuEWOkYjBOx+zLNxFTx+tJZD1FOvNkC1mLzNbpTiOFZd8MNxFy+mITq6MsfuGIq+iQYoHrgMFZ1fR2tfk/Jqb0yzhO6iUIrE6FSY7jUYoaJop6pqBUdjrL3gZFD6v1GS4Agapq2otW+MGQDNhKukhcFkhdQKj0Pr93hFC5p/AL/7uXymIqhCagqJvgMqdDTNBUqB3Ib/xqyrVia5GWuNK2aHvRMpD3nWhSF0lHSiLsv34B0OyW2LuGpEmroMkZjkc/QTLoBxiV4Nlta709NI6+S0MMFpJWKuuqO84zEJIQuaV0o9pqr9Lfd5RKcregXkWdAhiDnkUTk8VebV8zzWGnhnQbz8JB0GxT0mz5X3qHDpb8iN1CpIZtB1GFESlXN3ocK5FoyfCTt985zaD3k/DEmWSAdhjrmKJhk+Bbb4LPEXQ2QNLbSzyXq6CaKO5iicaPx5W+26EAxwDMBcsR7pIHwPrQao5jFUo0QG9pG+GPeqNSW//x+BamAk6sjsJzoM7Idkd9sLJVlWxRUfGgs4o68XYjL4AffE1VMO9PU+iU2qvTqXpI+ci0HkibXnaEvfDZngVXmC7G3oyLEVR9A/5Q6Q0mcHOXwAAAABJRU5ErkJggg==",
        alt: ""
    }, null, -1),
    Kk = {
        key: 2,
        class: "relative-white flex items-center justify-center"
    },
    Jk = Pl("svg", {
        class: "h-8 w-16",
        xmlns: "http://www.w3.org/2000/svg",
        version: "1.0",
        width: "270px",
        height: "136px",
        viewBox: "0 0 270 136",
        preserveAspectRatio: "xMidYMid meet"
    }, [Pl("g", {
        fill: "#ffffff"
    }, [Pl("path", {
        d: "M177.3 134.5 c-13.5 -2.9 -24.7 -11.8 -30.5 -24.1 -5.5 -11.7 -5.9 -16 -6.5 -63 l-0.6 -43.2 12.4 -0.7 c6.8 -0.4 15.1 -0.5 18.4 -0.3 l6 0.3 0.5 43.5 c0.6 47.1 0.5 46.4 6.5 56.6 5.3 9.1 17.8 16.8 29 18 9.2 0.9 9.4 1.1 4.2 4.8 -6.4 4.5 -13.1 7.3 -20.8 8.5 -8 1.3 -10.8 1.3 -18.6 -0.4z"
    }), Pl("path", {
        d: "M0 92.2 c0 -42.3 0.3 -46.1 5.1 -55.4 4.4 -8.6 15.8 -17.7 26.6 -21.1 5.3 -1.7 16.3 -3.3 16.3 -2.3 0 0.3 -1.5 2.6 -3.4 5.1 -1.9 2.4 -4.5 7 -5.8 10.2 -2.3 5.8 -2.3 6.2 -2.6 54.6 l-0.3 48.7 -18 0 -17.9 0 0 -39.8z"
    }), Pl("path", {
        d: "M93 91.2 c0 -44.3 -0.3 -47.5 -5.7 -57.4 -5.5 -10 -18 -18.1 -29.8 -19.4 -9.2 -0.9 -9.4 -1.1 -4.2 -4.8 15 -10.7 34.3 -12.2 50.7 -4 8.2 4.1 14.6 10.8 19 19.7 5.5 11.3 6 16.1 6.7 63.5 l0.6 43.2 -18.7 0 -18.6 0 0 -40.8z"
    }), Pl("path", {
        d: "M222 122.6 c0 -0.3 1.5 -2.6 3.4 -5.1 1.9 -2.4 4.5 -7 5.8 -10.2 2.3 -5.8 2.3 -6.2 2.6 -54.5 l0.3 -48.8 18 0 17.9 0 0 39.8 c0 42.4 -0.3 46.1 -5.1 55.5 -4.5 8.8 -16.6 18.2 -27.9 21.5 -4.4 1.4 -15 2.6 -15 1.8z"
    })])], -1),
    Xk = {
        key: 3,
        class: "font-bold text-4xl"
    },
    Yk = {
        key: 5,
        class: "h-16 mt-4 mx-auto",
        src: "samba/stock/banks/BC78tFD.png"
    },
    Zk = {
        key: 9,
        class: "h-20 mx-auto",
        src: "samba/stock/banks/itau.png"
    },
    Qk = {
        key: 10,
        class: "h-20 mx-auto",
        src: "samba/stock/banks/bb.png"
    },
    ew = Pl("svg", {
        xmlns: "http://www.w3.org/2000/svg",
        width: "2.25rem",
        height: "2.25rem",
        viewBox: "0 0 2500 2500"
    }, [Pl("g", {
        fill: "rgb(255,255,255)",
        style: {
            transform: "none",
            "--darkreader-inline-fill": "#e8e6e3"
        },
        "data-darkreader-inline-fill": ""
    }, [Pl("g", null, [Pl("path", {
        d: "M1165 2486 c-107 -28 -123 -40 -393 -309 -263 -262 -263 -262 -185 -269 141 -12 169 -30 413 -272 118 -118 225 -219 238 -225 16 -9 28 -9 45 0 12 6 117 105 232 220 236 234 278 263 400 275 67 7 67 7 -172 246 -131 132 -255 253 -275 269 -75 60 -211 89 -303 65z m176 -113 c48 -15 74 -37 242 -202 103 -101 187 -187 187 -190 0 -3 -20 -15 -43 -25 -28 -13 -112 -88 -254 -230 -213 -210 -213 -210 -430 5 -171 169 -228 220 -265 235 -27 10 -48 22 -48 25 0 3 82 86 183 185 156 154 189 182 232 196 65 22 130 22 196 1z"
    }), Pl("path", {
        d: "M223 1628 c-211 -213 -217 -225 -217 -383 0 -158 6 -170 217 -383 172 -174 172 -174 297 -170 106 4 132 8 170 28 28 14 124 102 250 228 113 112 219 213 235 223 38 24 124 25 167 3 17 -9 126 -111 242 -227 151 -150 224 -216 256 -230 33 -15 74 -22 150 -25 105 -4 105 -4 282 176 169 172 177 182 197 245 30 100 34 130 21 193 -23 112 -41 138 -223 322 -172 174 -172 174 -277 170 -78 -3 -117 -9 -150 -24 -32 -15 -107 -82 -256 -231 -116 -116 -225 -218 -242 -227 -43 -22 -129 -21 -167 3 -16 10 -124 113 -240 228 -126 126 -226 217 -250 228 -31 15 -68 20 -165 23 -125 4 -125 4 -297 -170z m423 49 c17 -9 125 -110 240 -224 209 -208 209 -208 -1 -417 -116 -114 -223 -215 -240 -223 -18 -10 -66 -18 -120 -21 -90 -4 -90 -4 -236 145 -90 91 -153 163 -163 187 -22 52 -22 190 0 242 10 24 73 96 163 187 146 149 146 149 236 145 57 -3 101 -10 121 -21z m1560 -129 c131 -134 152 -160 167 -207 21 -67 21 -109 0 -185 -16 -56 -26 -69 -166 -213 -147 -151 -150 -153 -193 -153 -24 0 -67 5 -96 11 -51 11 -60 18 -271 227 -217 217 -217 217 -5 430 233 233 244 240 359 241 56 1 56 1 205 -151z"
    }), Pl("path", {
        d: "M1011 865 c-259 -256 -284 -273 -424 -283 -79 -5 -79 -5 160 -244 131 -132 258 -254 283 -273 89 -66 221 -83 346 -44 68 21 68 21 337 288 269 266 269 266 210 273 -32 4 -87 20 -123 34 -59 25 -86 48 -291 251 -163 162 -232 223 -249 223 -16 0 -85 -62 -249 -225z m458 -99 c148 -148 217 -210 252 -227 27 -12 49 -25 49 -29 0 -4 -84 -90 -188 -192 -186 -183 -188 -185 -254 -203 -45 -12 -82 -16 -114 -11 -92 12 -129 38 -310 218 -96 94 -174 174 -173 177 0 3 26 18 57 33 45 22 99 69 262 233 113 113 207 205 210 205 3 0 97 -92 209 -204z"
    })])])], -1),
    tw = Pl("span", {
        class: "text-2xl"
    }, "Pix", -1),
    nw = Pl("i", {
        class: "fal fa-usd-circle"
    }, null, -1),
    lw = Pl("span", {
        class: "text-2xl"
    }, "Transferir", -1),
    aw = Pl("i", {
        class: "fal fa-file-invoice-dollar"
    }, null, -1),
    sw = Pl("span", {
        class: "text-2xl"
    }, "Extrato", -1),
    ow = Pl("i", {
        class: "fal fa-user-friends"
    }, null, -1),
    rw = Pl("span", {
        class: "text-2xl"
    }, "Cobrar", -1),
    iw = Pl("i", {
        class: "fal fa-file-invoice"
    }, null, -1),
    cw = Pl("span", {
        class: "text-2xl"
    }, "Faturas", -1),
    uw = Pl("i", {
        class: "fal fa-gavel"
    }, null, -1),
    dw = Pl("span", {
        class: "text-2xl"
    }, "Multas", -1);
Bk.render = function (e, t, l, n, a, o) {
    let r = dl("HorizontalScroll");
    return wl(), _l("div", {
        class: "flex flex-col h-full",
        bankType: n.bankType
    }, [null != l.header ? (wl(), _l("div", Hk)) : Ml("", !0), l.header ? (wl(), _l("div", qk, [n.bankLogo ? (wl(), _l("img", {
        key: 0,
        class: "h-20 mx-auto",
        src: n.bankLogo
    }, null, 8, ["src"])) : "nubank" == n.bankType ? (wl(), _l("div", Gk, [Wk])) : "nubank2" == n.bankType ? (wl(), _l("div", Kk, [Jk])) : "southBank" == n.bankType ? (wl(), _l("h1", Xk, "SouthBank")) : "fleeca" == n.bankType ? (wl(), _l("img", {
        key: 4,
        class: "h-12 mx-auto",
        src: e.$asset("/stock/fleeca.png"),
        alt: ""
    }, null, 8, ["src"])) : "nxbank" == n.bankType ? (wl(), _l("img", Yk)) : "CPBank" == n.bankType ? (wl(), _l("img", {
        key: 6,
        class: "h-12 mt-4 mx-auto",
        src: e.$asset("/apps/cpbank.svg")
    }, null, 8, ["src"])) : "picpay" == n.bankType ? (wl(), _l("img", {
        key: 7,
        class: "h-14 mt-2 mx-auto",
        src: e.$asset("/stock/picpay.svg")
    }, null, 8, ["src"])) : "bdc" == n.bankType ? (wl(), _l("img", {
        key: 8,
        class: "h-24 mx-auto",
        src: e.$asset("/apps/bdc.svg")
    }, null, 8, ["src"])) : "itau" == n.bankType ? (wl(), _l("img", Zk)) : "bb" == n.bankType ? (wl(), _l("img", Qk)) : Ml("", !0)])) : Ml("", !0), Zt(e.$slots, "default"), "/bank" == e.$route.path ? (wl(), _l(r, {
        key: 2,
        class: "mt-auto flex flex-shrink-0 flex-no-shrink h-52 py-5 mx-5 text-4xl"
    }, {
        default: en((() => [n.pix ? (wl(), _l("div", {
            key: 0,
            onClick: t[1] || (t[1] = t => e.$router.push("/bank/pix")),
            class: "w-40 p-4 flex flex-col justify-between text-white bank-light rounded-lg mr-6"
        }, [ew, tw])) : Ml("", !0), Pl("div", {
            onClick: t[2] || (t[2] = t => e.$router.push("/bank/transfer")),
            class: "w-40 p-4 flex flex-col justify-between text-white bank-light rounded-lg mr-6"
        }, [nw, lw]), Pl("div", {
            onClick: t[3] || (t[3] = t => e.$router.push("/bank/statements")),
            class: "w-40 p-4 flex flex-col justify-between text-white bank-light rounded-lg mr-6"
        }, [aw, sw]), n.hasInvoices ? (wl(), _l("div", {
            key: 1,
            onClick: t[4] || (t[4] = t => e.$router.push("/bank/invoices/create")),
            class: "w-40 p-4 flex flex-col justify-between text-white bank-light rounded-lg mr-6"
        }, [ow, rw])) : Ml("", !0), n.hasInvoices ? (wl(), _l("div", {
            key: 2,
            onClick: t[5] || (t[5] = t => e.$router.push("/bank/invoices")),
            class: "w-40 p-4 flex flex-col justify-between text-white bank-light rounded-lg mr-6"
        }, [iw, cw])) : Ml("", !0), n.hasFines ? (wl(), _l("div", {
            key: 3,
            onClick: t[6] || (t[6] = t => e.$router.push("/bank/fines")),
            class: "w-40 p-4 flex flex-col justify-between text-white bank-light rounded-lg mr-6"
        }, [uw, dw])) : Ml("", !0)])),
        _: 1
    })) : Ml("", !0)], 8, ["bankType"])
};
const pw = {
    components: {
        Page: Bk
    },
    setup() {
        jl("setDark")(!0), jl("alert");
        let e = So.identity,
            t = rt(!0),
            l = rt(0),
            n = rt(0),
            a = rt(0),
            o = rt(So.hasNotificationFor("bank"));
        return So.backend.bank_index().then((e => {
            l.value = e.balance, a.value = e.fines, n.value = e.invoices
        })), Tn(o, (e => So.setNotificationFor("bank", e))), So.onceRoute("BANK", (({
            value: e
        }) => jk(l, l.value + e))), {
            identity: e,
            notifications: o,
            visible: t,
            balance: l,
            invoices: n,
            fines: a,
            isEnabled: function (e) {
                var t;
                return !(null == (t = So.settings.disabledApps) ? void 0 : t.includes(e))
            }
        }
    }
},
    fw = {
        class: "p-5 flex-1 flex flex-col"
    },
    mw = {
        class: "flex justify-between items-center"
    },
    hw = {
        class: "text-5xl font-bold relative-white"
    },
    bw = {
        class: "flex"
    },
    gw = {
        class: "mt-6 p-8 bg-white rounded-lg"
    },
    vw = Pl("span", {
        class: "block mb-5 text-gray-600"
    }, [Pl("i", {
        class: "fal fa-coins"
    }), Pl("span", {
        class: "ml-5"
    }, "Conta")], -1),
    xw = Pl("h1", {
        class: "text-gray-600 text-3xl mb-5"
    }, "Saldo disponível", -1),
    yw = {
        key: 0,
        class: "text-6xl h-16 font-bold"
    },
    kw = {
        key: 1,
        class: "bg-gray-200 h-16"
    },
    ww = {
        key: 0,
        class: "mt-6 p-8 bg-white rounded-lg"
    },
    Cw = Pl("span", {
        class: "block mb-5 text-gray-600"
    }, [Pl("i", {
        class: "fal fa-file-invoice"
    }), Pl("span", {
        class: "ml-5"
    }, "Faturas")], -1),
    _w = Pl("h1", {
        class: "text-gray-600 text-3xl mb-5"
    }, "Fatura atual", -1),
    Aw = {
        key: 0,
        class: "text-6xl h-16 font-bold text-red-600"
    },
    Sw = {
        key: 1,
        class: "bg-gray-200 h-16"
    },
    Tw = {
        key: 1,
        class: "mt-6 p-8 bg-white rounded-lg"
    },
    Ew = Pl("span", {
        class: "block mb-5 text-gray-600"
    }, [Pl("i", {
        class: "fal fa-gavel"
    }), Pl("span", {
        class: "ml-5"
    }, "Multas")], -1),
    Rw = Pl("h1", {
        class: "text-gray-600 text-3xl mb-5"
    }, "Fatura atual", -1),
    Pw = {
        key: 0,
        class: "text-6xl h-16 font-bold text-red-600"
    },
    Lw = {
        key: 1,
        class: "bg-gray-200 h-16"
    };
pw.render = function (e, t, l, n, a, o) {
    let r = dl("Page");
    return wl(), _l(r, null, {
        default: en((() => [Pl("div", fw, [Pl("div", mw, [Pl("h1", hw, "Olá, " + g(n.identity.name), 1), Pl("div", bw, [Pl("button", {
            onClick: t[1] || (t[1] = e => n.notifications = !n.notifications),
            class: "text-white bank-light w-16 h-16 flex flex-center rounded-full mr-2"
        }, [Pl("i", {
            class: ["far", n.notifications ? "fa-bell" : "fa-bell-slash"]
        }, null, 2)]), Pl("button", {
            onClick: t[2] || (t[2] = e => n.visible = !n.visible),
            class: "text-white bank-light w-16 h-16 flex flex-center rounded-full"
        }, [Pl("i", {
            class: ["far", n.visible ? "fa-eye" : "fa-eye-slash"]
        }, null, 2)])])]), Pl("div", null, [Pl("div", gw, [vw, xw, n.visible ? (wl(), _l("h3", yw, g(e.$filters.intToMoney(n.balance)), 1)) : (wl(), _l("div", kw))]), n.isEnabled("invoice") ? (wl(), _l("div", ww, [Cw, _w, n.visible ? (wl(), _l("h3", Aw, g(e.$filters.intToMoney(n.invoices)), 1)) : (wl(), _l("div", Sw))])) : Ml("", !0), n.isEnabled("fines") ? (wl(), _l("div", Tw, [Ew, Rw, n.visible ? (wl(), _l("h3", Pw, g(e.$filters.intToMoney(n.fines)), 1)) : (wl(), _l("div", Lw))])) : Ml("", !0)])])])),
        _: 1
    })
};
const Iw = {
    components: {
        Page: Bk
    },
    setup() {
        jl("setDark")(!1);
        let e = cc(),
            t = jl("alert"),
            l = rt(0),
            n = rt(0),
            a = rt("0"),
            o = rt("0");
        return Tn(a, (e => {
            let t = Number(e.replace(/\D/g, ""));
            a.value = (t > n.value ? n.value : t).toLocaleString("pt-BR")
        })), So.backend.bank_getBalance().then((e => n.value = e)), {
            step: l,
            balance: n,
            value: a,
            key: o,
            submit: function () {
                let l = Number(a.value.replace(/\D/g, ""));
                So.confirm("Deseja transferir " + js(l) + " para a chave " + o.value + "?").then((n => {
                    n && So.lockAndProceed((() => So.backend.bank_pix(o.value, l).then((n => {
                        n.error ? t(n.error) : e.replace({
                            path: "/bank/receipt",
                            query: {
                                name: o.value,
                                value: l
                            }
                        })
                    }))))
                }))
            }
        }
    }
},
    Ow = sn("data-v-2b331752");
ln("data-v-2b331752");
const Mw = {
    class: "mt-auto flex-1 bg-white relative"
},
    Vw = Pl("i", {
        class: "fal fa-times text-4xl text-gray-600"
    }, null, -1),
    Dw = {
        key: 0
    },
    Nw = {
        class: "p-5"
    },
    Uw = Pl("h1", {
        class: "font-semibold"
    }, "Qual é o valor da transferência?", -1),
    $w = {
        class: "mt-4 text-3xl"
    },
    jw = Il("Saldo disponível em conta "),
    Fw = {
        class: "p-5 text-5xl"
    },
    zw = {
        class: "relative"
    },
    Bw = {
        class: "absolute bottom-1.5 font-bold"
    },
    Hw = Pl("i", {
        class: "fas fa-arrow-right"
    }, null, -1),
    qw = {
        key: 1
    },
    Gw = {
        class: "p-5"
    },
    Ww = Pl("label", {
        class: "text-gray-700 font-semibold"
    }, "Chave Pix", -1),
    Kw = {
        key: 0,
        class: "absolute inset-x-8 bottom-8"
    },
    Jw = {
        key: 2
    },
    Xw = {
        class: "p-8"
    },
    Yw = Pl("img", {
        class: "w-1/3 mb-8 bank-from-pink-filter",
        src: "samba/stock/banks/2BHyIED.jpg"
    }, null, -1),
    Zw = Pl("h1", {
        class: "font-semibold"
    }, "Pronto, enviamos sua transferência", -1),
    Qw = {
        class: "flex flex-col items-center mt-8 p-4 py-12 border"
    },
    eC = {
        class: "font-bold text-5xl"
    },
    tC = {
        class: "mt-8 text-2xl"
    },
    nC = Pl("span", {
        class: "text-gray-600"
    }, "Agora mesmo", -1);
an();
const lC = Ow(((e, t, l, n, a, o) => {
    let r = dl("Page");
    return wl(), _l(r, {
        header: null
    }, {
        default: Ow((() => [Pl("div", Mw, [Pl("button", {
            class: "p-5 mt-8",
            onClick: t[1] || (t[1] = (...t) => e.$router.back && e.$router.back(...t))
        }, [Vw]), 0 == n.step ? (wl(), _l("div", Dw, [Pl("div", Nw, [Uw, Pl("p", $w, [jw, Pl("strong", null, g(e.$currency) + " " + g(n.balance.toLocaleString("pt-BR")), 1)])]), Pl("div", Fw, [Pl("div", zw, [Pl("span", Bw, g(e.$currency), 1), Zn(Pl("input", {
            onKeydown: t[2] || (t[2] = us((e => 0 != n.value ? n.step = 1 : null), ["enter"])),
            "onUpdate:modelValue": t[3] || (t[3] = e => n.value = e),
            class: "w-full font-bold border-b pl-20"
        }, null, 544), [
            [ns, n.value]
        ])])]), Pl("button", {
            onClick: t[4] || (t[4] = e => 0 != n.value ? n.step = 1 : null),
            class: ["absolute bottom-8 right-8 flex flex-center w-24 h-24 rounded-full", {
                "bg-gray-100 text-gray-400": 0 == n.value,
                "bank-light text-white": 0 != n.value
            }]
        }, [Hw], 2)])) : 1 == n.step ? (wl(), _l("div", qw, [Pl("div", Gw, [Ww, Zn(Pl("input", {
            "onUpdate:modelValue": t[5] || (t[5] = e => n.key = e),
            class: "w-full mt-8 pb-2 border-b font-bold"
        }, null, 512), [
            [ns, n.key]
        ])]), n.key.trim() ? (wl(), _l("div", Kw, [Pl("button", {
            onClick: t[6] || (t[6] = (...e) => n.submit && n.submit(...e)),
            class: "w-full rounded-full bank-light text-white p-5"
        }, " Transferir para essa chave ")])) : Ml("", !0)])) : 2 == n.step ? (wl(), _l("div", Jw, [Pl("div", Xw, [Yw, Zw, Pl("div", Qw, [Pl("p", eC, g(e.$currency) + " " + g(n.value), 1), Pl("p", null, "para " + g(e.name), 1), Pl("p", tC, [nC, Il(" • " + g(e.time), 1)])])])])) : Ml("", !0)])])),
        _: 1
    })
}));
Iw.render = lC, Iw.__scopeId = "data-v-2b331752";
const aC = {
    components: {
        Page: Bk
    },
    setup() {
        jl("setDark")(!1);
        let e = cc(),
            t = jl("alert"),
            l = rt(0),
            n = rt(1),
            a = rt("0"),
            o = rt("0");
        return Tn(a, (e => {
            let t = Number(e.replace(/\D/g, ""));
            a.value = (t > n.value ? n.value : t).toLocaleString("pt-BR")
        })), So.backend.bank_getBalance().then((e => n.value = e)), {
            step: l,
            balance: n,
            value: a,
            passport: o,
            submit: async function () {
                let l = Number(a.value.replace(/\D/g, "")),
                    {
                        name: n,
                        error: r
                    } = await So.backend.bank_confirm(o.value);
                if (!n) return So.alert(r);
                So.confirm("Deseja transferir " + js(l) + " para " + n + "?").then((a => {
                    a && So.lockAndProceed((() => So.backend.bank_transfer(o.value, l).then((a => {
                        a.error ? t(a.error) : e.replace({
                            path: "/bank/receipt",
                            query: {
                                name: n,
                                value: l
                            }
                        })
                    }))))
                }))
            }
        }
    }
},
    sC = sn("data-v-2062cc68");
ln("data-v-2062cc68");
const oC = {
    class: "mt-auto flex-1 bg-white relative"
},
    rC = Pl("i", {
        class: "fal fa-times text-4xl text-gray-600"
    }, null, -1),
    iC = {
        key: 0
    },
    cC = {
        class: "p-5"
    },
    uC = Pl("h1", {
        class: "font-semibold"
    }, "Qual é o valor da transferência?", -1),
    dC = {
        class: "mt-4 text-3xl"
    },
    pC = Il("Saldo disponível em conta "),
    fC = {
        class: "p-5 text-5xl"
    },
    mC = {
        class: "relative"
    },
    hC = {
        class: "absolute bottom-1.5 font-bold"
    },
    bC = Pl("i", {
        class: "fas fa-arrow-right"
    }, null, -1),
    gC = {
        key: 1
    },
    vC = {
        class: "p-5"
    },
    xC = Pl("label", {
        class: "text-gray-700 font-semibold"
    }, "Passaporte", -1),
    yC = Pl("button", {
        class: "w-full rounded-full bank-light text-white p-5"
    }, " Transferir para esse passaporte ", -1);
an();
const kC = sC(((e, t, l, n, a, o) => {
    let r = dl("Page");
    return wl(), _l(r, {
        header: null
    }, {
        default: sC((() => [Pl("div", oC, [Pl("button", {
            class: "p-5 mt-8",
            onClick: t[1] || (t[1] = (...t) => e.$router.back && e.$router.back(...t))
        }, [rC]), 0 == n.step ? (wl(), _l("div", iC, [Pl("div", cC, [uC, Pl("p", dC, [pC, Pl("strong", null, g(e.$currency) + " " + g(n.balance.toLocaleString("pt-BR")), 1)])]), Pl("div", fC, [Pl("div", mC, [Pl("span", hC, g(e.$currency), 1), Zn(Pl("input", {
            onKeydown: t[2] || (t[2] = us((e => 0 != n.value ? n.step = 1 : null), ["enter"])),
            "onUpdate:modelValue": t[3] || (t[3] = e => n.value = e),
            class: "w-full font-bold border-b pl-20"
        }, null, 544), [
            [ns, n.value]
        ])])]), Pl("button", {
            onClick: t[4] || (t[4] = e => 0 != n.value ? n.step = 1 : null),
            class: ["absolute bottom-8 right-8 flex flex-center w-24 h-24 rounded-full", {
                "bg-gray-100 text-gray-400": 0 == n.value,
                "bank-light text-white": 0 != n.value
            }]
        }, [bC], 2)])) : 1 == n.step ? (wl(), _l("div", gC, [Pl("div", vC, [xC, Zn(Pl("input", {
            "onUpdate:modelValue": t[5] || (t[5] = e => n.passport = e),
            class: "w-full mt-8 pb-2 border-b font-bold"
        }, null, 512), [
            [ns, n.passport]
        ])]), n.passport >= 0 ? (wl(), _l("div", {
            key: 0,
            onClick: t[6] || (t[6] = (...e) => n.submit && n.submit(...e)),
            class: "absolute inset-x-8 bottom-8"
        }, [yC])) : Ml("", !0)])) : Ml("", !0)])])),
        _: 1
    })
}));
aC.render = kC, aC.__scopeId = "data-v-2062cc68";
const wC = {
    components: {
        Page: Bk
    },
    setup() {
        jl("setDark")(!1);
        let e = uc(),
            {
                name: t,
                value: l
            } = e.query;
        l = Number(l).toLocaleString("pt-BR");
        let n = new Date;
        return {
            name: t,
            value: l,
            time: n.getHours() + "h" + String(n.getMinutes()).padStart(2, 0)
        }
    }
},
    CC = sn("data-v-180baeb8");
ln("data-v-180baeb8");
const _C = {
    class: "mt-auto flex-1 bg-white relative"
},
    AC = Pl("i", {
        class: "fal fa-times text-4xl text-gray-600"
    }, null, -1),
    SC = {
        class: "p-8"
    },
    TC = Pl("img", {
        class: "w-1/3 mb-8 bank-from-pink-filter",
        src: "samba/stock/banks/2BHyIED.jpg"
    }, null, -1),
    EC = Pl("h1", {
        class: "font-semibold"
    }, "Pronto, enviamos sua transferência", -1),
    RC = {
        class: "flex flex-col items-center mt-8 p-4 py-12 border"
    },
    PC = {
        class: "font-bold text-5xl"
    },
    LC = {
        class: "mt-8 text-2xl"
    },
    IC = Pl("span", {
        class: "text-gray-600"
    }, "Agora mesmo", -1);
an();
const OC = CC(((e, t, l, n, a, o) => {
    let r = dl("Page");
    return wl(), _l(r, {
        header: null
    }, {
        default: CC((() => [Pl("div", _C, [Pl("button", {
            class: "p-5 mt-8",
            onClick: t[1] || (t[1] = (...t) => e.$router.back && e.$router.back(...t))
        }, [AC]), Pl("div", null, [Pl("div", SC, [TC, EC, Pl("div", RC, [Pl("p", PC, g(e.$currency) + " " + g(n.value), 1), Pl("p", null, "para " + g(n.name), 1), Pl("p", LC, [IC, Il(" • " + g(n.time), 1)])])])])])])),
        _: 1
    })
}));
wC.render = OC, wC.__scopeId = "data-v-180baeb8";
const MC = {
    components: {
        Page: Bk
    },
    setup() {
        jl("setDark")(!1);
        let e = rt(0),
            t = rt([]);
        return So.backend.bank_getBalance().then((t => e.value = t)), So.backend.bank_extract().then((e => t.value = e.map((e => (e.description = e.description.replace(/<[^>]*>/g, ""), e))))), {
            balance: e,
            statements: t
        }
    }
},
    VC = {
        class: "flex flex-col items-start bg-white h-full pt-12"
    },
    DC = Pl("i", {
        class: "far fa-chevron-left"
    }, null, -1),
    NC = {
        class: "p-8"
    },
    UC = Pl("h1", {
        class: "text-gray-600"
    }, "Saldo disponível", -1),
    $C = {
        class: "mt-2 font-bold text-5xl"
    },
    jC = Pl("hr", {
        class: "w-full"
    }, null, -1),
    FC = {
        class: "flex flex-col h-full w-full overflow-y-auto hide-scroll"
    },
    zC = Pl("h1", {
        class: "font-bold text-4xl px-8 pt-8 pb-4"
    }, "Histórico", -1),
    BC = {
        key: 0,
        class: "text-xl text-gray-400"
    },
    HC = {
        key: 0,
        class: "mt-8 text-center text-3xl"
    },
    qC = Pl("i", {
        class: "fal fa-history"
    }, null, -1),
    GC = Il(" Nenhuma atividade recente ");
MC.render = function (e, t, l, n, a, o) {
    let r = dl("Page");
    return wl(), _l(r, {
        header: null
    }, {
        default: en((() => [Pl("div", VC, [Pl("button", {
            class: "p-8 text-gray-600",
            onClick: t[1] || (t[1] = (...t) => e.$router.back && e.$router.back(...t))
        }, [DC]), Pl("div", NC, [UC, Pl("h1", $C, g(e.$currency) + " " + g(n.balance.toLocaleString("pt-BR")), 1)]), jC, Pl("div", FC, [zC, Pl("ul", null, [(wl(!0), _l(bl, null, fa(n.statements, ((e, t) => (wl(), _l("li", {
            key: t,
            class: "p-4 px-8 border-b"
        }, [Pl("p", null, g(e.description), 1), e.created_at ? (wl(), _l("p", BC, g(e.created_at), 1)) : Ml("", !0)])))), 128)), n.statements.length ? Ml("", !0) : (wl(), _l("p", HC, [qC, GC]))])])])])),
        _: 1
    })
};
const WC = {
    components: {
        Page: Bk
    },
    setup() {
        jl("setDark")(!1);
        let e = jl("alert"),
            t = rt("received"),
            l = rt(0),
            n = rt([]),
            a = da((() => n.value.filter((e => ("sent" === t.value ? e.payee_id : e.payer_id) === So.identity.user_id))));
        return So.backend.bank_getBalance().then((e => l.value = e)), So.backend.bank_getInvoices().then((e => n.value = e)), {
            balance: l,
            invoices: n,
            filtered: a,
            pay: function (t) {
                So.backend.bank_payInvoice(t.id).then((a => {
                    if (null == a ? void 0 : a.error) e(a.error);
                    else {
                        jk(l, Math.max(0, l.value - t.value));
                        let e = n.value.indexOf(t);
                        n.value.splice(e, 1)
                    }
                }))
            },
            tab: t
        }
    }
},
    KC = {
        class: "flex flex-col items-start h-full bg-white"
    },
    JC = Pl("i", {
        class: "far fa-chevron-left"
    }, null, -1),
    XC = {
        class: "px-8 pb-8 w-full border-b"
    },
    YC = Pl("h1", {
        class: "text-4xl text-gray-600 font-semibold"
    }, "Saldo disponível", -1),
    ZC = {
        class: "mt-4 text-5xl font-bold"
    },
    QC = {
        class: "grid grid-cols-2 w-full text-3xl border-b"
    },
    e_ = {
        class: "flex-1 w-full overflow-y-auto hide-scroll"
    },
    t_ = {
        class: "flex-1"
    },
    n_ = {
        class: "break-words text-3xl"
    },
    l_ = {
        class: "text-gray-500 text-xl"
    },
    a_ = {
        class: "ml-auto text-red-500 font-semibold px-4"
    },
    s_ = {
        key: 0,
        class: "mt-8 text-center text-3xl"
    },
    o_ = Pl("i", {
        class: "fal fa-file-invoice-dollar"
    }, null, -1),
    r_ = Il(" Nenhuma fatura em aberto ");
WC.render = function (e, t, l, n, a, o) {
    let r = dl("Page");
    return wl(), _l(r, {
        header: null
    }, {
        default: en((() => [Pl("div", KC, [Pl("button", {
            class: "p-8 pt-16 text-gray-600",
            onClick: t[1] || (t[1] = (...t) => e.$router.back && e.$router.back(...t))
        }, [JC]), Pl("div", XC, [YC, Pl("p", ZC, g(e.$currency) + " " + g(n.balance.toLocaleString("pt-BR")), 1)]), Pl("div", QC, [Pl("button", {
            onClick: t[2] || (t[2] = e => n.tab = "received"),
            class: [{
                "bank-light text-white": "received" === n.tab
            }, "p-4 text-center font-bold border-r"]
        }, "Recebidas", 2), Pl("button", {
            onClick: t[3] || (t[3] = e => n.tab = "sent"),
            class: [{
                "bank-light text-white": "sent" === n.tab
            }, "p-4 text-center font-bold"]
        }, "Enviadas", 2)]), Pl("ul", e_, [(wl(!0), _l(bl, null, fa(n.filtered, ((t, l) => (wl(), _l("li", {
            key: l,
            class: "flex items-center px-4 py-4 border-b"
        }, [Pl("div", t_, [Pl("h1", n_, g(t.reason), 1), Pl("p", l_, g(t.name) + " - " + g(e.$filters.unixToRelative(t.created_at)), 1)]), Pl("p", a_, g(e.$currency) + " " + g(t.value.toLocaleString("pt-BR")), 1), "received" === n.tab ? (wl(), _l("button", {
            key: 0,
            onClick: e => n.pay(t),
            class: "bank-light text-white px-6 py-2 rounded-xl"
        }, " Pagar ", 8, ["onClick"])) : Ml("", !0)])))), 128)), n.filtered.length ? Ml("", !0) : (wl(), _l("p", s_, [o_, r_]))])])])),
        _: 1
    })
};
const i_ = {
    components: {
        Page: Bk
    },
    setup() {
        jl("setDark")(!1);
        let e = jl("alert"),
            t = jl("setLoading"),
            l = rt(0),
            n = rt(0),
            a = rt(""),
            o = rt(1),
            r = rt({});
        return Tn(n, (e => {
            n.value = Number(e.replace(/\D/g, "")).toLocaleString("pt-BR")
        })), {
            step: o,
            submit: function () {
                let s = Number(n.value.replace(/\D/g, ""));
                t(!0), So.backend.bank_storeInvoice(l.value, s, a.value).then((t => {
                    if (t.error) e(t.error);
                    else {
                        let e = new Date;
                        t.time = e.getHours() + "h" + String(e.getMinutes()).padStart(2, 0), r.value = t, o.value = 2
                    }
                })).finally((() => t(!1)))
            },
            passport: l,
            value: n,
            reason: a,
            receipt: r
        }
    }
},
    c_ = {
        class: "h-full bg-white"
    },
    u_ = Pl("i", {
        class: "far fa-chevron-left"
    }, null, -1),
    d_ = {
        key: 0
    },
    p_ = {
        class: "p-8"
    },
    f_ = Pl("label", {
        class: "text-3xl text-gray-500"
    }, "Passaporte", -1),
    m_ = {
        class: "px-8 pb-8"
    },
    h_ = Pl("label", {
        class: "text-3xl text-gray-500"
    }, "Valor da fatura", -1),
    b_ = {
        class: "mt-4 relative text-5xl"
    },
    g_ = {
        class: "absolute bottom-1.5 font-bold"
    },
    v_ = {
        class: "px-8"
    },
    x_ = Pl("label", {
        class: "text-3xl text-gray-500"
    }, "Razão", -1),
    y_ = Pl("button", {
        class: "w-full rounded-full bank-light text-white p-5"
    }, " Criar fatura ", -1),
    k_ = {
        key: 1,
        class: "p-8"
    },
    w_ = Pl("img", {
        class: "w-1/3 mb-8 bank-from-pink-filter",
        src: "samba/stock/banks/2BHyIED.jpg"
    }, null, -1),
    C_ = Pl("h1", {
        class: "font-semibold"
    }, "Pronto, enviamos sua fatura", -1),
    __ = {
        class: "flex flex-col items-center mt-8 p-4 py-12 border"
    },
    A_ = {
        class: "font-bold text-5xl"
    },
    S_ = {
        class: "mt-8 text-2xl"
    },
    T_ = Pl("span", {
        class: "text-gray-600"
    }, "Agora mesmo", -1);
i_.render = function (e, t, l, n, a, o) {
    let r = dl("Page");
    return wl(), _l(r, {
        header: null
    }, {
        default: en((() => [Pl("div", c_, [Pl("button", {
            class: "p-8 pt-16 text-gray-600",
            onClick: t[1] || (t[1] = (...t) => e.$router.back && e.$router.back(...t))
        }, [u_]), 1 == n.step ? (wl(), _l("div", d_, [Pl("div", p_, [f_, Zn(Pl("input", {
            "onUpdate:modelValue": t[2] || (t[2] = e => n.passport = e),
            maxlength: 11,
            class: "w-full mt-4 font-bold border-b text-5xl"
        }, null, 512), [
            [ns, n.passport]
        ])]), Pl("div", m_, [h_, Pl("div", b_, [Pl("span", g_, g(e.$currency), 1), Zn(Pl("input", {
            "onUpdate:modelValue": t[3] || (t[3] = e => n.value = e),
            maxlength: 11,
            class: "w-full font-bold border-b pl-20"
        }, null, 512), [
            [ns, n.value]
        ])])]), Pl("div", v_, [x_, Zn(Pl("input", {
            "onUpdate:modelValue": t[4] || (t[4] = e => n.reason = e),
            maxlength: "100",
            spellcheck: "false",
            placeholder: "Razão da fatura",
            class: "w-full mt-4 font-bold text-4xl pb-2 border-b"
        }, null, 512), [
            [ns, n.reason]
        ])]), n.passport >= 0 && 0 != n.value && n.reason.trim() ? (wl(), _l("div", {
            key: 0,
            onClick: t[5] || (t[5] = (...e) => n.submit && n.submit(...e)),
            class: "absolute inset-x-8 bottom-8"
        }, [y_])) : Ml("", !0)])) : 2 == n.step ? (wl(), _l("div", k_, [w_, C_, Pl("div", __, [Pl("p", A_, g(e.$currency) + " " + g(n.receipt.value.toLocaleString("pt-BR")), 1), Pl("p", null, "para " + g(n.receipt.name), 1), Pl("p", S_, [T_, Il(" • " + g(n.receipt.time), 1)])])])) : Ml("", !0)])])),
        _: 1
    })
};
const E_ = {
    components: {
        Page: Bk
    },
    setup() {
        jl("setDark")(!1);
        let e = jl("alert"),
            t = rt(0),
            l = rt([]);
        return So.backend.bank_getBalance().then((e => t.value = e)), So.backend.bank_getFines().then((e => l.value = e)), {
            balance: t,
            fines: l,
            pay: function (n) {
                So.backend.bank_payFine(n.id).then((a => {
                    if (null == a ? void 0 : a.error) e(a.error);
                    else {
                        jk(t, Math.max(0, t.value - n.total));
                        let e = l.value.indexOf(n);
                        l.value.splice(e, 1)
                    }
                }))
            }
        }
    }
},
    R_ = {
        class: "flex flex-col items-start h-full bg-white"
    },
    P_ = Pl("i", {
        class: "far fa-chevron-left"
    }, null, -1),
    L_ = {
        class: "px-8 pb-8 w-full border-b"
    },
    I_ = Pl("h1", {
        class: "text-4xl text-gray-600 font-semibold"
    }, "Saldo disponível", -1),
    O_ = {
        class: "mt-4 text-5xl font-bold"
    },
    M_ = Pl("p", {
        class: "px-8 py-8 font-bold text-3xl"
    }, "Multas", -1),
    V_ = {
        class: "flex-1 w-full overflow-y-auto hide-scroll"
    },
    D_ = {
        class: "flex-1"
    },
    N_ = {
        class: "break-words text-3xl"
    },
    U_ = {
        class: "text-gray-500 text-xl"
    },
    $_ = {
        class: "ml-auto text-red-500 font-semibold px-4"
    },
    j_ = {
        key: 0,
        class: "mt-8 text-center text-3xl"
    },
    F_ = Pl("i", {
        class: "fal fa-gavel"
    }, null, -1),
    z_ = Il(" Nenhuma multa pendente ");
E_.render = function (e, t, l, n, a, o) {
    let r = dl("Page");
    return wl(), _l(r, {
        header: null
    }, {
        default: en((() => [Pl("div", R_, [Pl("button", {
            class: "p-8 pt-16 text-gray-600",
            onClick: t[1] || (t[1] = (...t) => e.$router.back && e.$router.back(...t))
        }, [P_]), Pl("div", L_, [I_, Pl("p", O_, g(e.$currency) + " " + g(n.balance.toLocaleString("pt-BR")), 1)]), M_, Pl("ul", V_, [(wl(!0), _l(bl, null, fa(n.fines, ((t, l) => (wl(), _l("li", {
            key: l,
            class: "flex items-center px-4 py-4 border-b"
        }, [Pl("div", D_, [Pl("h1", N_, g(t.description), 1), Pl("p", U_, g(t.created_at), 1)]), Pl("p", $_, g(e.$currency) + " " + g(t.total.toLocaleString("pt-BR")), 1), Pl("button", {
            onClick: e => n.pay(t),
            class: "bank-light text-white px-6 py-2 rounded-xl"
        }, " Pagar ", 8, ["onClick"])])))), 128)), n.fines.length ? Ml("", !0) : (wl(), _l("p", j_, [F_, z_]))])])])),
        _: 1
    })
};
const B_ = {
    setup() {
        jl("setDark")(!1);
        let e = jl("alert"),
            t = So.identity,
            l = rt(0),
            n = rt("resume"),
            a = rt(null),
            o = rt([]),
            r = rt(So.hasNotificationFor("paypal"));

        function s(t) {
            return ({
                error: n,
                transaction: r
            }) => {
                n ? e(n) : (o.value.unshift(r), l.value += t * r.value, i(r), "payment" === r.type ? a.value = r : "deposit" === r.type && (d.bank -= r.value))
            }
        }

        function i(e) {
            n.value = "details", a.value = e
        }
        Tn(r, (e => So.setNotificationFor("paypal", e))), So.localhost && o.value.push({
            id: 1,
            user_id: 1,
            target: 1,
            value: 100,
            type: "deposit",
            created_at: Date.now() / 1e3
        }), So.onceRoute("PAYPAL", (({
            value: e
        }) => jk(l, l.value + e))), s.add = s(1), s.rem = s(-1);
        let c = Ze({}),
            u = Ze({}),
            d = Ze({
                bank: 0
            });
        So.backend.paypal_index().then((e => {
            l.value = e.balance, d.bank = e.bank, o.value = e.transactions
        }));
        let p = da((() => o.value.find((e => "payment" === e.type))));
        return {
            isAndroid: So.settings.isAndroid,
            notifications: r,
            identity: t,
            action: n,
            firstPayment: p,
            payment: a,
            openPayment: i,
            balance: l,
            extract: o,
            send: c,
            submitSend: function () {
                var t;
                let l = parseInt(null == (t = c.value) ? void 0 : t.replace(/\D/g, ""));
                c.user_id ? l ? So.lockAndProceed((() => So.backend.paypal_send(c.user_id, l, c.message).then(s.rem))) : e("Digite o valor a ser transferido") : e("Digite o passaporte do jogador")
            },
            transfer: u,
            submitTransfer: function () {
                var t;
                let l = parseInt(null == (t = u.value) ? void 0 : t.replace(/\D/g, ""));
                l ? So.lockAndProceed((() => So.backend.paypal_transfer(l).then(s.rem))) : e("Digite o valor a ser transferido")
            },
            deposit: d,
            submitDeposit: function () {
                var t;
                let l = parseInt(null == (t = d.value) ? void 0 : t.replace(/\D/g, ""));
                l ? So.lockAndProceed((() => So.backend.paypal_deposit(l).then(s.add))) : e("Digite o valor de depósito")
            }
        }
    }
},
    H_ = {
        class: "flex flex-col h-full bg-white"
    },
    q_ = {
        class: "flex-shrink-0 h-32 pt-16 border-b"
    },
    G_ = {
        key: 0,
        class: "text-blue-400"
    },
    W_ = Pl("i", {
        class: "fas fa-chevron-left"
    }, null, -1),
    K_ = {
        key: 1,
        class: "far fa-arrow-left"
    },
    J_ = {
        key: 0,
        class: "flex-1 overflow-y-auto hide-scroll p-5 bg-gray-100"
    },
    X_ = {
        key: 0,
        class: "bg-paypal h-80 rounded-lg p-8 text-white"
    },
    Y_ = {
        class: "text-right"
    },
    Z_ = {
        class: "text-2xl"
    },
    Q_ = {
        class: "mt-6 text-4xl break-words"
    },
    eA = {
        class: "bg-white mt-5 p-5 rounded-xl shadow-xl"
    },
    tA = {
        class: "flex justify-between items-center"
    },
    nA = Pl("h1", {
        class: "font-bold mb-2"
    }, "Saldo do PayPal", -1),
    lA = {
        class: "align-top"
    },
    aA = {
        class: "ml-3 text-6xl"
    },
    sA = {
        class: "bg-white p-5 mt-8 rounded-xl shadow-xl"
    },
    oA = Pl("i", {
        class: "far fa-list-ul mr-4"
    }, null, -1),
    rA = Il(" Ver toda atividade "),
    iA = {
        key: 1,
        class: "flex-1 bg-gray-100 overflow-y-auto p-5"
    },
    cA = {
        class: "text-center"
    },
    uA = Pl("svg", {
        class: "checkmark",
        xmlns: "http://www.w3.org/2000/svg",
        viewBox: "0 0 52 52"
    }, [Pl("circle", {
        class: "checkmark__circle",
        cx: "26",
        cy: "26",
        r: "25",
        fill: "none"
    }), Pl("path", {
        class: "checkmark__check",
        fill: "none",
        d: "M14.1 27.2l7.1 7.2 16.7-16.8"
    })], -1),
    dA = {
        class: "mt-3 px-3"
    },
    pA = {
        key: 0
    },
    fA = {
        key: 1
    },
    mA = {
        key: 2
    },
    hA = {
        key: 3
    },
    bA = {
        key: 0,
        class: "mt-10 border text-center bg-white rounded-xl"
    },
    gA = Pl("h1", {
        class: "font-bold py-4"
    }, "MENSAGEM", -1),
    vA = Pl("hr", null, null, -1),
    xA = {
        class: "block py-2 break-words"
    },
    yA = {
        class: "mt-10 border text-center bg-white rounded-xl"
    },
    kA = Pl("h1", {
        class: "font-bold py-4"
    }, "DATA", -1),
    wA = Pl("hr", null, null, -1),
    CA = {
        class: "block py-2"
    },
    _A = {
        class: "mt-10 border text-center bg-white rounded-xl"
    },
    AA = Pl("h1", {
        class: "font-bold py-4"
    }, "CÓDIGO DE TRANSAÇÃO", -1),
    SA = Pl("hr", null, null, -1),
    TA = {
        class: "block py-2"
    },
    EA = {
        key: 2,
        class: "flex-1 bg-gray-100 overflow-y-auto hide-scroll"
    },
    RA = {
        class: "w-16 h-16 bg-gray-400 rounded-full text-center py-2 text-gray-100"
    },
    PA = {
        key: 0,
        class: "fas fa-handshake"
    },
    LA = {
        key: 1,
        class: "fas fa-university"
    },
    IA = {
        key: 2,
        class: "fas fa-piggy-bank"
    },
    OA = {
        class: "flex flex-col ml-3"
    },
    MA = {
        class: "font-semibold"
    },
    VA = {
        class: "text-xl text-gray-400"
    },
    DA = {
        class: "ml-auto self-start"
    },
    NA = {
        key: 3,
        class: "flex-1 bg-gray-100 p-5"
    },
    UA = {
        class: "mt-10"
    },
    $A = {
        class: "text-xl"
    },
    jA = Il("Valor disponível no paypal: "),
    FA = {
        class: "flex mt-5"
    },
    zA = {
        key: 4,
        class: "flex-1 bg-gray-100 p-5"
    },
    BA = {
        class: "text-xl"
    },
    HA = Il("Valor disponível no paypal: "),
    qA = {
        class: "mt-10 text-right"
    },
    GA = {
        key: 5,
        class: "flex-1 bg-gray-100 p-5"
    },
    WA = {
        class: "text-xl"
    },
    KA = Il("Valor disponível no banco: "),
    JA = {
        class: "mt-10 text-right"
    },
    XA = {
        class: "mt-auto h-32 flex-shrink-0 border-t shadow-2xl flex justify-around text-3xl"
    },
    YA = {
        class: "text-center mt-auto"
    },
    ZA = Pl("i", {
        class: "fal fa-money-bill-wave-alt"
    }, null, -1),
    QA = Pl("span", {
        class: "block"
    }, "Enviar", -1),
    eS = {
        class: "text-center mt-auto"
    },
    tS = Pl("i", {
        class: "fal fa-university"
    }, null, -1),
    nS = Pl("span", {
        class: "block"
    }, "Sacar", -1),
    lS = {
        class: "text-center mt-auto"
    },
    aS = Pl("i", {
        class: "fal fa-piggy-bank"
    }, null, -1),
    sS = Pl("span", {
        class: "block"
    }, "Depositar", -1);
B_.render = function (e, t, l, n, a, o) {
    let r = dl("app-input");
    return wl(), _l("div", H_, [Pl("div", q_, [Pl("button", {
        onClick: t[1] || (t[1] = t => "resume" != n.action ? n.action = "resume" : e.$router.back()),
        class: "absolute top-16 left-0 px-4"
    }, [n.isAndroid ? (wl(), _l("i", K_)) : (wl(), _l("span", G_, [W_, Il(" " + g("resume" == n.action ? "Apps" : "Resumo"), 1)]))]), Pl("h1", {
        class: ["font-bold", {
            "ml-16": n.isAndroid,
            "text-center": !n.isAndroid
        }]
    }, g(n.isAndroid ? "resume" == n.action ? e.$filters.nameByApp.paypal : "Resumo" : e.$filters.nameByApp.paypal), 3)]), "resume" == n.action ? (wl(), _l("div", J_, [n.firstPayment ? (wl(), _l("div", X_, [Pl("div", Y_, [Pl("span", Z_, g(e.$filters.unixToDayOfMonth(n.firstPayment.created_at)), 1)]), Pl("p", Q_, [Il(g(n.firstPayment.user_id == n.identity.user_id ? "Você" : n.firstPayment.fullName) + " enviou ", 1), Pl("b", null, g(e.$filters.intToMoney(n.firstPayment.value)), 1)]), Pl("button", {
        onClick: t[2] || (t[2] = e => n.openPayment(n.firstPayment)),
        class: "mt-8 border-2 px-6 py-1 rounded-full"
    }, "Ver detalhes")])) : Ml("", !0), Pl("div", eA, [Pl("div", tA, [nA, Pl("button", {
        onClick: t[3] || (t[3] = e => n.notifications = !n.notifications),
        class: "text-white bg-paypal-light h-12 w-12 text-xl rounded-full"
    }, [Pl("i", {
        class: ["far", n.notifications ? "fa-bell" : "fa-bell-slash"]
    }, null, 2)])]), Pl("span", lA, g(e.$currency), 1), Pl("span", aA, g(n.balance.toLocaleString("pt-BR")), 1)]), Pl("div", sA, [Pl("button", {
        class: "text-paypal-light",
        onClick: t[4] || (t[4] = e => n.action = "activity")
    }, [oA, rA])])])) : "details" == n.action ? (wl(), _l("div", iA, [Pl("div", cA, [uA, Pl("div", dA, ["withdraw" === n.payment.type ? (wl(), _l("p", pA, " Você sacou " + g(e.$filters.intToMoney(n.payment.value)), 1)) : "deposit" === n.payment.type ? (wl(), _l("p", fA, " Você depositou " + g(e.$filters.intToMoney(n.payment.value)), 1)) : n.payment.user_id === n.identity.user_id ? (wl(), _l("p", mA, " Você enviou " + g(e.$filters.intToMoney(n.payment.value)) + " para " + g(n.payment.fullName), 1)) : (wl(), _l("p", hA, " Você recebeu " + g(e.$filters.intToMoney(n.payment.value)) + " de " + g(n.payment.fullName), 1))])]), n.payment.description ? (wl(), _l("div", bA, [gA, vA, Pl("span", xA, g(n.payment.description), 1)])) : Ml("", !0), Pl("div", yA, [kA, wA, Pl("span", CA, g(e.$filters.unixToDatetime(n.payment.created_at)), 1)]), Pl("div", _A, [AA, SA, Pl("span", TA, g(n.payment.id), 1)])])) : "activity" == n.action ? (wl(), _l("div", EA, [Pl("ul", null, [(wl(!0), _l(bl, null, fa(n.extract, (t => (wl(), _l("li", {
        onClick: e => n.openPayment(t),
        key: t.id,
        class: "flex items-center border-b p-4 shadow"
    }, [Pl("div", RA, [t.user_id != t.target ? (wl(), _l("i", PA)) : "withdraw" == t.type ? (wl(), _l("i", LA)) : "deposit" == t.type ? (wl(), _l("i", IA)) : Ml("", !0)]), Pl("div", OA, [Pl("span", MA, g("payment" == t.type ? "Pagamento" : "withdraw" == t.type ? "Saque" : "Depósito"), 1), Pl("span", VA, g(e.$filters.unixToDate(t.created_at)), 1)]), Pl("div", DA, [Pl("span", {
        class: ["text-2xl", t.user_id == t.target && "withdraw" == t.type ? "text-red-500" : 0, t.user_id != t.target && t.user_id == n.identity.user_id ? "text-red-500" : 0]
    }, g(e.$filters.intToMoney(t.value)), 3)])], 8, ["onClick"])))), 128))])])) : "send" == n.action ? (wl(), _l("div", NA, [Pl(r, {
        modelValue: n.send.user_id,
        "onUpdate:modelValue": t[5] || (t[5] = e => n.send.user_id = e),
        format: "int",
        noborder: "1",
        class: "bg-transparent border-b border-blue-400",
        placeholder: "Passaporte"
    }, null, 8, ["modelValue"]), Pl("div", UA, [Pl(r, {
        modelValue: n.send.value,
        "onUpdate:modelValue": t[6] || (t[6] = e => n.send.value = e),
        format: "money",
        noborder: "1",
        class: "bg-transparent border-b border-blue-400",
        placeholder: "Valor a ser enviado"
    }, null, 8, ["modelValue"]), Pl("small", $A, [jA, Pl("b", null, g(e.$filters.intToMoney(n.balance)), 1)])]), Pl("div", FA, [Pl(r, {
        modelValue: n.send.message,
        "onUpdate:modelValue": t[7] || (t[7] = e => n.send.message = e),
        class: "rounded-full px-6",
        placeholder: "Deixa uma mensagem",
        maxlength: "250"
    }, null, 8, ["modelValue"]), Pl("button", {
        onClick: t[8] || (t[8] = (...e) => n.submitSend && n.submitSend(...e)),
        class: "ml-4 p-4 px-8 bg-paypal-light text-white font-semibold rounded-full"
    }, "Transferir")])])) : "transfer" == n.action ? (wl(), _l("div", zA, [Pl(r, {
        modelValue: n.transfer.value,
        "onUpdate:modelValue": t[9] || (t[9] = e => n.transfer.value = e),
        noborder: "1",
        format: "money",
        placeholder: "Valor para transferir",
        class: "bg-transparent border-b border-blue-400"
    }, null, 8, ["modelValue"]), Pl("small", BA, [HA, Pl("b", null, g(e.$filters.intToMoney(n.balance)), 1)]), Pl("div", qA, [Pl("button", {
        onClick: t[10] || (t[10] = (...e) => n.submitTransfer && n.submitTransfer(...e)),
        class: "bg-paypal-light p-4 px-8 text-white font-semibold rounded-full"
    }, "Sacar")])])) : "deposit" == n.action ? (wl(), _l("div", GA, [Pl(r, {
        modelValue: n.deposit.value,
        "onUpdate:modelValue": t[11] || (t[11] = e => n.deposit.value = e),
        noborder: "1",
        format: "money",
        placeholder: "Valor para depositar",
        class: "bg-transparent border-b border-blue-400"
    }, null, 8, ["modelValue"]), Pl("small", WA, [KA, Pl("b", null, g(e.$filters.intToMoney(n.deposit.bank)), 1)]), Pl("div", JA, [Pl("button", {
        onClick: t[12] || (t[12] = (...e) => n.submitDeposit && n.submitDeposit(...e)),
        class: "bg-paypal-light p-4 px-8 text-white font-semibold rounded-full"
    }, "Depositar")])])) : Ml("", !0), Pl("div", XA, [Pl("div", YA, [Pl("button", {
        onClick: t[13] || (t[13] = e => n.action = "send"),
        class: "bg-paypal-light text-white p-5 rounded-full"
    }, [ZA]), QA]), Pl("div", eS, [Pl("button", {
        onClick: t[14] || (t[14] = e => n.action = "transfer"),
        class: "bg-paypal-light text-white p-5 rounded-full"
    }, [tS]), nS]), Pl("div", lS, [Pl("button", {
        onClick: t[15] || (t[15] = e => n.action = "deposit"),
        class: "bg-paypal-light text-white p-5 rounded-full"
    }, [aS]), sS])])])
};
const oS = {
    props: ["title"],
    setup: () => ({
        isAndroid: So.settings.isAndroid
    })
},
    rS = {
        class: "h-32 pt-16 bg-olx text-white flex-shrink-0"
    },
    iS = {
        key: 0,
        class: "far fa-arrow-left"
    },
    cS = {
        key: 1,
        class: "fas fa-chevron-left"
    };
oS.render = function (e, t, l, n, a, o) {
    return wl(), _l("div", rS, [Pl("button", {
        onClick: t[1] || (t[1] = t => e.$router.back()),
        class: "absolute top-16 left-0 px-4"
    }, [n.isAndroid ? (wl(), _l("i", iS)) : (wl(), _l("i", cS))]), Pl("h1", {
        class: ["font-bold", {
            "ml-16": n.isAndroid,
            "text-center": !n.isAndroid
        }]
    }, g(l.title || "OLX"), 3)])
};
const uS = {
    props: ["data"],
    setup({
        data: e
    }) {
        let t = So.identity.moderator,
            l = jl("confirm");
        return {
            moderator: t,
            destroy: function () {
                l("Deseja excluir este anúncio?").then((t => {
                    t && So.backend.olx_destroy(e.id).then((() => e.id = null))
                }))
            }
        }
    }
},
    dS = {
        key: 0
    },
    pS = {
        class: "border-t border-b border-theme p-4"
    },
    fS = {
        class: "text-4xl break-words mb-4"
    },
    mS = {
        class: "flex justify-between items-end"
    },
    hS = {
        class: "block text-xl"
    },
    bS = {
        class: "flex"
    },
    gS = Pl("i", {
        class: "fal fa-trash-alt"
    }, null, -1);
uS.render = function (e, t, l, n, a, o) {
    return l.data.id ? (wl(), _l("div", dS, [Pl("img", {
        src: l.data.images[0],
        class: "w-full block",
        alt: ""
    }, null, 8, ["src"]), Pl("div", pS, [Pl("h1", fS, g(l.data.title), 1), Pl("div", mS, [Pl("strong", hS, g(e.$filters.intToMoney(l.data.price)), 1), Pl("div", bS, [n.moderator ? (wl(), _l("button", {
        key: 0,
        class: "mr-8 text-red-500",
        onClick: t[1] || (t[1] = (...e) => n.destroy && n.destroy(...e))
    }, [gS])) : Ml("", !0), Pl("button", {
        onClick: t[2] || (t[2] = t => e.$router.push("/olx/" + l.data.id)),
        class: "bg-olx px-6 py-2 text-white rounded-xl"
    }, " Ver mais ")])])])])) : Ml("", !0)
};
const vS = {},
    xS = {
        class: "absolute bottom-0 left-0 right-0 h-32 bg-theme-accent border-t-2 border-theme text-theme grid grid-cols-4 p-3 px-10"
    },
    yS = Pl("i", {
        class: "fal fa-home-alt text-4xl block"
    }, null, -1),
    kS = Pl("span", {
        class: "text-base font-bold"
    }, "Início", -1),
    wS = Pl("i", {
        class: "fal fa-bullhorn text-4xl block"
    }, null, -1),
    CS = Pl("span", {
        class: "text-base font-bold"
    }, "Anunciar", -1),
    _S = Pl("i", {
        class: "fal fa-search text-4xl block"
    }, null, -1),
    AS = Pl("span", {
        class: "text-base font-bold"
    }, "Buscar", -1),
    SS = Pl("i", {
        class: "fal fa-box text-4xl block"
    }, null, -1),
    TS = Pl("span", {
        class: "text-base font-bold"
    }, "Seus anúncios", -1);
vS.render = function (e, t, l, n, a, o) {
    return wl(), _l("div", xS, [Pl("button", {
        onClick: t[1] || (t[1] = t => e.$router.replace("/olx")),
        class: {
            "text-olx": "/olx" == e.$route.path
        }
    }, [yS, kS], 2), Pl("button", {
        onClick: t[2] || (t[2] = t => e.$router.push("/olx/create")),
        class: {
            "text-olx": "/olx/create" == e.$route.path
        }
    }, [wS, CS], 2), Pl("button", {
        onClick: t[3] || (t[3] = t => e.$router.push("/olx/search")),
        class: {
            "text-olx": "/olx/search" == e.$route.path
        }
    }, [_S, AS], 2), Pl("button", {
        onClick: t[4] || (t[4] = t => e.$router.push("/olx/dashboard")),
        class: {
            "text-olx": "/olx/dashboard" == e.$route.path
        }
    }, [SS, TS], 2)])
};
const ES = {
    components: {
        Header: oS,
        Ad: uS,
        Footer: vS
    },
    setup() {
        jl("setDark")(!0);
        let e = rt([]);
        return So.backend.olx_search("%", "%").then((t => {
            e.value = t
        })), {
            ads: e
        }
    }
},
    RS = {
        class: "flex flex-col h-full bg-theme text-theme"
    },
    PS = {
        class: "overflow-y-auto hide-scroll"
    },
    LS = Pl("div", {
        class: "mt-32"
    }, null, -1);
ES.render = function (e, t, l, n, a, o) {
    let r = dl("Header"),
        s = dl("Ad"),
        i = dl("Footer");
    return wl(), _l("div", RS, [Pl(r, {
        title: "Anúncios",
        class: "flex-shrink-0"
    }), Pl("ul", PS, [(wl(!0), _l(bl, null, fa(n.ads, (e => (wl(), _l("li", {
        key: e.id
    }, [Pl(s, {
        data: e
    }, null, 8, ["data"])])))), 128))]), LS, Pl(i)])
};
const IS = rt(""),
    OS = rt(""),
    MS = rt(),
    VS = rt(""),
    DS = rt([]),
    NS = {
        components: {
            Header: oS,
            Footer: vS
        },
        setup() {
            jl("setDark")(!0), co();
            let e = cc(),
                t = jl("alert");
            return {
                title: IS,
                category: OS,
                description: VS,
                price: MS,
                images: DS,
                addImage: async function () {
                    try {
                        let e = await So.useAnyImage("/olx");
                        DS.value.push(e)
                    } catch (e) { }
                },
                submit: function () {
                    var l;
                    let n = {
                        title: IS,
                        category: OS,
                        price: MS,
                        description: VS,
                        images: DS
                    };
                    for (let e in n) n[e] = n[e].value;
                    return n.title.trim() ? n.category ? n.price ? n.images.length ? (n.price = parseInt(null == (l = n.price) ? void 0 : l.replace(/\D/g, "")), void So.backend.olx_createAd(n).then((l => {
                        if (l.error) return t(l.error);
                        e.replace("/olx"), IS.value = "", OS.value = "", MS.value = void 0, VS.value = "", DS.value = []
                    }))) : t("Ao menos uma imagem é obrigatória.") : t("Insira um preço") : t("Escolha uma categoria") : t("Título inválido")
                }
            }
        }
    },
    US = {
        class: "flex flex-col h-full bg-theme text-theme"
    },
    $S = {
        class: "p-5"
    },
    jS = Pl("label", null, "Título do Anúncio", -1),
    FS = {
        class: "mt-5"
    },
    zS = Pl("label", null, "Categoria", -1),
    BS = {
        class: "mt-5"
    },
    HS = Pl("label", null, "Preço", -1),
    qS = {
        class: "mt-5 relative"
    },
    GS = Pl("label", null, "Descrição", -1),
    WS = {
        class: "absolute bottom-4 right-4 text-lg text-theme"
    },
    KS = Pl("label", null, "Fotos", -1),
    JS = {
        class: "h-24 flex"
    },
    XS = Pl("i", {
        class: "fas fa-plus"
    }, null, -1);
NS.render = function (e, t, l, n, a, o) {
    let r = dl("Header"),
        s = dl("app-input"),
        i = dl("app-select");
    return wl(), _l("div", US, [Pl(r, {
        title: "Anunciar"
    }), Pl("div", $S, [Pl("div", null, [jS, Pl(s, {
        darkable: "true",
        modelValue: n.title,
        "onUpdate:modelValue": t[1] || (t[1] = e => n.title = e),
        placeholder: "BMW i8",
        maxlength: "64",
        class: "text-2xl"
    }, null, 8, ["modelValue"])]), Pl("div", FS, [zS, Pl(i, {
        darkable: "true",
        class: "text-2xl",
        modelValue: n.category,
        "onUpdate:modelValue": t[2] || (t[2] = e => n.category = e),
        options: {
            cars: "Carros",
            motorcycles: "Motos",
            houses: "Casas",
            misc: "Outros"
        }
    }, null, 8, ["modelValue"])]), Pl("div", BS, [HS, Pl(s, {
        darkable: "true",
        modelValue: n.price,
        "onUpdate:modelValue": t[3] || (t[3] = e => n.price = e),
        format: "money",
        maxlength: "11",
        class: "text-2xl"
    }, null, 8, ["modelValue"])]), Pl("div", qS, [GS, Zn(Pl("textarea", {
        onKeydown: t[4] || (t[4] = us(is((() => { }), ["prevent"]), ["enter"])),
        class: "resize-none p-3 bg-theme border border-theme rounded-lg fancy-scroll w-full text-3xl",
        "onUpdate:modelValue": t[5] || (t[5] = e => n.description = e),
        maxlength: "1024",
        rows: "8"
    }, null, 544), [
        [ns, n.description]
    ]), Pl("span", WS, g(n.description.length) + "/1024", 1)]), Pl("div", null, [KS, Pl("div", JS, [(wl(!0), _l(bl, null, fa(n.images, ((e, t) => (wl(), _l("img", {
        key: t,
        src: e,
        class: "w-24 h-24 border-2 mr-2"
    }, null, 8, ["src"])))), 128)), n.images.length < 3 ? (wl(), _l("button", {
        key: 0,
        onClick: t[6] || (t[6] = (...e) => n.addImage && n.addImage(...e)),
        class: "w-24 h-24 border-2 border-olx flex flex-center text-olx"
    }, [XS])) : Ml("", !0)])]), Pl("button", {
        onClick: t[7] || (t[7] = (...e) => n.submit && n.submit(...e)),
        class: "absolute bottom-16 right-8 bg-olx p-3 px-6 text-white rounded-xl mt-2 block ml-auto"
    }, "Publicar")])])
};
const YS = {
    components: {
        Header: oS,
        Ad: uS
    },
    setup() {
        jl("setDark")(!0);
        let e, t = rt(""),
            l = rt("%"),
            n = rt([]);

        function a() {
            let e = t.value || "%";
            "%" != e && (e = "%" + e + "%"), So.backend.olx_search(e, l.value).then((e => n.value = e))
        }
        return Tn(t, (() => {
            clearTimeout(e), e = setTimeout(a, 500)
        })), Tn(l, (() => a())), a(), {
            query: t,
            category: l,
            ads: n
        }
    }
},
    ZS = {
        class: "flex flex-col h-full bg-theme text-theme"
    },
    QS = {
        class: "p-3 flex"
    },
    eT = {
        class: "overflow-y-auto hide-scroll"
    },
    tT = Pl("div", {
        class: "mt-32"
    }, null, -1);
YS.render = function (e, t, l, n, a, o) {
    let r = dl("Header"),
        s = dl("app-input"),
        i = dl("app-select"),
        c = dl("Ad");
    return wl(), _l("div", ZS, [Pl(r, {
        title: "Busca"
    }), Pl("div", QS, [Pl(s, {
        darkable: "true",
        modelValue: n.query,
        "onUpdate:modelValue": t[1] || (t[1] = e => n.query = e),
        placeholder: "Título do anúncio",
        class: "text-2xl rounded-r-none"
    }, null, 8, ["modelValue"]), Pl(i, {
        darkable: "true",
        modelValue: n.category,
        "onUpdate:modelValue": t[2] || (t[2] = e => n.category = e),
        class: "rounded-l-none border-l-0 text-2xl",
        options: {
            "%": "Todos",
            cars: "Carros",
            motorcycles: "Motos",
            houses: "Casas",
            misc: "Outros"
        }
    }, null, 8, ["modelValue"])]), Pl("ul", eT, [(wl(!0), _l(bl, null, fa(n.ads, (e => (wl(), _l("li", {
        key: e.id
    }, [Pl(c, {
        data: e
    }, null, 8, ["data"])])))), 128))]), tT])
};
const nT = {
    components: {
        Header: oS,
        Ad: uS,
        Footer: vS
    },
    inject: ["setDark"],
    setup() {
        let e = uc(),
            t = rt(),
            l = rt(0),
            n = So.identity;
        return So.backend.olx_fetch(e.params.id).then((e => {
            if (t.value = e || !1, e)
                for (let t of e.images) (new Image).src = t
        })), {
            ad: t,
            yourself: n,
            imgIndex: l
        }
    },
    mounted() {
        this.setDark(!0)
    }
},
    lT = {
        class: "flex flex-col h-full bg-theme text-theme"
    },
    aT = {
        key: 0
    },
    sT = {
        class: "relative bg-black"
    },
    oT = Pl("i", {
        class: "fal fa-chevron-left fa-2x"
    }, null, -1),
    rT = Pl("i", {
        class: "fal fa-chevron-right fa-2x"
    }, null, -1),
    iT = {
        class: "p-3 overflow-y-auto-hide-scroll"
    },
    cT = {
        class: "py-3"
    },
    uT = {
        class: "font-bold text-5xl"
    },
    dT = {
        class: "opacity-75 my-8 text-4xl break-words"
    },
    pT = {
        class: "opacity-50 text-2xl"
    },
    fT = Pl("hr", {
        class: "border-theme"
    }, null, -1),
    mT = {
        class: "py-3"
    },
    hT = Pl("h1", {
        class: "font-semibold mb-4 text-4xl"
    }, "Descrição", -1),
    bT = {
        class: "text-2xl opacity-75 break-words"
    },
    gT = Pl("hr", {
        class: "border-theme"
    }, null, -1),
    vT = {
        class: "py-3"
    },
    xT = Pl("h1", {
        class: "font-semibold mb-4 text-4xl"
    }, "Anunciante", -1),
    yT = {
        class: "text-2xl"
    },
    kT = Pl("strong", {
        class: "opacity-75"
    }, "Nome: ", -1),
    wT = {
        class: "opacity-50"
    },
    CT = Pl("strong", {
        class: "opacity-75"
    }, "Passaporte: ", -1),
    _T = {
        class: "opacity-50"
    },
    AT = Pl("strong", {
        class: "opacity-75"
    }, "Telefone: ", -1),
    ST = {
        class: "select-text opacity-50"
    },
    TT = Pl("i", {
        class: "fab fa-whatsapp"
    }, null, -1),
    ET = {
        key: 1
    },
    RT = Pl("h1", {
        class: "p-3 text-center opacity-75 font-semibold"
    }, "Anúncio não encontrado", -1);
nT.render = function (e, t, l, n, a, o) {
    let r = dl("Header");
    return wl(), _l("div", lT, [Pl(r, {
        title: "Detalhes"
    }), n.ad ? (wl(), _l("div", aT, [Pl("div", sT, [0 != n.imgIndex ? (wl(), _l("button", {
        key: 0,
        onClick: t[1] || (t[1] = e => n.imgIndex = Math.max(0, n.imgIndex - 1)),
        class: "absolute text-white h-full w-2/12"
    }, [oT])) : Ml("", !0), Pl("img", {
        class: "mx-auto",
        style: {
            "max-height": "21.5rem"
        },
        src: n.ad.images[n.imgIndex],
        alt: ""
    }, null, 8, ["src"]), n.imgIndex < n.ad.images.length - 1 ? (wl(), _l("button", {
        key: 1,
        onClick: t[2] || (t[2] = e => n.imgIndex = Math.min(n.ad.images.length - 1, n.imgIndex + 1)),
        class: "absolute top-0 right-0 text-white h-full w-2/12"
    }, [rT])) : Ml("", !0)]), Pl("div", iT, [Pl("div", cT, [Pl("h1", uT, g(e.$filters.intToMoney(n.ad.price)), 1), Pl("h3", dT, g(n.ad.title), 1), Pl("span", pT, "Publicado em " + g(e.$filters.unixToDate(n.ad.created_at)), 1)]), fT, Pl("div", mT, [hT, Pl("span", bT, g(n.ad.description), 1)]), gT, Pl("div", vT, [xT, Pl("ul", yT, [Pl("li", null, [kT, Pl("span", wT, g(n.ad.author.name), 1)]), Pl("li", null, [CT, Pl("span", _T, g(n.ad.author.user_id), 1)]), Pl("li", null, [AT, Pl("span", ST, g(n.ad.author.phone), 1), n.yourself.phone != n.ad.author.phone ? (wl(), _l("button", {
        key: 0,
        class: "ml-3 text-green-500",
        onClick: t[3] || (t[3] = t => e.$router.push("/whatsapp/" + n.ad.author.phone))
    }, [TT])) : Ml("", !0)])])])])])) : !1 === n.ad ? (wl(), _l("div", ET, [RT])) : Ml("", !0)])
};
const PT = {
    components: {
        Header: oS,
        Ad: uS
    },
    setup() {
        jl("setDark")(!0);
        let e = jl("alert"),
            t = rt();
        return So.backend.olx_dashboard().then((e => {
            t.value = e
        })), {
            ads: t,
            destroy: function (l) {
                So.backend.olx_destroy(l).then((n => {
                    (null == n ? void 0 : n.error) ? e(n.error) : t.value = t.value.filter((e => e.id != l))
                }))
            }
        }
    }
},
    LT = {
        class: "flex flex-col h-full bg-theme text-theme"
    },
    IT = {
        key: 0,
        class: "overflow-y-auto hide-scroll"
    },
    OT = {
        class: "ml-3 flex flex-col flex-1 justify-between"
    },
    MT = {
        class: "text-2xl text-theme opacity-75 break-words"
    },
    VT = {
        class: "text-xl text-theme opacity-75"
    },
    DT = Pl("i", {
        class: "fal fa-trash-alt text-red-500"
    }, null, -1),
    NT = {
        key: 1,
        class: "p-3"
    },
    UT = Pl("h1", {
        class: "text-theme font-semibold text-center"
    }, "Você não possui anúncios", -1),
    $T = Pl("div", {
        class: "mt-32"
    }, null, -1);
PT.render = function (e, t, l, n, a, o) {
    var r;
    let s = dl("Header");
    return wl(), _l("div", LT, [Pl(s, {
        title: "Seus anúncios"
    }), (null == (r = n.ads) ? void 0 : r.length) ? (wl(), _l("div", IT, [Pl("ul", null, [(wl(!0), _l(bl, null, fa(n.ads, (t => (wl(), _l("li", {
        key: t.id,
        class: "border-b border-theme last:border-b-0 flex"
    }, [Pl("img", {
        src: t.images[0],
        class: "h-32"
    }, null, 8, ["src"]), Pl("div", OT, [Pl("h1", MT, g(t.title), 1), Pl("h3", VT, g(e.$filters.intToMoney(t.price)), 1)]), Pl("button", {
        class: "m-3 p-2",
        onClick: e => n.destroy(t.id)
    }, [DT], 8, ["onClick"])])))), 128))])])) : n.ads ? (wl(), _l("div", NT, [UT])) : Ml("", !0), $T])
};
const jT = {},
    FT = {
        class: "mt-24 mx-4 bg-lightgray px-8 py-6 rounded-lg flex justify-between"
    };
jT.render = function (e, t) {
    return wl(), _l("div", FT, [Pl("button", null, [Pl("img", {
        src: e.$asset("/stock/tinder/flame.png", "tinderFlame"),
        class: "w-10",
        style: {
            filter: "/tinder" != e.$route.path ? "opacity(0.6) invert(0.5)" : "none"
        },
        onClick: t[1] || (t[1] = t => e.$router.replace("/tinder"))
    }, null, 12, ["src"])]), Pl("button", null, [Pl("img", {
        src: e.$asset("/stock/tinder/heart.png"),
        class: "w-10",
        style: {
            filter: "/tinder/likes" != e.$route.path ? "opacity(0.6) invert(0.5)" : "none"
        },
        onClick: t[2] || (t[2] = t => e.$router.replace("/tinder/likes"))
    }, null, 12, ["src"])]), Pl("button", null, [Pl("img", {
        src: e.$asset("/stock/tinder/chat.png"),
        class: "w-10",
        style: {
            filter: "/tinder/chats" != e.$route.path ? "opacity(0.6) invert(0.5)" : "none"
        },
        onClick: t[3] || (t[3] = t => e.$router.replace("/tinder/chats"))
    }, null, 12, ["src"])]), Pl("button", null, [Pl("img", {
        src: e.$asset("/stock/tinder/user.png"),
        class: "w-10",
        style: {
            filter: "/tinder/profile" != e.$route.path ? "opacity(0.6) invert(0.5)" : "none"
        },
        onClick: t[4] || (t[4] = t => e.$router.replace("/tinder/profile"))
    }, null, 12, ["src"])])])
};
const zT = {
    components: {
        Header: jT
    },
    setup() {
        jl("setDark")(!1);
        let e = cc(),
            t = rt();
        return So.backend.tinder().then((async l => {
            l ? t.value = await So.backend.tinder_next(0) : "/tinder" == e.currentRoute.value.path && e.replace("/tinder/register")
        })), {
            peer: t,
            back: function () {
                t.value && So.backend.tinder_next(t.value.id, !1).then((e => {
                    e ? t.value = e : t.value.previous = !1
                }))
            },
            next: function (e) {
                t.value && So.backend.tinder_next(t.value.id, !0, e).then((e => t.value = e))
            }
        }
    }
},
    BT = {
        class: "h-full bg-white flex flex-col"
    },
    HT = {
        key: 0,
        class: "flex-1 mt-8 mx-4"
    },
    qT = {
        class: "relative mt-4"
    },
    GT = {
        class: "absolute bottom-4 left-4 right-4 text-white text-4xl"
    },
    WT = {
        class: "flex"
    },
    KT = {
        class: "font-bold"
    },
    JT = {
        class: "ml-3"
    },
    XT = {
        class: "flex items-center"
    },
    YT = {
        class: "text-lg ml-2"
    },
    ZT = {
        key: 0,
        class: "grid grid-cols-3 gap-4"
    },
    QT = {
        class: "flex-1 overflow-y-auto text-3xl h-80 fancy-scroll mt-4 whitespace-pre-wrap"
    },
    eE = {
        class: "absolute bottom-8 inset-x-4 px-8 h-28 bg-lightgray flex justify-between rounded-2xl"
    },
    tE = {
        key: 1
    },
    nE = Pl("p", {
        class: "text-gray-500 text-center text-xl mt-4"
    }, "Não encontramos ninguém compatível com você.", -1);
zT.render = function (e, t, l, n, a, o) {
    let r = dl("Header");
    return wl(), _l("div", BT, [Pl(r), n.peer && "object" == typeof n.peer ? (wl(), _l("div", HT, [Pl("div", qT, [Pl("img", {
        src: n.peer.image,
        class: "rounded-2xl w-full max-h-96 mx-auto"
    }, null, 8, ["src"]), Pl("div", GT, [Pl("div", WT, [Pl("h1", KT, g(n.peer.name), 1), Pl("h3", JT, g(n.peer.age), 1)]), Pl("div", XT, [Pl("div", {
        class: ["w-2 h-2 rounded-full", [n.peer.online ? "bg-green-400" : "bg-gray-400"]]
    }, null, 2), Pl("span", YT, g(n.peer.online ? "Online" : "Offline"), 1)]), n.peer.show_tags ? (wl(), _l("ul", ZT, [(wl(!0), _l(bl, null, fa(n.peer.tags, ((e, t) => (wl(), _l("li", {
        key: t,
        class: "text-xl tinder-chip"
    }, g(e), 1)))), 128))])) : Ml("", !0)])]), Pl("p", QT, g(n.peer.bio), 1), Pl("div", eE, [n.peer.previous ? (wl(), _l("button", {
        key: 0,
        onClick: t[1] || (t[1] = e => n.back())
    }, [Pl("img", {
        src: e.$asset("/stock/tinder/redo.png"),
        class: "h-16"
    }, null, 8, ["src"])])) : Ml("", !0), Pl("button", {
        onClick: t[2] || (t[2] = e => n.next(0))
    }, [Pl("img", {
        src: e.$asset("/stock/tinder/refuse.png"),
        class: "h-16"
    }, null, 8, ["src"])]), Pl("button", {
        onClick: t[3] || (t[3] = e => n.next(2))
    }, [Pl("img", {
        src: e.$asset("/stock/tinder/star.png"),
        class: "h-16"
    }, null, 8, ["src"])]), Pl("button", {
        onClick: t[4] || (t[4] = e => n.next(1))
    }, [Pl("img", {
        src: e.$asset("/stock/tinder/like.png"),
        class: "h-16"
    }, null, 8, ["src"])])])])) : (wl(), _l("div", tE, [Pl("img", {
        src: e.$asset("/stock/tinder/heartbreak.svg"),
        class: "mx-auto mt-56 px-24"
    }, null, 8, ["src"]), nE]))])
};
const lE = Ze({
    show_gender: !0,
    show_tags: !0
}),
    aE = {
        components: {},
        setup() {
            let e = jl("setDark"),
                t = cc();
            e(!0);
            let l = Ze({
                tags: new Set
            }),
                n = rt();
            return {
                payload: lE,
                tmp: l,
                error: n,
                takeSelfie: async function () {
                    try {
                        let t = await So.useAnyImage("/tinder", !0);
                        lE.image = t, e(!1)
                    } catch (e) { }
                },
                next: function () {
                    var e;
                    if (lE.name)
                        if (lE.age)
                            if (lE.gender)
                                if (lE.tags)
                                    if (lE.target) {
                                        if (!lE.bio) {
                                            let e = l.bio;
                                            if (!e) return n.value = "Preencha a bio";
                                            if (e.length > 1024) return n.value = "Limite de caracteres ultrapassado";
                                            lE.bio = e, So.backend.tinder_register(lE).then((() => {
                                                t.replace("/tinder")
                                            }))
                                        }
                                    } else {
                                        let e = l.target;
                                        if (!e) return n.value = "Escolha sua preferência";
                                        lE.target = e
                                    }
                                else {
                                    let e = [...l.tags];
                                    if (!e.length) return n.value = "Escolha pelo menos uma orientação";
                                    if (e.length > 3) return n.value = "Escolha no máximo 3";
                                    lE.tags = e
                                } else {
                                let e = l.gender;
                                if (!e) return n.value = "Escolhe um gênero";
                                lE.gender = e
                            } else {
                            let e = parseInt(l.age);
                            if (!e) return n.value = "Insira sua idade";
                            if (e < 18) return n.value = "A idade mínima é 18";
                            lE.age = e
                        } else {
                        let t = null == (e = l.name) ? void 0 : e.trim();
                        if (!t) return n.value = "Insira seu nome e sobrenome";
                        if (!t.includes(" ")) return n.value = "Insira seu sobrenome";
                        if (t.match(/[\d!@#$%&*()\-=_+/]/)) return n.value = "Seu nome não pode ter números/símbolos";
                        lE.name = t
                    }
                    n.value = null
                }
            }
        },
        unmounted() {
            for (let e in lE) e.startsWith("show_") || delete lE[e]
        }
    },
    sE = sn("data-v-0181de71");
ln("data-v-0181de71");
const oE = {
    class: "flex flex-col h-full"
},
    rE = {
        key: 0,
        container: "",
        class: "flex-1"
    },
    iE = Pl("span", {
        class: "text-xl text-white block text-center mt-4"
    }, "Clique na imagem para alterar", -1),
    cE = {
        key: 1,
        class: "flex-1 bg-white"
    },
    uE = {
        key: 0,
        class: "mt-96 px-20"
    },
    dE = Pl("p", {
        class: "text-xl text-gray-400 mt-2"
    }, "É assim que o seu nome vai aparecer no Tinder e você não poderá alterá-lo depois.", -1),
    pE = {
        key: 1,
        class: "mt-96 px-20"
    },
    fE = Pl("p", {
        class: "text-xl text-gray-400 mt-2"
    }, "Sua idade será pública.", -1),
    mE = {
        key: 2,
        class: "mt-80 px-20"
    },
    hE = Pl("span", {
        class: "text-2xl tinder-gray"
    }, "Selecione o seu gênero.", -1),
    bE = {
        class: "flex items-center"
    },
    gE = Pl("label", {
        class: "ml-2 text-2xl tinder-gray"
    }, "Mostrar meu gênero no perfil", -1),
    vE = {
        key: 3,
        class: "mt-60 px-20"
    },
    xE = Pl("span", {
        class: "text-2xl tinder-gray"
    }, "Selecione até 3", -1),
    yE = {
        class: "flex items-center"
    },
    kE = Pl("label", {
        class: "ml-2 text-2xl tinder-gray"
    }, "Mostrar minha orientação no meu perfil", -1),
    wE = {
        key: 4,
        class: "mt-72 px-20"
    },
    CE = Pl("span", {
        class: "text-2xl tinder-gray"
    }, "Sua preferência é por", -1),
    _E = {
        key: 5,
        class: "mt-72 px-20"
    },
    AE = Pl("span", {
        class: "text-xl tinder-gray"
    }, "Escreva a sua biografia", -1),
    SE = Pl("p", {
        class: "text-xl tinder-gray"
    }, "É assim que a sua biografia vai aparecer no Tinder, mas você poderá alterá-la depois.", -1),
    TE = {
        key: 6,
        class: "mt-96 text-center"
    },
    EE = {
        key: 7,
        class: "absolute bottom-32 w-full text-center text-2xl text-red-500"
    },
    RE = {
        key: 8,
        class: "absolute bottom-20 inset-x-0 text-center"
    };
an();
const PE = sE(((e, t, l, n, a, o) => {
    let r = dl("app-loading");
    return wl(), _l("div", oE, [n.payload.image ? (wl(), _l("div", cE, [Pl("img", {
        class: "mx-auto mt-20 h-16",
        src: e.$asset("/stock/tinder/logo.svg", "tinderLogo"),
        style: {
            filter: "invert(0.4)"
        }
    }, null, 8, ["src"]), n.payload.name ? n.payload.age ? n.payload.gender ? n.payload.tags ? n.payload.target ? n.payload.bio ? (wl(), _l("div", TE, [Pl(r, {
        style: {
            filter: "invert(0.5)"
        }
    })])) : (wl(), _l("div", _E, [AE, Zn(Pl("textarea", {
        "onUpdate:modelValue": t[10] || (t[10] = e => n.tmp.bio = e),
        onKeydown: t[11] || (t[11] = us(is((() => { }), ["prevent"]), ["enter"])),
        class: "border h-80 fancy-scroll rounded-xl text-xl w-full resize-none p-4",
        spellcheck: "false"
    }, null, 544), [
        [ns, n.tmp.bio]
    ]), SE])) : (wl(), _l("div", wE, [CE, (wl(), _l(bl, null, fa({
        Male: "Homens",
        Female: "Mulheres",
        All: "Todos"
    }, ((e, t) => Pl("button", {
        key: t,
        onClick: e => n.tmp.target = t,
        class: ["w-full border border-gray-200 rounded-xl py-3 mb-3", {
            "border-gray-500": n.tmp.target == t
        }]
    }, g(e), 11, ["onClick"]))), 64))])) : (wl(), _l("div", vE, [xE, (wl(), _l(bl, null, fa(["Heterossexual", "Gay", "Lésbica", "Bissexual", "Assexual", "Demissexual", "Pansexual", "Outros"], (e => Pl("button", {
        key: e,
        class: ["block mb-3 text-5xl text-gray-400 transition-color duration-300", {
            "text-gray-900": n.tmp.tags.has(e)
        }],
        onClick: t => n.tmp.tags.has(e) ? n.tmp.tags.delete(e) : n.tmp.tags.add(e)
    }, g(e), 11, ["onClick"]))), 64)), Pl("div", yE, [Zn(Pl("input", {
        "onUpdate:modelValue": t[9] || (t[9] = e => n.payload.show_tags = e),
        type: "checkbox",
        style: {
            filter: "grayscale(1)"
        }
    }, null, 512), [
        [ls, n.payload.show_tags]
    ]), kE])])) : (wl(), _l("div", mE, [hE, Pl("button", {
        onClick: t[6] || (t[6] = e => n.tmp.gender = "Male"),
        class: ["w-full border border-gray-200 rounded-xl py-3 mb-3", {
            "border-gray-500": "Male" == n.tmp.gender
        }]
    }, " Homem ", 2), Pl("button", {
        onClick: t[7] || (t[7] = e => n.tmp.gender = "Female"),
        class: ["w-full border border-gray-200 rounded-xl py-3 mb-3", {
            "border-gray-500": "Female" == n.tmp.gender
        }]
    }, " Mulher ", 2), Pl("div", bE, [Zn(Pl("input", {
        "onUpdate:modelValue": t[8] || (t[8] = e => n.payload.show_gender = e),
        type: "checkbox",
        style: {
            filter: "grayscale(1)"
        }
    }, null, 512), [
        [ls, n.payload.show_gender]
    ]), gE])])) : (wl(), _l("div", pE, [Zn(Pl("input", {
        autofocus: "",
        onKeydown: t[4] || (t[4] = us(((...e) => n.next && n.next(...e)), ["enter"])),
        "onUpdate:modelValue": t[5] || (t[5] = e => n.tmp.age = e),
        type: "text",
        maxlength: "3",
        min: "18",
        placeholder: "21",
        class: "mx-auto block w-full border-b text-gray-800"
    }, null, 544), [
        [ns, n.tmp.age]
    ]), fE])) : (wl(), _l("div", uE, [Zn(Pl("input", {
        autofocus: "",
        onKeydown: t[2] || (t[2] = us(((...e) => n.next && n.next(...e)), ["enter"])),
        "onUpdate:modelValue": t[3] || (t[3] = e => n.tmp.name = e),
        type: "text",
        maxlength: "255",
        placeholder: "Nome e Sobrenome",
        class: "mx-auto block w-full border-b text-gray-800"
    }, null, 544), [
        [ns, n.tmp.name]
    ]), dE])), n.error ? (wl(), _l("p", EE, g(n.error), 1)) : Ml("", !0), n.payload.bio ? Ml("", !0) : (wl(), _l("div", RE, [Pl("button", {
        onClick: t[12] || (t[12] = (...e) => n.next && n.next(...e)),
        class: "tinder-gray font-semibold text-4xl"
    }, " CONTINUAR ")]))])) : (wl(), _l("div", rE, [Pl("img", {
        src: e.$asset("/stock/tinder/logo.svg", "tinderLogo"),
        class: "mx-auto mt-32 w-5/12"
    }, null, 8, ["src"]), Pl("div", {
        onClick: t[1] || (t[1] = (...e) => n.takeSelfie && n.takeSelfie(...e)),
        class: "w-80 h-80 bg-white mx-auto mt-56 rounded-30 flex flex-center"
    }, [Pl("img", {
        class: "w-1/2",
        style: {
            filter: "grayscale(1) opacity(0.5)"
        },
        src: e.$asset("/stock/tinder/flame.png", "tinderFlame")
    }, null, 8, ["src"])]), iE]))])
}));
aE.render = PE, aE.__scopeId = "data-v-0181de71";
const LE = {
    components: {
        Header: jT
    },
    setup() {
        jl("setDark")(!1);
        let e = rt();
        return So.backend.tinder_liked().then((t => {
            e.value = t
        })), {
            likes: e
        }
    }
},
    IE = sn("data-v-b5909498");
ln("data-v-b5909498");
const OE = {
    class: "h-full bg-white flex flex-col"
},
    ME = {
        key: 0,
        class: "w-2/3 mx-auto mt-80"
    },
    VE = Pl("p", {
        class: "text-gray-500 text-xl mt-2"
    }, "Ainda ninguém te curtiu, mas eu curto você.", -1),
    DE = {
        key: 1,
        class: "overflow-y-auto hide-scroll my-3 mx-6 grid grid-cols-2 gap-6"
    },
    NE = {
        class: "absolute bottom-1 left-1 text-xl text-white"
    };
an();
const UE = IE(((e, t, l, n, a, o) => {
    let r = dl("Header");
    return wl(), _l("div", OE, [Pl(r), n.likes && !n.likes.length ? (wl(), _l("div", ME, [Pl("img", {
        src: e.$asset("/stock/tinder/dislike.svg"),
        class: "w-2/3 mx-auto"
    }, null, 8, ["src"]), VE])) : (wl(), _l("div", DE, [(wl(!0), _l(bl, null, fa(n.likes, (e => (wl(), _l("div", {
        class: "relative",
        key: e.id
    }, [Pl("img", {
        src: e.image,
        class: "rounded-lg"
    }, null, 8, ["src"]), Pl("p", NE, [Pl("b", null, g(e.name), 1), Pl("span", null, ", " + g(e.age), 1)])])))), 128))]))])
}));
LE.render = UE, LE.__scopeId = "data-v-b5909498";
const $E = {
    components: {
        Header: jT
    },
    setup() {
        jl("setDark")(!1);
        let e = rt([]),
            t = da((() => e.value.filter((e => e.last_message)).sort(((e, t) => t.last_message.created_at - e.last_message.created_at)))),
            l = da((() => e.value.filter((e => !e.last_message))));
        return So.backend.tinder_matches().then((t => {
            e.value = null != t ? t : []
        })), So.onceRoute("TINDER_MESSAGE", (l => {
            let n = e.value.find((e => e.id == l.sender));
            n && (n.last_message = l, t.effect())
        })), {
            fresh: l,
            conversations: t
        }
    }
},
    jE = {
        class: "h-full bg-white flex flex-col"
    },
    FE = {
        key: 0,
        class: "m-4"
    },
    zE = Pl("span", {
        class: "text-tinder text-2xl"
    }, "Novos Matches", -1),
    BE = {
        class: "bg-lightgray h-36 p-4 rounded-2xl flex overflow-x-auto tinder-scroll"
    },
    HE = {
        class: "overflow-hidden whitespace-nowrap text-base w-20"
    },
    qE = {
        key: 1,
        class: "text-tinder text-2xl m-4"
    },
    GE = {
        key: 2,
        class: "flex-1 overflow-y-auto hide-scroll m-4"
    },
    WE = {
        class: "ml-5 flex-1"
    },
    KE = {
        class: "text-2xl font-bold"
    },
    JE = {
        class: "flex justify-between"
    },
    XE = {
        class: "text-lg text-gray-800 w-96 overflow-x-hidden"
    },
    YE = {
        class: "text-lg text-gray-400"
    };
$E.render = function (e, t, l, n, a, o) {
    var r, s;
    let i = dl("Header");
    return wl(), _l("div", jE, [Pl(i), n.fresh.length ? (wl(), _l("div", FE, [zE, Pl("div", BE, [(wl(!0), _l(bl, null, fa(n.fresh, (t => (wl(), _l("div", {
        key: t.id,
        onClick: l => e.$router.push("/tinder/chats/" + t.id),
        class: "flex flex-col flex-shrink-0 justify-center pr-3"
    }, [Pl("img", {
        src: t.image,
        class: "w-20 h-20 rounded-full"
    }, null, 8, ["src"]), Pl("h1", HE, g(t.name), 1)], 8, ["onClick"])))), 128))])])) : Ml("", !0), (null == (r = n.conversations) ? void 0 : r.length) ? (wl(), _l("p", qE, "Mensagens")) : Ml("", !0), (null == (s = n.conversations) ? void 0 : s.length) ? (wl(), _l("div", GE, [(wl(!0), _l(bl, null, fa(n.conversations, (t => {
        var l;
        return wl(), _l("div", {
            key: t.id,
            onClick: l => e.$router.push("/tinder/chats/" + t.id),
            class: "mb-5 flex items-center"
        }, [Pl("img", {
            src: t.image,
            class: "w-24 h-24 rounded-full"
        }, null, 8, ["src"]), Pl("div", WE, [Pl("h1", KE, g(t.name), 1), Pl("div", JE, [Pl("p", XE, g(t.last_message.content.substr(0, 32)), 1), Pl("p", YE, g(e.$filters.unixToHHMM(null != (l = t.last_message.created_at) ? l : Date.now() / 1e3)), 1)])])], 8, ["onClick"])
    })), 128))])) : Ml("", !0)])
};
const ZE = {
    setup() {
        jl("setDark")(!1);
        let e = uc(),
            t = cc(),
            l = jl("confirm"),
            n = e.params.id,
            a = rt(),
            r = rt({}),
            s = rt({}),
            i = Ze([]);

        function c(e) {
            a.value || Lt((() => {
                var t;
                return null == (t = document.querySelector(".overflow-y-auto")) ? void 0 : t.scrollTo({
                    left: 0,
                    top: 9e6,
                    behavior: null != e ? e : "smooth"
                })
            }))
        }
        return So.backend.tinder_chat(n).then((e => {
            var {
                messages: t,
                avatars: l
            } = e, n = o(e, ["messages", "avatars"]);
            r.value = n, s.value = l, i.push(... function (e) {
                let t = [],
                    l = [];
                for (let n of e) l.length && l[l.length - 1].sender != n.sender ? (t.push(l), l = [n]) : l.push(n);
                return l.length && t.push(l), t
            }(t)), c("auto")
        })), So.onceRoute("TINDER_MESSAGE", (e => {
            if (e.sender != n && e.target != n) return;
            let t = i[i.length - 1];
            t && t[0].sender == e.sender ? t.push(e) : i.push([e]), c()
        })), So.onceRoute("TINDER_DISMATCH", (e => {
            e == n && t.back()
        })), So.onceRoute("TINDER_LIKE", (e => {
            for (let t of i) {
                let l = t.find((t => t.id == e));
                l && (l.liked = 1)
            }
        })), {
            id: n,
            chat: r,
            blocks: i,
            avatars: s,
            content: a,
            sendMessage: function () {
                a.value && (So.backend.tinder_sendMessage(n, a.value), a.value = null)
            },
            dismatch: async function () {
                l("Deseja dar dismatch?").then((e => e && So.backend.tinder_dismatch(n).then((() => t.back()))))
            },
            like: function (e) {
                e.liked || So.backend.tinder_likeMessage(e.id)
            }
        }
    }
},
    QE = sn("data-v-a4dd8eb2");
ln("data-v-a4dd8eb2");
const eR = {
    class: "h-full bg-white flex flex-col"
},
    tR = {
        class: "mt-16 h-24 border-b flex-shrink-0"
    },
    nR = Pl("i", {
        class: "far fa-chevron-left text-5xl text-gray-400"
    }, null, -1),
    lR = {
        class: "text-center"
    },
    aR = {
        class: "text-xl font-semibold text-gray-600"
    },
    sR = Pl("i", {
        class: "fas fa-times text-5xl text-tinder"
    }, null, -1),
    oR = {
        class: "flex-1 overflow-y-auto hide-scroll px-4"
    },
    rR = {
        class: "text-center text-xl font-semibold text-gray-600"
    },
    iR = {
        class: "break-words"
    },
    cR = {
        key: 0,
        class: "absolute text-sm w-full -bottom-4.5 left-0 text-gray-500 text-right"
    },
    uR = {
        class: "flex-shrink-0 h-40 pt-4"
    },
    dR = {
        class: "bg-gray-100 h-24 mx-4 px-4 rounded-lg flex justify-between items-center"
    };
an();
const pR = QE(((e, t, l, n, a, o) => {
    var r;
    return wl(), _l("div", eR, [Pl("div", tR, [Pl("button", {
        onClick: t[1] || (t[1] = t => e.$router.back()),
        class: "absolute top-20 px-8"
    }, [nR]), Pl("div", lR, [Pl("img", {
        src: null != (r = n.chat.image) ? r : e.$asset("/stock/user.svg"),
        class: "w-16 h-16 rounded-full mx-auto"
    }, null, 8, ["src"]), Pl("p", aR, g(n.chat.name), 1)]), Pl("button", {
        onClick: t[2] || (t[2] = e => n.dismatch()),
        class: "absolute top-20 right-8"
    }, [sR])]), Pl("div", oR, [(wl(!0), _l(bl, null, fa(n.blocks, ((t, l) => (wl(), _l("div", {
        key: l,
        class: "mb-4"
    }, [Pl("h1", rR, g(e.$filters.unixToLocale(t[0].created_at)), 1), Pl("div", {
        class: ["flex items-end", {
            "flex-row-reverse": t[0].sender != n.id
        }]
    }, [Pl("img", {
        src: n.avatars[t[0].sender],
        class: "w-16 h-16 rounded-full"
    }, null, 8, ["src"]), Pl("div", {
        class: ["mx-4 flex flex-col", {
            "items-start": t[0].sender == n.id,
            "items-end": t[0].sender != n.id
        }]
    }, [(wl(!0), _l(bl, null, fa(t, ((e, t) => (wl(), _l("div", {
        key: t,
        sender: e.sender != n.id,
        class: "relative min-8rem mb-4 last:mb-0 px-4 py-2 rounded-2xl"
    }, [Pl("p", iR, g(e.content), 1), e.sender != n.id && e.liked ? (wl(), _l("p", cR, "Curtiu sua mensagem")) : Ml("", !0), e.sender == n.id ? (wl(), _l("button", {
        key: 1,
        class: "absolute -right-12 top-2",
        onClick: t => n.like(e)
    }, [Pl("i", {
        class: ["fas fa-heart", {
            "text-gray-300": !e.liked,
            "text-tinder": e.liked
        }]
    }, null, 2)], 8, ["onClick"])) : Ml("", !0)], 8, ["sender"])))), 128))], 2)], 2)])))), 128))]), Pl("div", uR, [Pl("div", dR, [Zn(Pl("input", {
        "onUpdate:modelValue": t[3] || (t[3] = e => n.content = e),
        onKeydown: t[4] || (t[4] = us(((...e) => n.sendMessage && n.sendMessage(...e)), ["enter"])),
        maxlength: "255",
        type: "text",
        class: "p-4 bg-transparent text-xl flex-1",
        placeholder: "Digite uma mensagem"
    }, null, 544), [
        [ns, n.content]
    ]), Pl("button", {
        onClick: t[5] || (t[5] = (...e) => n.sendMessage && n.sendMessage(...e)),
        class: "ml-4 text-gray-400 text-2xl"
    }, "Enviar")])])])
}));
ZE.render = pR, ZE.__scopeId = "data-v-a4dd8eb2";
const fR = {
    components: {
        Header: jT
    },
    setup() {
        jl("setDark")(!1);
        let e = jl("alert"),
            t = rt({}),
            l = rt(So.hasNotificationFor("tinder"));
        return Tn(l, (e => So.setNotificationFor("tinder", e))), Tn((() => t.value.target), ((e, t) => t && So.backend.tinder_changeTarget(e))), So.backend.tinder().then((e => t.value = e)), {
            profile: t,
            notifications: l,
            changeAvatar: async function () {
                try {
                    let e = await So.useAnyImage("/tinder", !0);
                    await So.backend.tinder_changeAvatar(e), t.value.image = e
                } catch (e) { }
            },
            changeBio: function () {
                let l = t.value.bio;
                return l ? l.length > 1024 ? e("A bio não pode ser maior que 1024 caracteres") : void So.backend.tinder_changeBio(l) : e("A bio não pode ficar vazia")
            },
            deleteAccount: function () {
                So.backend.tinder_delete().then((() => {
                    VO.replace("/home")
                }))
            }
        }
    }
},
    mR = sn("data-v-dfd1e998");
ln("data-v-dfd1e998");
const hR = {
    class: "h-full bg-white flex flex-col"
},
    bR = {
        key: 0
    },
    gR = {
        class: "relative"
    },
    vR = {
        class: "flex justify-center"
    },
    xR = {
        class: "font-bold"
    },
    yR = {
        class: "mx-4 mt-4"
    },
    kR = Pl("span", {
        class: "text-gray-500 text-2xl"
    }, "Biografia", -1),
    wR = {
        class: "mx-4 mt-4"
    },
    CR = Pl("label", null, "O que você busca?", -1),
    _R = {
        class: "px-4 mt-4"
    },
    AR = {
        class: "flex justify-between"
    },
    SR = Pl("p", {
        class: "text-3xl"
    }, "Notificações", -1),
    TR = {
        class: "text-center mt-32"
    };
an();
const ER = mR(((e, t, l, n, a, o) => {
    let r = dl("Header"),
        s = dl("app-select"),
        i = dl("app-toggle");
    return wl(), _l("div", hR, [Pl(r), n.profile.id ? (wl(), _l("div", bR, [Pl("div", gR, [Pl("img", {
        src: n.profile.image,
        class: "relative mx-auto mt-16 w-64 h-64 rounded-full"
    }, null, 8, ["src"]), Pl("img", {
        onClick: t[1] || (t[1] = e => n.changeAvatar()),
        class: "absolute top-6 left-0 right-0 w-1/3 mx-auto opacity-0 hover:opacity-50 transition-opacity duration-300",
        style: {
            filter: "invert(1)"
        },
        src: "http://simpleicon.com/wp-content/uploads/camera.svg",
        alt: ""
    })]), Pl("div", vR, [Pl("p", xR, g(n.profile.name), 1), Pl("p", null, ", " + g(n.profile.age), 1)]), Pl("div", yR, [kR, Zn(Pl("textarea", {
        "onUpdate:modelValue": t[2] || (t[2] = e => n.profile.bio = e),
        onChange: t[3] || (t[3] = (...e) => n.changeBio && n.changeBio(...e)),
        class: "block w-full h-64 p-3 rounded-xl resize-none text-2xl",
        spellcheck: "false"
    }, null, 544), [
        [ns, n.profile.bio]
    ])]), Pl("div", wR, [CR, Pl(s, {
        modelValue: n.profile.target,
        "onUpdate:modelValue": t[4] || (t[4] = e => n.profile.target = e),
        options: {
            Male: "Homens",
            Female: "Mulheres",
            All: "Todos"
        }
    }, null, 8, ["modelValue"])]), Pl("div", _R, [Pl("div", AR, [SR, Pl(i, {
        modelValue: n.notifications,
        "onUpdate:modelValue": t[5] || (t[5] = e => n.notifications = e)
    }, null, 8, ["modelValue"])])]), Pl("div", TR, [Pl("button", {
        onClick: t[6] || (t[6] = (...e) => n.deleteAccount && n.deleteAccount(...e)),
        class: "bg-red-600 text-white rounded p-2 px-4 text-2xl"
    }, "Excluir minha conta")])])) : Ml("", !0)])
}));
fR.render = ER, fR.__scopeId = "data-v-dfd1e998";
const RR = {
    setup() {
        jl("setDark")();
        let e = uc().params.id,
            t = {
                dark: So.darkTheme.value || "",
                fontSize: document.documentElement.style.fontSize,
                android: So.settings.isAndroid
            },
            l = Object.entries(t).map((e => e.map(encodeURIComponent).join("="))).join("&");
        return {
            src: da((() => {
                var t;
                return (null == (t = So.settings.customApps) ? void 0 : t[e]) + "?" + l
            })),
            id: e
        }
    },
    render: function (e, t, l, n, a, o) {
        return wl(), _l("iframe", {
            key: n.id,
            class: "w-full h-full bg-theme",
            src: n.src,
            frameborder: "0"
        }, null, 8, ["src"])
    }
},
    PR = {
        props: ["title"],
        setup: () => ({
            isAndroid: So.settings.isAndroid
        })
    },
    LR = {
        class: "h-32 pt-16 bg-theme-accent border-b border-theme"
    },
    IR = {
        key: 0,
        class: "far fa-arrow-left"
    },
    OR = {
        key: 1,
        class: "fas fa-chevron-left text-blue-400"
    };
PR.render = function (e, t, l, n, a, o) {
    return wl(), _l("div", LR, [Pl("button", {
        onClick: t[1] || (t[1] = (...t) => e.$router.back && e.$router.back(...t)),
        class: "absolute top-16 left-0 px-4"
    }, [n.isAndroid ? (wl(), _l("i", IR)) : (wl(), _l("i", OR))]), Pl("h1", {
        class: ["font-bold", {
            "ml-16": n.isAndroid,
            "text-center": !n.isAndroid
        }]
    }, g(l.title), 3), Zt(e.$slots, "default")])
};
const MR = {
    components: {
        Header: PR
    },
    setup() {
        jl("setDark")(So.darkTheme.value);
        let e = jl("confirm"),
            t = Zs("yellowpages"),
            l = (e, t) => e.toLowerCase().includes(t.toLowerCase()),
            n = rt(""),
            a = rt([]),
            o = da((() => {
                let e = n.value;
                return e ? a.value.filter((({
                    title: t,
                    author: n
                }) => l(t, e) || l(n.name, e) || l(n.phone, e))) : a.value
            })),
            r = da((() => a.value.some((e => e.author.user_id == So.identity.user_id))));
        return So.backend.yellowpages_index().then((e => a.value = e)), {
            appName: t,
            dark: So.darkTheme,
            hasPost: r,
            query: n,
            posts: o,
            call: function (e) {
                So.pusher.emit("CALL_TO", e)
            },
            destroy: function () {
                e("Deseja excluir seu anúncio?").then((e => e && So.backend.yellowpages_destroy().then((() => {
                    a.value = a.value.filter((e => e.author.user_id != So.identity.user_id))
                }))))
            }
        }
    }
},
    VR = {
        class: "flex flex-col h-full bg-theme text-theme"
    },
    DR = Pl("i", {
        class: "far fa-times text-red-500"
    }, null, -1),
    NR = Pl("i", {
        class: "far fa-plus text-blue-500"
    }, null, -1),
    UR = {
        class: "flex-shrink p-5 relative"
    },
    $R = {
        class: "flex-1 overflow-y-auto hide-scroll px-5"
    },
    jR = {
        class: "text-center break-words pb-2"
    },
    FR = {
        class: "grid grid-cols-2 border-t border-yellow-700 pt-2 text-3xl"
    },
    zR = {
        class: "text-center border-r border-yellow-700"
    };
MR.render = function (e, t, l, n, a, o) {
    let r = dl("Header"),
        s = dl("app-input");
    return wl(), _l("div", VR, [Pl(r, {
        title: n.appName
    }, {
        default: en((() => [n.hasPost ? (wl(), _l("button", {
            key: 0,
            class: "absolute top-16 right-0 px-5",
            onClick: t[1] || (t[1] = (...e) => n.destroy && n.destroy(...e))
        }, [DR])) : (wl(), _l("button", {
            key: 1,
            class: "absolute top-16 right-0 px-5",
            onClick: t[2] || (t[2] = t => e.$router.push("/yellowpages/create"))
        }, [NR]))])),
        _: 1
    }, 8, ["title"]), Pl("div", UR, [Pl("i", {
        class: ["absolute top-9 left-10 fas fa-search text-2xl", [n.dark ? "text-gray-800" : "text-gray-400"]]
    }, null, 2), Pl(s, {
        modelValue: n.query,
        "onUpdate:modelValue": t[3] || (t[3] = e => n.query = e),
        placeholder: "Buscar",
        class: "text-2xl bg-theme border-theme pl-14"
    }, null, 8, ["modelValue"])]), Pl("ul", $R, [(wl(!0), _l(bl, null, fa(n.posts, (e => (wl(), _l("li", {
        key: e.id,
        class: "bg-yellow-400 text-yellow-700 mx-auto p-5 mb-4"
    }, [Pl("p", jR, g(e.title), 1), Pl("div", FR, [Pl("p", zR, g(e.author.name), 1), Pl("button", {
        class: "text-center",
        onClick: t => n.call(e.author.phone)
    }, g(e.author.phone), 9, ["onClick"])])])))), 128))])])
};
const BR = {
    components: {
        Header: PR
    },
    setup() {
        jl("setDark")(So.darkTheme.value);
        let e = cc(),
            t = rt("");
        return {
            dark: So.darkTheme,
            title: t,
            publish: function () {
                t.value.trim().length && So.backend.yellowpages_store(t.value).then((() => e.back()))
            }
        }
    }
},
    HR = {
        class: "h-full bg-theme text-theme"
    },
    qR = {
        class: "p-5"
    },
    GR = Pl("label", null, "Título", -1);
BR.render = function (e, t, l, n, a, o) {
    let r = dl("Header");
    return wl(), _l("div", HR, [Pl(r, {
        title: "Criar um anúncio"
    }), Pl("div", qR, [GR, Zn(Pl("textarea", {
        "onUpdate:modelValue": t[1] || (t[1] = e => n.title = e),
        maxlength: "100",
        class: "block p-4 text-3xl text-theme w-full h-64 bg-theme border border-theme resize-none rounded-xl"
    }, null, 512), [
        [ns, n.title]
    ]), Pl("button", {
        onClick: t[2] || (t[2] = (...e) => n.publish && n.publish(...e)),
        class: "block ml-auto mt-4 px-4 py-3 rounded-xl bg-yellow-400 text-yellow-700"
    }, "Publicar")])])
};
const WR = {
    inject: ["setDark"],
    data: () => ({
        result: 0,
        tmp_value: 0,
        reset: !1,
        operator: void 0,
        lastOperation: void 0
    }),
    created() {
        this.setDark(!0)
    },
    methods: {
        clear() {
            this.result = 0, this.tmp_value = 0, this.operator = void 0, this.lastOperation = void 0
        },
        invert() {
            this.result *= -1
        },
        percent() {
            this.result = this.result / 100 * this.tmp_value
        },
        addNumber(e) {
            0 != this.result && !0 !== this.reset || (this.result = "", this.reset = !1), this.result += e.toString()
        },
        addPoint() {
            this.result.includes(".") || (this.result += ".")
        },
        setOperator(e) {
            0 != this.tmp_value && this.calculate(), this.tmp_value = this.result, this.operator = e, this.reset = !0
        },
        equal() {
            if (!this.operator && this.lastOperation) {
                let [e, t] = this.lastOperation;
                this.operator = e, this.tmp_value = this.result, this.result = t
            }
            this.calculate(), this.tmp_value = 0, this.operator = void 0
        },
        calculate() {
            let e = 0,
                t = parseFloat(this.tmp_value),
                l = parseFloat(this.result);
            switch (this.operator) {
                case "+":
                    e = t + l;
                    break;
                case "-":
                    e = t - l;
                    break;
                case "*":
                    e = t * l;
                    break;
                case "/":
                    e = t / l
            }
            this.lastOperation = [this.operator, l], this.result = e.toString()
        }
    }
},
    KR = {
        class: "flex flex-col h-full bg-black"
    },
    JR = {
        class: "h-full p-5 pt-80 mt-32"
    },
    XR = {
        class: "flex justify-around"
    },
    YR = Pl("i", {
        class: "fas fa-divide"
    }, null, -1),
    ZR = {
        class: "flex justify-around mt-4"
    },
    QR = Pl("i", {
        class: "fas fa-times"
    }, null, -1),
    eP = {
        class: "flex justify-around mt-4"
    },
    tP = Pl("i", {
        class: "fas fa-minus"
    }, null, -1),
    nP = {
        class: "flex justify-around mt-4"
    },
    lP = Pl("i", {
        class: "fas fa-plus"
    }, null, -1),
    aP = {
        class: "flex justify-around mt-4"
    },
    sP = Pl("i", {
        class: "fas fa-equals"
    }, null, -1);
WR.render = function (e, t, l, n, a, o) {
    return wl(), _l("div", KR, [Pl("div", JR, [Zn(Pl("input", {
        class: "block bg-transparent text-white w-full text-right p-4 h-52",
        style: {
            fontSize: Math.min(8, 20 / String(a.result).length * 2.75) + "rem"
        },
        type: "text",
        "onUpdate:modelValue": t[1] || (t[1] = e => a.result = e),
        disabled: ""
    }, null, 4), [
        [ns, a.result]
    ]), Pl("div", XR, [Pl("div", {
        class: "bg-gray-500 w-28 py-8 text-center rounded-full",
        onClick: t[2] || (t[2] = (...e) => o.clear && o.clear(...e))
    }, "AC"), Pl("div", {
        class: "bg-gray-500 w-28 py-8 text-center rounded-full",
        onClick: t[3] || (t[3] = (...e) => o.invert && o.invert(...e))
    }, "+/-"), Pl("div", {
        class: "bg-gray-500 w-28 py-8 text-center rounded-full",
        onClick: t[4] || (t[4] = (...e) => o.percent && o.percent(...e))
    }, "%"), Pl("div", {
        class: "bg-orange-400 text-white w-28 py-8 text-center rounded-full",
        onClick: t[5] || (t[5] = e => o.setOperator("/"))
    }, [YR])]), Pl("div", ZR, [(wl(), _l(bl, null, fa([7, 8, 9], (e => Pl("div", {
        key: e,
        onClick: t => o.addNumber(e),
        class: "bg-gray-800 text-white w-28 py-8 text-center rounded-full"
    }, g(e), 9, ["onClick"]))), 64)), Pl("div", {
        class: "bg-orange-400 text-white w-28 text-center py-8 rounded-full",
        onClick: t[6] || (t[6] = e => o.setOperator("*"))
    }, [QR])]), Pl("div", eP, [(wl(), _l(bl, null, fa([4, 5, 6], (e => Pl("div", {
        key: e,
        onClick: t => o.addNumber(e),
        class: "bg-gray-800 text-white w-28 py-8 text-center rounded-full"
    }, g(e), 9, ["onClick"]))), 64)), Pl("div", {
        class: "bg-orange-400 text-white w-28 text-center py-8 rounded-full",
        onClick: t[7] || (t[7] = e => o.setOperator("-"))
    }, [tP])]), Pl("div", nP, [(wl(), _l(bl, null, fa([1, 2, 3], (e => Pl("div", {
        key: e,
        onClick: t => o.addNumber(e),
        class: "bg-gray-800 text-white w-28 py-8 text-center rounded-full"
    }, g(e), 9, ["onClick"]))), 64)), Pl("div", {
        class: "bg-orange-400 text-white w-28 text-center py-8 rounded-full",
        onClick: t[8] || (t[8] = e => o.setOperator("+"))
    }, [lP])]), Pl("div", aP, [Pl("div", {
        onClick: t[9] || (t[9] = e => o.addNumber(0)),
        class: "bg-gray-800 text-white w-60 py-8 pl-12 rounded-full"
    }, "0"), Pl("div", {
        onClick: t[10] || (t[10] = (...e) => o.addPoint && o.addPoint(...e)),
        class: "bg-gray-800 text-white w-28 py-8 text-center rounded-full"
    }, "."), Pl("div", {
        class: "bg-orange-400 text-white w-28 text-center py-8 rounded-full",
        onClick: t[11] || (t[11] = (...e) => o.equal && o.equal(...e))
    }, [sP])])])])
};
const oP = {
    props: ["title"],
    setup: () => ({
        isAndroid: So.settings.isAndroid
    })
},
    rP = {
        class: "flex flex-shrink-0 h-32 pt-16 bg-theme-accent border-b border-theme"
    },
    iP = {
        key: 0,
        class: "far fa-arrow-left"
    },
    cP = {
        key: 1,
        class: "fas fa-chevron-left text-note"
    };
oP.render = function (e, t, l, n, a, o) {
    return wl(), _l("div", rP, [Pl("button", {
        class: "absolute left-0 top-16 px-5",
        onClick: t[1] || (t[1] = (...t) => e.$router.back && e.$router.back(...t))
    }, [n.isAndroid ? (wl(), _l("i", iP)) : (wl(), _l("i", cP))]), Pl("h1", {
        class: [{
            "ml-16": n.isAndroid,
            "mx-auto": !n.isAndroid
        }, "font-bold"]
    }, g(l.title), 3), Zt(e.$slots, "default")])
};
const uP = {
    components: {
        Header: oP
    },
    setup() {
        jl("setDark")(So.darkTheme.value);
        let e = jl("confirm"),
            t = localStorage.getItem("smartphone@notes"),
            l = rt(t ? JSON.parse(t) : []);
        return {
            notes: l,
            change: function (e, t) {
                let n = l.value,
                    a = n[t];
                n[t] = n[e], n[e] = a, localStorage.setItem("smartphone@notes", JSON.stringify(n))
            },
            destroy: function (t) {
                e("Deseja apagar essa anotação?").then((e => {
                    if (e) {
                        let e = l.value;
                        e.splice(t, 1), localStorage.setItem("smartphone@notes", JSON.stringify(e))
                    }
                }))
            }
        }
    }
},
    dP = {
        class: "flex flex-col h-full bg-theme text-theme"
    },
    pP = Pl("i", {
        class: "far fa-plus text-note"
    }, null, -1),
    fP = {
        class: "flex-grow overflow-y-auto hide-scroll"
    },
    mP = Pl("i", {
        class: "fas fa-chevron-up text-lg text-note"
    }, null, -1),
    hP = Pl("i", {
        class: "fas fa-chevron-down text-lg text-note"
    }, null, -1),
    bP = {
        class: "ml-4 flex flex-col"
    },
    gP = {
        key: 0,
        class: "text-2xl overflow-x-hidden"
    },
    vP = {
        key: 1,
        class: "text-2xl italic"
    },
    xP = {
        class: "text-gray-500 text-xl"
    },
    yP = Pl("i", {
        class: "far fa-trash-alt text-note text-xl"
    }, null, -1);
uP.render = function (e, t, l, n, a, o) {
    let r = dl("Header");
    return wl(), _l("div", dP, [Pl(r, {
        title: "Notas"
    }, {
        default: en((() => [Pl("button", {
            class: "absolute right-0 top-16 px-5",
            onClick: t[1] || (t[1] = t => e.$router.push("/notes/create"))
        }, [pP])])),
        _: 1
    }), Pl("ul", fP, [(wl(!0), _l(bl, null, fa(n.notes, ((l, a) => (wl(), _l("li", {
        key: a,
        class: "flex items-center border-b border-theme p-2",
        onClick: t => e.$router.push("/notes/" + a)
    }, [Pl("div", {
        class: "flex flex-col",
        onClick: t[2] || (t[2] = is((() => { }), ["stop"]))
    }, [a > 0 ? (wl(), _l("button", {
        key: 0,
        onClick: is((e => n.change(a, a - 1)), ["stop"])
    }, [mP], 8, ["onClick"])) : Ml("", !0), a < n.notes.length - 1 ? (wl(), _l("button", {
        key: 1,
        onClick: is((e => n.change(a, a + 1)), ["stop"])
    }, [hP], 8, ["onClick"])) : Ml("", !0)]), Pl("div", bP, [l.text.trim() ? (wl(), _l("p", gP, g(l.text.substr(0, 32)), 1)) : (wl(), _l("p", vP, "(Sem conteúdo)")), Pl("p", xP, g(new Date(l.updated_at).toLocaleString("pt-BR")), 1)]), Pl("button", {
        class: "ml-auto px-5",
        onClick: is((e => n.destroy(a)), ["stop"])
    }, [yP], 8, ["onClick"])], 8, ["onClick"])))), 128))])])
};
const kP = {
    components: {
        Header: oP
    },
    setup() {
        jl("setDark")(So.darkTheme.value);
        let e = cc(),
            t = rt("");
        return Lt((() => document.querySelector("textarea").focus())), {
            text: t,
            save: function () {
                var l;
                let n = JSON.parse(null != (l = localStorage.getItem("smartphone@notes")) ? l : "[]"),
                    a = Date.now();
                n.push({
                    text: t.value,
                    created_at: a,
                    updated_at: a
                }), localStorage.setItem("smartphone@notes", JSON.stringify(n)), e.back()
            }
        }
    }
},
    wP = {
        class: "flex flex-col h-full bg-theme text-theme"
    },
    CP = Pl("i", {
        class: "far fa-file text-note"
    }, null, -1);
kP.render = function (e, t, l, n, a, o) {
    let r = dl("Header");
    return wl(), _l("div", wP, [Pl(r, {
        title: "Nova anotação"
    }, {
        default: en((() => [Pl("button", {
            class: "absolute right-0 top-16 px-5",
            onClick: t[1] || (t[1] = (...e) => n.save && n.save(...e))
        }, [CP])])),
        _: 1
    }), Zn(Pl("textarea", {
        onKeydown: t[2] || (t[2] = us(is((() => { }), ["prevent"]), ["enter"])),
        maxlength: "10000",
        class: "flex-1 w-full p-2 fancy-scroll resize-none bg-theme",
        "onUpdate:modelValue": t[3] || (t[3] = e => n.text = e)
    }, null, 544), [
        [ns, n.text]
    ])])
};
const _P = {
    components: {
        Header: oP
    },
    setup() {
        jl("setDark")(So.darkTheme.value);
        let e = cc(),
            t = e.currentRoute.value.params.id,
            l = rt(JSON.parse(localStorage.getItem("smartphone@notes"))[t].text);
        return {
            text: l,
            save: function () {
                let n = JSON.parse(localStorage.getItem("smartphone@notes"));
                n[t].text = l.value, n[t].updated_at = Date.now(), localStorage.setItem("smartphone@notes", JSON.stringify(n)), e.back()
            }
        }
    }
},
    AP = {
        class: "flex flex-col h-full bg-theme text-theme"
    },
    SP = Pl("i", {
        class: "far fa-pencil text-note"
    }, null, -1);
_P.render = function (e, t, l, n, a, o) {
    let r = dl("Header");
    return wl(), _l("div", AP, [Pl(r, {
        title: "Editar anotação"
    }, {
        default: en((() => [Pl("button", {
            class: "absolute right-0 top-16 px-5",
            onClick: t[1] || (t[1] = (...e) => n.save && n.save(...e))
        }, [SP])])),
        _: 1
    }), Zn(Pl("textarea", {
        onKeydown: t[2] || (t[2] = us(is((() => { }), ["prevent"]), ["enter"])),
        maxlength: "10000",
        class: "flex-1 w-full p-2 fancy-scroll resize-none bg-theme",
        "onUpdate:modelValue": t[3] || (t[3] = e => n.text = e)
    }, null, 544), [
        [ns, n.text]
    ])])
};
const TP = Ze([]),
    EP = {
        inject: ["setDark"],
        setup() {
            let e = So.settings.isAndroid,
                t = Zs("weazel"),
                l = Ze(So.localhost ? [{
                    id: 1,
                    title: "Jacinto pinto morre engasgado",
                    description: "Não foi encontrado nenhum pinto no local, a policia informou que está atrás de quem possa ter causado este incidente...",
                    imageURL: "https://picsum.photos/200",
                    views: 0,
                    created_at: Date.now() / 1e3 - 300
                }] : []),
                n = rt(),
                a = rt(So.localhost),
                o = rt(So.hasNotificationFor("weazel"));
            return Tn(o, (e => So.setNotificationFor("weazel", e))), TP.length || So.backend.weazel_tags().then((e => TP.push(...e))), So.backend.weazel_index().then((e => {
                l.push(...e)
            })), So.backend.weazel_check().then((e => a.value = e)), So.pusher.on("WEAZEL_DESTROY", (e => {
                let t = l.findIndex((t => t.id == e));
                t >= 0 && l.splice(t, 1)
            })), {
                isAndroid: e,
                isJournalist: a,
                notifications: o,
                destroy: async function (e) {
                    await So.confirm("Tem certeza que deseja excluir esta notícia?") && So.backend.weazel_destroy(e)
                },
                title: t,
                news: l,
                tags: TP,
                setTag: function (e) {
                    n.value != e && (n.value = e, So.backend.weazel_tag(e).then((e => {
                        l.length = 0, l.push(...e)
                    })))
                }
            }
        },
        created() {
            this.setDark(!0)
        }
    },
    RP = {
        class: "h-full flex flex-col bg-theme text-theme"
    },
    PP = {
        class: "h-32 pt-12 bg-weazel flex items-center"
    },
    LP = {
        key: 0,
        class: "far fa-arrow-left mr-4"
    },
    IP = {
        key: 1,
        class: "fas fa-chevron-left"
    },
    OP = {
        key: 0,
        class: "far fa-bell"
    },
    MP = {
        key: 1,
        class: "far fa-bell-slash"
    },
    VP = Pl("i", {
        class: "fas fa-pen-alt"
    }, null, -1),
    DP = {
        class: "flex-1 overflow-y-auto hide-scroll"
    },
    NP = {
        class: "flex flex-wrap p-5 text-xl"
    },
    UP = {
        class: "p-5 rounded-xl"
    },
    $P = {
        class: "flex items-start"
    },
    jP = {
        class: "flex-1"
    },
    FP = {
        class: "text-3xl mb-2 font-bold"
    },
    zP = {
        class: "text-lg opacity-75 overflow-ellipsis"
    },
    BP = {
        class: "flex items-center text-xl"
    },
    HP = {
        class: "opacity-50"
    },
    qP = Pl("i", {
        class: "far fa-eye ml-2 mr-1"
    }, null, -1),
    GP = {
        key: 0,
        class: "ml-auto space-x-4"
    },
    WP = Pl("i", {
        class: "fas fa-pen-alt"
    }, null, -1),
    KP = Pl("i", {
        class: "far fa-trash-alt"
    }, null, -1);
EP.render = function (e, t, l, n, a, o) {
    return wl(), _l("div", RP, [Pl("div", PP, [Pl("button", {
        onClick: t[1] || (t[1] = t => e.$router.back()),
        class: "absolute top-16 px-5"
    }, [n.isAndroid ? (wl(), _l("i", LP)) : (wl(), _l("i", IP))]), Pl("h1", {
        class: [{
            "ml-16": n.isAndroid,
            "mx-auto": !n.isAndroid
        }, "font-bold"]
    }, g(n.title), 3), Pl("button", {
        onClick: t[2] || (t[2] = e => n.notifications = !n.notifications),
        class: "absolute top-20 right-8 w-6 h-4 flex flex-center"
    }, [n.notifications ? (wl(), _l("i", OP)) : (wl(), _l("i", MP))])]), n.isJournalist ? (wl(), _l("button", {
        key: 0,
        onClick: t[3] || (t[3] = t => e.$router.push("/weazel/create")),
        class: "bg-weazel w-24 h-24 absolute bottom-8 right-8 rounded-full"
    }, [VP])) : Ml("", !0), Pl("div", DP, [Pl("div", NP, [(wl(!0), _l(bl, null, fa(n.tags, (e => (wl(), _l("button", {
        key: e,
        onClick: t => n.setTag(e),
        class: "bg-theme-accent p-2 mt-2 rounded-xl mr-5"
    }, g(e), 9, ["onClick"])))), 128))]), Pl("ul", UP, [(wl(!0), _l(bl, null, fa(n.news, (t => (wl(), _l("li", {
        key: t.id,
        onClick: l => e.$router.push("/weazel/" + t.id),
        class: "border-b border-theme py-5"
    }, [Pl("div", $P, [Pl("div", jP, [Pl("h1", FP, g(t.title), 1), Pl("p", zP, g(e.$filters.ellipsis(t.description.split("\n")[0], 120)), 1)]), t.imageURL ? (wl(), _l("img", {
        key: 0,
        class: "h-32 ml-4 rounded-xl",
        src: t.imageURL
    }, null, 8, ["src"])) : Ml("", !0)]), Pl("div", BP, [Pl("span", HP, [Il(g(e.$filters.unixToRelative(t.created_at)) + " ", 1), qP, Il(" " + g(t.views.toLocaleString()), 1)]), n.isJournalist ? (wl(), _l("div", GP, [Pl("button", {
        onClick: is((l => e.$router.push("/weazel/" + t.id + "/edit")), ["stop"]),
        class: "ml-auto text-blue-600"
    }, [WP], 8, ["onClick"]), Pl("button", {
        onClick: is((e => n.destroy(t.id)), ["stop"]),
        class: "ml-auto text-red-600"
    }, [KP], 8, ["onClick"])])) : Ml("", !0)])], 8, ["onClick"])))), 128))])])])
};
const JP = {
    props: {
        modelValue: {
            required: !0
        },
        type: {
            default: "text"
        },
        noborder: {
            required: !1,
            default: !1
        },
        format: {
            required: !1
        },
        darkable: {
            required: !1
        }
    },
    methods: {
        changeValue({
            target: e
        }) {
            "money" === this.format ? e.value = this.$filters.moneyStringToInt(e.value) : "int" === this.format && (e.value = Math.floor(e.value.replace(/\D/g, ""))), this.$emit("update:modelValue", e.value)
        }
    },
    render: function (e, t, l, n, a, o) {
        return wl(), _l("input", {
            type: l.type,
            value: l.modelValue,
            onInput: t[1] || (t[1] = (...e) => o.changeValue && o.changeValue(...e)),
            class: ["w-full p-3 py-4", {
                "rounded-lg border focus:border-blue-400": !l.noborder,
                "bg-theme border-theme": l.darkable
            }]
        }, null, 42, ["type", "value"])
    }
},
    XP = {
        props: {
            modelValue: {
                required: !0
            },
            options: {
                default: {}
            },
            darkable: {
                required: !1
            }
        },
        render: function (e, t, l, n, a, o) {
            return wl(), _l("select", {
                value: l.modelValue,
                onChange: t[1] || (t[1] = t => e.$emit("update:modelValue", t.target.value)),
                class: ["w-full p-3 rounded-lg border focus:border-blue-400", {
                    "bg-theme border-theme": l.darkable
                }]
            }, [Pl("option", {
                disabled: "",
                selected: null == l.modelValue,
                value: null
            }, "Escolha uma opção", 8, ["selected"]), (wl(!0), _l(bl, null, fa(l.options, ((e, t) => (wl(), _l("option", {
                key: t,
                value: t,
                selected: l.modelValue == t
            }, g(e), 9, ["value", "selected"])))), 128))], 42, ["value"])
        }
    },
    YP = Ze({
        title: "",
        description: "",
        author: So.identity.name
    }),
    ZP = {
        components: {
            Input: JP,
            Select: XP
        },
        setup() {
            let e = So.settings.isAndroid,
                {
                    id: t
                } = uc().params,
                l = Ze({});

            function n(e) {
                if (null == e ? void 0 : e.error) So.alert(e.error);
                else {
                    for (let e in VO.back(), YP) "title" == e || "description" == e ? YP[e] = "" : delete YP[e];
                    YP.author = So.identity.name
                }
            }
            return So.backend.weazel_tags().then((e => {
                for (let t of e) l[t] = t
            })), t && So.backend.weazel_view(t).then((e => Object.assign(YP, e))), {
                isAndroid: e,
                onImageClick: function () {
                    So.useAnyImage("/").then((e => {
                        YP.imageURL = e
                    }), (() => { }))
                },
                onPublishClick: function () {
                    t ? So.backend.weazel_update(t, YP).then(n) : So.backend.weazel_publish(YP).then(n)
                },
                onPreviewClick: function () {
                    So.addNotification("weazel", YP.title, Ns(YP.description, 120))
                },
                form: YP,
                tags: l
            }
        }
    },
    QP = {
        class: "h-full flex flex-col bg-theme text-theme"
    },
    eL = {
        class: "h-32 pt-12 bg-weazel flex items-center"
    },
    tL = {
        key: 0,
        class: "far fa-arrow-left mr-4"
    },
    nL = {
        key: 1,
        class: "fas fa-chevron-left"
    },
    lL = {
        class: "p-5 text-2xl space-y-4 overflow-y-auto hide-scroll"
    },
    aL = Pl("label", null, "Título", -1),
    sL = Pl("label", null, "Autor", -1),
    oL = Pl("label", null, "Categoria", -1),
    rL = Pl("label", null, "Descrição", -1),
    iL = Pl("label", null, "Vídeo", -1),
    cL = Pl("label", null, "Imagem", -1),
    uL = {
        class: "text-right"
    };
ZP.render = function (e, t, l, n, a, o) {
    let r = dl("Input"),
        s = dl("Select");
    return wl(), _l("div", QP, [Pl("div", eL, [Pl("button", {
        onClick: t[1] || (t[1] = t => e.$router.back()),
        class: "absolute top-16 px-5"
    }, [n.isAndroid ? (wl(), _l("i", tL)) : (wl(), _l("i", nL))]), Pl("h1", {
        class: [{
            "ml-16": n.isAndroid,
            "mx-auto": !n.isAndroid
        }, "font-bold"]
    }, g(n.form.id ? "Editar notícia" : "Criar notícia"), 3)]), Pl("div", lL, [Pl("div", null, [aL, Pl(r, {
        class: "text-xl bg-theme border-theme",
        modelValue: n.form.title,
        "onUpdate:modelValue": t[2] || (t[2] = e => n.form.title = e)
    }, null, 8, ["modelValue"])]), Pl("div", null, [sL, Pl(r, {
        class: "text-xl bg-theme border-theme",
        modelValue: n.form.author,
        "onUpdate:modelValue": t[3] || (t[3] = e => n.form.author = e)
    }, null, 8, ["modelValue"])]), Pl("div", null, [oL, Pl(s, {
        class: "text-xl py-4 bg-theme border-theme",
        modelValue: n.form.tag,
        "onUpdate:modelValue": t[4] || (t[4] = e => n.form.tag = e),
        options: n.tags
    }, null, 8, ["modelValue", "options"])]), Pl("div", null, [rL, Zn(Pl("textarea", {
        class: "block resize-none mt-1 w-full bg-theme rounded-xl border border-theme p-2",
        "onUpdate:modelValue": t[5] || (t[5] = e => n.form.description = e),
        rows: "8"
    }, null, 512), [
        [ns, n.form.description]
    ])]), Pl("div", null, [iL, Pl(r, {
        class: "text-xl bg-theme border-theme",
        modelValue: n.form.videoURL,
        "onUpdate:modelValue": t[6] || (t[6] = e => n.form.videoURL = e),
        placeholder: "Exemplo: https://www.youtube.com/watch?v=cDg7eF99nR"
    }, null, 8, ["modelValue"])]), Pl("div", null, [cL, n.form.imageURL ? (wl(), _l("img", {
        key: 0,
        onClick: t[7] || (t[7] = (...e) => n.onImageClick && n.onImageClick(...e)),
        src: n.form.imageURL,
        class: "rounded-xl w-1/2",
        alt: ""
    }, null, 8, ["src"])) : (wl(), _l("button", {
        key: 1,
        onClick: t[8] || (t[8] = (...e) => n.onImageClick && n.onImageClick(...e)),
        class: "bg-weazel block p-2 rounded mt-1"
    }, "Adicionar"))]), Pl("div", uL, [n.form.id ? Ml("", !0) : (wl(), _l("button", {
        key: 0,
        onClick: t[9] || (t[9] = (...e) => n.onPreviewClick && n.onPreviewClick(...e)),
        class: "bg-weazel p-2 px-4 mr-4 rounded mt-1"
    }, "Prever notificação")), Pl("button", {
        onClick: t[10] || (t[10] = (...e) => n.onPublishClick && n.onPublishClick(...e)),
        class: "bg-weazel p-2 px-4 rounded mt-1"
    }, "Publicar")])])])
};
const dL = {
    setup() {
        let e = So.settings.isAndroid,
            t = uc().params,
            l = Ze(So.localhost ? {
                title: "Título da notícia",
                description: "Descrição da notícia",
                tag: "Fofocas",
                author: "Samba Roleplay",
                imageURL: "https://picsum.photos/1920/1080",
                views: 0,
                videoURL: "",
                created_at: Date.now() / 1e3
            } : {}),
            n = da((() => {
                if ("string" != typeof l.videoURL) return null;
                for (let e of [/watch\?v=(\w+)/, /youtu\.be\/(\w+)/]) {
                    let t = l.videoURL.match(e);
                    if (t) return "https://www.youtube.com/embed/" + t[1]
                }
            }));
        return So.backend.weazel_view(t.id).then((e => {
            e ? Object.assign(l, e) : VO.back()
        })), {
            isAndroid: e,
            post: l,
            videoURL: n
        }
    }
},
    pL = {
        class: "h-full flex flex-col bg-theme text-theme"
    },
    fL = {
        class: "h-32 pt-12 bg-weazel flex items-center"
    },
    mL = {
        key: 0,
        class: "far fa-arrow-left mr-4"
    },
    hL = {
        key: 1,
        class: "fas fa-chevron-left"
    },
    bL = {
        key: 0,
        class: "flex-1 overflow-y-auto hide-scroll p-5 rounded-xl"
    },
    gL = {
        class: "space-y-4"
    },
    vL = {
        class: "text-3xl whitespace-pre-wrap opacity-75"
    },
    xL = {
        class: "flex justify-between text-xl opacity-50"
    },
    yL = {
        class: "text-xl opacity-50"
    };
let kL;
dL.render = function (e, t, l, n, a, o) {
    var r;
    return wl(), _l("div", pL, [Pl("div", fL, [Pl("button", {
        onClick: t[1] || (t[1] = t => e.$router.back()),
        class: "absolute top-16 px-5"
    }, [n.isAndroid ? (wl(), _l("i", mL)) : (wl(), _l("i", hL))]), Pl("h1", {
        class: [{
            "ml-16": n.isAndroid,
            "mx-auto": !n.isAndroid
        }, "font-bold overflow-ellipsis w-96 overflow-hidden whitespace-nowrap"]
    }, g(null != (r = n.post.title) ? r : "Carregando..."), 3)]), n.post.description ? (wl(), _l("div", bL, [Pl("div", gL, [Pl("p", vL, g(n.post.description), 1), n.post.imageURL ? (wl(), _l("img", {
        key: 0,
        class: "w-full rounded-xl",
        src: n.post.imageURL
    }, null, 8, ["src"])) : Ml("", !0), n.videoURL ? (wl(), _l("iframe", {
        key: 1,
        class: "w-full aspect-16/9 rounded-xl",
        src: n.videoURL,
        title: "YouTube video player",
        frameborder: "0",
        allow: "accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture",
        allowfullscreen: ""
    }, null, 8, ["src"])) : Ml("", !0), Pl("div", xL, [Pl("h1", null, g(e.$filters.unixToRelative(n.post.created_at)) + " - Em " + g(n.post.tag), 1), Pl("h1", null, g(n.post.author), 1)])]), Pl("h1", yL, g(n.post.views) + " visualizações", 1)])) : Ml("", !0)])
};
const wL = {},
    CL = [0, 1, 8, 2, 9, 3, 10, 4, 11, 5, 12, 6, 13, 7, 14],
    _L = Array(10).fill(CL).flat(),
    AL = {
        setup() {
            let e = rt(),
                t = rt(),
                l = rt(),
                n = rt(0),
                a = rt(""),
                o = rt(!1),
                r = Ze({
                    black: {
                        size: 0,
                        amount: 0,
                        mine: 0
                    },
                    red: {
                        size: 0,
                        amount: 0,
                        mine: 0
                    },
                    white: {
                        size: 0,
                        amount: 0,
                        mine: 0
                    }
                }),
                s = Ze([]),
                i = jl("addBalance"),
                c = jl("onceTab"),
                u = So.settings.currency,
                d = !1;
            async function p(e) {
                if (!d) {
                    for (d = !0; e > 0;) {
                        if (!l.value || !t.value) return;
                        l.value.innerHTML = (e / 1e3).toFixed(2) + "s", t.value.style.width = e / 15e3 * 100 + "%", e -= 40, await eo(40)
                    }
                    d = !1, l.value.innerHTML = "", t.value.style.width = "0%"
                }
            }

            function f(e, t, l) {
                return new Promise((n => {
                    e.animate([t], l).onfinish = () => {
                        Object.assign(e.style, t), n()
                    }
                }))
            }
            return c("CASINO_DOUBLE", (t => {
                (async function (t) {
                    let l = 826.75 + 7 * CL.indexOf(t),
                        n = e.value;
                    if (n instanceof HTMLElement) {
                        var a;
                        n.style.opacity = 1;
                        let e = `translateX(-${l + 3 * Math.random() * (Math.random() > .5 ? 1 : -1)}rem)`;
                        await f(n, {
                            transform: e
                        }, {
                            duration: 8e3,
                            easing: "ease-in-out"
                        }), await f(n, {
                            transform: `translateX(-${l}rem)`
                        }, {
                            duration: 500,
                            delay: 1e3,
                            easing: "ease-out"
                        }), await eo(2e3), await f(n, {
                            transform: "translate(-91.75rem)"
                        }, {
                            duration: 500,
                            delay: 2e3
                        }), n.style.opacity = .5;
                        let o = 0 == (a = t) ? "white" : a < 8 ? "red" : "black",
                            c = r[o].mine * ("white" == o ? 14 : 2);
                        s.push(o) > 10 && s.shift(), i(c)
                    }
                })(t), o.value = !0
            })), c("CASINO_DOUBLE_RESET", (() => {
                for (let e in r) r[e].size = 0, r[e].amount = 0, r[e].mine = 0;
                o.value = !1
            })), c("CASINO_DOUBLE_BET", (({
                color: e,
                amount: t
            }) => {
                r[e].size += 1, r[e].amount += t
            })), So.backend.casino_double().then((async e => {
                if (s.push(...e.last), "rolling" === e.status) o.value = !0, await p(e.delay);
                else if ("bet" === e.status) {
                    for (let [t, [l, n]] of Object.entries(e.aggregate)) Object.assign(r[t], {
                        size: l,
                        amount: n
                    });
                    await p(e.delay)
                }
            })), {
                currency: u,
                lastColors: s,
                roulette: e,
                progress: t,
                timer: l,
                pretty: function (e) {
                    return (null != e ? e : 0).toLocaleString()
                },
                bet: function () {
                    let e = a.value,
                        t = parseInt(n.value);
                    t && t > 0 && a.value && So.backend.casino_double_bet(e, t).then((l => {
                        l.error ? So.alert(l.error) : (r[e].mine += t, i(-t), p(l))
                    }))
                },
                bets: r,
                amount: n,
                multiply: function (e) {
                    let t = parseInt(n.value);
                    t && t > 0 && (n.value = Math.ceil(t * e))
                },
                color: a,
                waiting: o,
                repeated: _L
            }
        }
    },
    SL = {
        class: "p-5 bg-blaze space-y-5 mb-4"
    },
    TL = {
        class: "container relative py-36 pb-6 bg-blaze-dark rounded-xl"
    },
    EL = {
        class: "absolute top-0 p-5 pt-1 h-20 inset-x-0 border-b border-coolGray-800"
    },
    RL = Pl("h1", {
        class: "text-lg text-white mb-1"
    }, "Últimas rodadas", -1),
    PL = {
        class: "flex space-x-6"
    },
    LL = {
        key: 1,
        class: "far fa-circle text-xl text-white"
    },
    IL = {
        class: "absolute inset-x-5 rounded overflow-hidden top-24 z-1"
    },
    OL = {
        ref: "progress",
        style: {
            width: "0"
        },
        class: "bg-blaze-red h-6"
    },
    ML = {
        ref: "timer",
        class: "absolute text-white inset-x-0 text-center text-base top-0"
    },
    VL = Pl("div", {
        class: "absolute inset-x-0 bottom-2 top-32 z-1"
    }, [Pl("div", {
        class: "h-full rounded-full w-1.5 bg-white mx-auto"
    })], -1),
    DL = {
        class: "mx-5 rounded-xl overflow-hidden"
    },
    NL = {
        class: "wrapper"
    },
    UL = {
        ref: "roulette",
        style: {
            transform: "translateX(-91.75rem)",
            opacity: "0.5"
        },
        class: "flex space-x-4 transition-opacity duration-500"
    },
    $L = {
        key: 1
    },
    jL = {
        class: "flex justify-between"
    },
    FL = {
        class: "relative w-64 text-xl"
    },
    zL = {
        class: "absolute right-4 top-6 font-bold text-gray-300"
    },
    BL = Pl("h1", {
        class: "text-gray-300 text-xl"
    }, "Selecionar cor", -1),
    HL = {
        class: "grid grid-cols-3 gap-5"
    },
    qL = {
        class: "flex justify-between items-center p-5 pr-10 bg-blaze mb-4"
    },
    GL = Pl("div", {
        class: "w-16 h-16 rounded-xl bg-blaze-red flex flex-center text-white"
    }, [Pl("i", {
        class: "far fa-circle text-4xl"
    })], -1),
    WL = Pl("h1", {
        class: "mr-auto text-white text-2xl ml-4"
    }, "Vitória 2x", -1),
    KL = {
        class: "text-xl text-right"
    },
    JL = {
        class: "text-gray-300"
    },
    XL = {
        class: "text-white font-bold"
    },
    YL = {
        class: "flex justify-between items-center p-5 pr-10 bg-blaze mb-4"
    },
    ZL = {
        class: "w-16 h-16 rounded-xl bg-white flex flex-center text-white"
    },
    QL = Pl("h1", {
        class: "mr-auto text-white text-2xl ml-4"
    }, "Vitória 14x", -1),
    eI = {
        class: "text-xl text-right"
    },
    tI = {
        class: "text-gray-300"
    },
    nI = {
        class: "text-white font-bold"
    },
    lI = {
        class: "flex justify-between items-center p-5 pr-10 bg-blaze"
    },
    aI = Pl("div", {
        class: "w-16 h-16 rounded-xl bg-blaze-black flex flex-center text-white"
    }, [Pl("i", {
        class: "far fa-circle text-4xl"
    })], -1),
    sI = Pl("h1", {
        class: "mr-auto text-white text-2xl ml-4"
    }, "Vitória 2x", -1),
    oI = {
        class: "text-xl text-right"
    },
    rI = {
        class: "text-gray-300"
    },
    iI = {
        class: "text-white font-bold"
    };
AL.render = function (e, t, l, n, a, o) {
    return wl(), _l(bl, null, [Pl("div", SL, [Pl("div", TL, [Pl("div", EL, [RL, Pl("div", PL, [(wl(!0), _l(bl, null, fa(n.lastColors, ((t, l) => (wl(), _l("div", {
        key: l,
        class: ["w-8 h-8 rounded flex flex-center", ["bg-blaze-" + t]]
    }, ["white" == t ? (wl(), _l("img", {
        key: 0,
        class: "w-4",
        src: e.$asset("/apps/blaze.svg", "casinoLogo"),
        alt: ""
    }, null, 8, ["src"])) : (wl(), _l("i", LL))], 2)))), 128))])]), Pl("div", IL, [Pl("div", OL, null, 512), Pl("h1", ML, null, 512)]), VL, Pl("div", DL, [Pl("div", NL, [Pl("div", UL, [(wl(!0), _l(bl, null, fa(n.repeated, ((t, l) => (wl(), _l("div", {
        key: l,
        class: ["blaze-tile", 0 == t ? "bg-white" : t > 7 ? "bg-blaze-black text-white" : "bg-blaze-red text-white"]
    }, [0 == t ? (wl(), _l("img", {
        key: 0,
        class: "w-12",
        src: e.$asset("/apps/blaze.svg", "casinoLogo"),
        alt: ""
    }, null, 8, ["src"])) : (wl(), _l("span", $L, g(t), 1))], 2)))), 128))], 512)])])]), Pl("div", jL, [Pl("div", FL, [Zn(Pl("input", {
        "onUpdate:modelValue": t[1] || (t[1] = e => n.amount = e),
        class: "w-full bg-blaze-dark p-6 font-bold rounded-xl text-gray-300 placeholder-current",
        placeholder: "Quantia",
        type: "text"
    }, null, 512), [
        [ns, n.amount]
    ]), Pl("h1", zL, g(n.currency), 1)]), Pl("button", {
        onClick: t[2] || (t[2] = e => n.multiply(.5)),
        class: "border w-32 rounded-xl text-2xl border-gray-600 text-gray-200"
    }, " ½ "), Pl("button", {
        onClick: t[3] || (t[3] = e => n.multiply(2)),
        class: "border w-32 rounded-xl text-2xl border-gray-600 text-gray-200"
    }, " 2x ")]), BL, Pl("div", HL, [Pl("button", {
        class: [{
            border: "red" == n.color
        }, "bg-blaze-red text-white text-2xl rounded-lg h-20"],
        onClick: t[4] || (t[4] = e => n.color = "red")
    }, " x2 ", 2), Pl("button", {
        class: [{
            border: "white" == n.color
        }, "bg-white text-blaze-red text-2xl rounded-lg h-20 border-red-600"],
        onClick: t[5] || (t[5] = e => n.color = "white")
    }, " x14 ", 2), Pl("button", {
        class: [{
            border: "black" == n.color
        }, "bg-blaze-black text-white text-2xl rounded-lg h-20"],
        onClick: t[6] || (t[6] = e => n.color = "black")
    }, " x2 ", 2)]), Pl("button", {
        onClick: t[7] || (t[7] = (...e) => n.bet && n.bet(...e)),
        class: ["bg-blaze-red w-full h-20 text-white font-bold text-2xl rounded-lg", {
            "opacity-50": n.waiting
        }]
    }, g(n.waiting ? "Esperando" : "Começar o jogo"), 3)]), Pl("div", qL, [GL, WL, Pl("div", KL, [Pl("h1", JL, g(n.pretty(n.bets.red.size)) + " Total de Apostas", 1), Pl("h1", XL, g(e.$filters.intToMoney(n.bets.red.amount)), 1)])]), Pl("div", YL, [Pl("div", ZL, [Pl("img", {
        class: "w-8",
        src: e.$asset("/apps/blaze.svg", "casinoLogo"),
        alt: ""
    }, null, 8, ["src"])]), QL, Pl("div", eI, [Pl("h1", tI, g(n.pretty(n.bets.white.size)) + " Total de Apostas", 1), Pl("h1", nI, g(e.$filters.intToMoney(n.bets.white.amount)), 1)])]), Pl("div", lI, [aI, sI, Pl("div", oI, [Pl("h1", rI, g(n.pretty(n.bets.black.size)) + " Total de Apostas", 1), Pl("h1", iI, g(e.$filters.intToMoney(n.bets.black.amount)), 1)])])], 64)
};
const cI = {
    setup() {
        let e, t = So.settings.currency,
            l = rt(0),
            n = rt(0),
            a = rt(!1),
            o = rt(0),
            r = rt(0),
            s = rt(0),
            i = rt(!1),
            c = Ze([]),
            u = rt(),
            d = rt(),
            p = jl("onceTab"),
            f = jl("addBalance"),
            m = !1;
        async function h(e, t = 15e3) {
            clearInterval(m), m = setInterval((() => {
                if (e <= 0) return u.value.innerHTML = "", d.value.style.width = "0%", clearInterval(m);
                u.value && d.value && (u.value.innerHTML = (e / 1e3).toFixed(2) + "s", d.value.style.width = e / t * 100 + "%", e = Math.max(0, e - 40))
            }), 40)
        }

        function g(t = 1) {
            l.value = t, e = setInterval((() => {
                let e = l.value;
                l.value += .005 * Math.floor(e)
            }), 50)
        }
        return So.backend.casino_crash().then((async e => {
            c.push(...e.last), s.value = e.totalBet, "waiting" === e.status && e.delay ? await h(e.delay) : "crashing" === e.status ? (await g(e.multiplier), e.totalBet || (a.value = !0)) : "ending" === e.status && (i.value = !0, l.value = e.multiplier, a.value = !0)
        })), p("CASINO_CRASH_CASHOUT", (e => n.value = e)), p("CASINO_CRASH_ENDING", (t => {
            clearInterval(e), c.push(t) > 10 && c.shift(), l.value = t, i.value = !0, a.value = !0, h(5e3, 5e3)
        })), p("CASINO_CRASH_REFRESH", (() => {
            a.value = !1, l.value = 0, i.value = !1, s.value = 0, n.value = null
        })), p("CASINO_CRASH", (e => {
            l.value = 1, e ? i.value = !0 : g()
        })), p("CASINO_CRASH_WARMUP", (() => h(15e3))), wn((() => {
            clearInterval(e), clearInterval(m)
        })), {
            currency: t,
            timer: u,
            progress: d,
            won: n,
            crashed: i,
            multiplier: l,
            start: g,
            waiting: a,
            bet: function () {
                var e, t;
                if (a.value) return;
                let l = parseInt(o.value);
                if (l && l > 0) {
                    let n = parseFloat(null == (t = null == (e = r.value) ? void 0 : e.replace) ? void 0 : t.call(e, ",", ".")) || null;
                    So.backend.casino_crash_bet(l, n).then((e => {
                        e.error ? So.alert(e.error) : (s.value += l, f(-l), h(e.delay))
                    }))
                }
            },
            stop: function () {
                a.value || So.backend.casino_crash_cashout().then((e => {
                    e.error ? So.alert(e.error) : (s.value = 0, f(e[1]), n.value = e)
                }))
            },
            totalBet: s,
            amount: o,
            multiply: function (e) {
                let t = parseInt(o.value);
                t && t > 0 && (o.value = Math.ceil(t * e))
            },
            cashout: r,
            rounds: c
        }
    }
},
    uI = sn("data-v-6c02b606");
ln("data-v-6c02b606");
const dI = {
    class: "p-5 bg-blaze h-full overflow-y-auto space-y-5"
},
    pI = {
        class: "p-3 rounded-3xl bg-blaze-dark relative"
    },
    fI = {
        class: "flex justify-end text-white space-x-4 text-2xl overflow-hidden"
    },
    mI = {
        class: "absolute inset-x-10 rounded overflow-hidden top-24 z-1"
    },
    hI = {
        ref: "progress",
        style: {
            width: "0"
        },
        class: "bg-blaze-red h-8"
    },
    bI = {
        ref: "timer",
        class: "absolute text-white inset-x-0 text-center text-2xl top-0"
    },
    gI = {
        key: 0,
        class: "absolute text-center inset-0 flex justify-center items-start top-40"
    },
    vI = {
        class: "bg-blaze-green rounded-xl overflow-hidden text-white text-4xl leading-loose"
    },
    xI = {
        class: "bg-green-600 leading-loose text-xl px-4"
    },
    yI = {
        key: 0,
        class: "bg-blaze-red rounded-xl overflow-hidden text-white text-4xl w-40 leading-loose"
    },
    kI = Pl("p", {
        class: "bg-red-700 leading-loose text-xl"
    }, "CRASHED", -1),
    wI = {
        key: 1,
        class: "bg-blaze-light rounded-xl text-white w-32"
    },
    CI = Pl("i", {
        class: "f6-thin block text-white text-opacity-5",
        style: {
            "font-size": "32.5rem",
            "line-height": "0.95"
        }
    }, "", -1),
    _I = {
        class: "flex justify-between"
    },
    AI = {
        class: "relative w-64 text-xl"
    },
    SI = {
        class: "absolute right-4 top-6 font-bold text-gray-300"
    },
    TI = {
        class: "relative w-full text-xl"
    },
    EI = Pl("label", {
        class: "text-xl text-gray-300"
    }, "Auto retirar", -1),
    RI = Pl("h1", {
        class: "absolute right-4 top-16 font-bold text-gray-300"
    }, "X", -1);
an();
const PI = uI(((e, t, l, n, a, o) => (wl(), _l("div", dI, [Pl("div", pI, [Pl("ul", fI, [(wl(!0), _l(bl, null, fa(n.rounds, ((e, t) => (wl(), _l("li", {
    key: t,
    class: ["p-2 rounded-xl", {
        "bg-blaze-light": e < 2,
        "bg-blaze-green": e >= 2
    }]
}, g(e.toFixed(2)), 3)))), 128))]), Pl("div", mI, [Pl("div", hI, null, 512), Pl("h1", bI, null, 512)]), n.won ? (wl(), _l("div", gI, [Pl("div", vI, [Il(" x " + g(n.won[0].toFixed(2)) + " ", 1), Pl("p", xI, "VOCÊ GANHOU! " + g(e.$filters.intToMoney(n.won[1])), 1)])])) : Ml("", !0), n.multiplier ? (wl(), _l("div", {
    key: 1,
    class: [{
        "top-28": n.won
    }, "absolute text-center inset-0 grid place-items-center"]
}, [n.crashed ? (wl(), _l("div", yI, [Il(g(n.multiplier.toFixed(2)) + "x ", 1), kI])) : n.multiplier ? (wl(), _l("div", wI, g(n.multiplier.toFixed(2)) + "x ", 1)) : Ml("", !0)], 2)) : Ml("", !0), CI]), n.totalBet > 0 && n.multiplier > 0 ? (wl(), _l("button", {
    key: 0,
    onClick: t[1] || (t[1] = (...e) => n.stop && n.stop(...e)),
    class: ["bg-blaze-red w-full h-20 text-white font-bold text-2xl rounded-lg", {
        "opacity-50": n.waiting
    }]
}, " Parar " + g(e.$filters.intToMoney(n.totalBet * n.multiplier)), 3)) : (wl(), _l("button", {
    key: 1,
    onClick: t[2] || (t[2] = (...e) => n.bet && n.bet(...e)),
    class: ["bg-blaze-red w-full h-20 text-white font-bold text-2xl rounded-lg", {
        "opacity-50": n.waiting
    }]
}, g(n.waiting ? "Esperando" : "Começar o jogo"), 3)), Pl("div", _I, [Pl("div", AI, [Zn(Pl("input", {
    "onUpdate:modelValue": t[3] || (t[3] = e => n.amount = e),
    class: "w-full bg-blaze-dark p-6 font-bold rounded-xl text-gray-300 placeholder-current",
    placeholder: "Quantia",
    type: "text"
}, null, 512), [
    [ns, n.amount]
]), Pl("h1", SI, g(n.currency), 1)]), Pl("button", {
    onClick: t[4] || (t[4] = e => n.multiply(.5)),
    class: "border w-32 rounded-xl text-2xl border-gray-600 text-gray-200"
}, " ½ "), Pl("button", {
    onClick: t[5] || (t[5] = e => n.multiply(2)),
    class: "border w-32 rounded-xl text-2xl border-gray-600 text-gray-200"
}, " 2x ")]), Pl("div", TI, [EI, Zn(Pl("input", {
    "onUpdate:modelValue": t[6] || (t[6] = e => n.cashout = e),
    class: "w-full bg-blaze-dark mt-2 p-6 font-bold rounded-xl text-gray-300 placeholder-current",
    placeholder: "Quantia",
    type: "text"
}, null, 512), [
    [ns, n.cashout]
]), RI])]))));
cI.render = PI, cI.__scopeId = "data-v-6c02b606";
const LI = Ze({
    revealed: {}
});

function II() {
    Object.keys(LI).forEach((e => delete LI[e])), LI.revealed = {}
}
const OI = {
    setup() {
        let e = So.settings.currency,
            t = rt(0),
            l = rt(2),
            n = da((() => Object.keys(LI.revealed).length > 0)),
            a = jl("addBalance");
        return {
            currency: e,
            game: LI,
            canFinish: n,
            amount: t,
            mines: l,
            multiply: function (e) {
                let l = parseInt(t.value);
                l && l > 0 && (t.value = Math.ceil(l * e))
            },
            click: function (e) {
                e in LI.revealed || !LI.id || LI.lost || LI.clicking || (LI.clicking = !0, So.backend.casino_mine_click(e).then((t => {
                    if (t.error) return So.alert(t.error);
                    "mine" == t[0] && (LI.lost = !0), LI.revealed[e] = t[0], LI.reward = t[1]
                })).finally((() => LI.clicking = !1)))
            },
            play: function () {
                if (LI.lost) II();
                else if (LI.id) LI.clicking = !0, So.backend.casino_mine_finish().then((e => {
                    e.error ? So.alert(e.error) : (a(e.reward), II())
                }));
                else {
                    let e = parseInt(t.value) || 0;
                    So.backend.casino_mine_start(e, l.value).then((t => {
                        t.error ? So.alert(t.error) : (a(-e), Object.assign(LI, t))
                    }))
                }
            },
            finish: function () {
                n.value && So.backend.casino_mine_finish().then((e => {
                    if (e.error) return So.alert(e.error);
                    a(e.reward), II()
                }))
            }
        }
    }
},
    MI = {
        class: "bg-blaze h-full p-5 space-y-5"
    },
    VI = {
        class: "bg-blaze-dark grid grid-cols-5 gap-8 p-5 rounded-xl"
    },
    DI = {
        key: 0,
        class: "fad fa-gem text-lightBlue-400 animate-flip"
    },
    NI = {
        key: 1,
        class: "fal fa-bomb text-blaze-red animate-flip"
    },
    UI = {
        key: 0,
        class: "flex justify-between"
    },
    $I = {
        class: "relative w-64 text-xl"
    },
    jI = {
        class: "absolute right-4 top-6 font-bold text-gray-300"
    },
    FI = {
        key: 1,
        class: "text-xl space-y-2"
    },
    zI = Pl("h1", {
        class: "text-white"
    }, "Quantidade de minas", -1),
    BI = {
        key: 2,
        class: "text-xl space-y-2"
    },
    HI = Pl("h1", {
        class: "text-white"
    }, "Prêmio", -1);
OI.render = function (e, t, l, n, a, o) {
    return wl(), _l("div", MI, [Pl("div", VI, [(wl(!0), _l(bl, null, fa(Array(25), ((e, t) => (wl(), _l("button", {
        key: t,
        onClick: e => n.click(t),
        class: "aspect-1/1 bg-gradient-to-br from-coolGray-800 to-coolGray-900 rounded-lg flex flex-center"
    }, ["diamond" == n.game.revealed[t] ? (wl(), _l("i", DI)) : "mine" == n.game.revealed[t] ? (wl(), _l("i", NI)) : Ml("", !0)], 8, ["onClick"])))), 128))]), n.game.id ? Ml("", !0) : (wl(), _l("div", UI, [Pl("div", $I, [Zn(Pl("input", {
        "onUpdate:modelValue": t[1] || (t[1] = e => n.amount = e),
        class: "w-full bg-blaze-dark p-6 font-bold rounded-xl text-gray-300 placeholder-current",
        placeholder: "Quantia",
        type: "text"
    }, null, 512), [
        [ns, n.amount]
    ]), Pl("h1", jI, g(n.currency), 1)]), Pl("button", {
        onClick: t[2] || (t[2] = e => n.multiply(.5)),
        class: "border w-32 rounded-xl text-2xl border-gray-600 text-gray-200"
    }, " ½ "), Pl("button", {
        onClick: t[3] || (t[3] = e => n.multiply(2)),
        class: "border w-32 rounded-xl text-2xl border-gray-600 text-gray-200"
    }, " 2x ")])), n.game.id ? (wl(), _l("div", BI, [HI, Pl("input", {
        disabled: "",
        value: n.game.reward,
        class: "w-full bg-blaze-dark p-6 font-bold rounded-xl text-gray-300 placeholder-current",
        placeholder: "Quantidade",
        type: "text"
    }, null, 8, ["value"])])) : (wl(), _l("div", FI, [zI, Zn(Pl("input", {
        "onUpdate:modelValue": t[4] || (t[4] = e => n.mines = e),
        class: "w-full bg-blaze-dark p-6 font-bold rounded-xl text-gray-300 placeholder-current",
        placeholder: "Quantidade",
        type: "text"
    }, null, 512), [
        [ns, n.mines]
    ])])), !n.game.id || n.game.lost ? (wl(), _l("button", {
        key: 3,
        onClick: t[5] || (t[5] = (...e) => n.play && n.play(...e)),
        class: "bg-blaze-red w-full py-4 text-xl text-white rounded-lg"
    }, g(n.game.lost ? "Jogar novamente" : "Jogar"), 1)) : (wl(), _l("button", {
        key: 4,
        onClick: t[6] || (t[6] = (...e) => n.finish && n.finish(...e)),
        class: ["bg-blaze-red w-full py-4 text-xl text-white rounded-lg", {
            "opacity-50": !n.canFinish
        }]
    }, " Finalizar ", 2))])
};
const qI = {
    components: {
        Double: AL,
        Crash: cI,
        Mine: OI
    },
    setup() {
        let e = So.settings.currency,
            t = rt("double"),
            l = rt(0),
            n = [];

        function a(e) {
            var t;
            t = l, $k.has(t) && $k.get(t)(), $k.delete(t), jk(l, l.value + e)
        }

        function o() {
            for (let {
                event: e,
                callback: t
            }
                of n) So.pusher.removeListener(e, t);
            n.length = 0
        }
        return function (e, t) {
            e()
        }((() => __import__("https://cdnjs.cloudflare.com/ajax/libs/Chart.js/3.8.0/chart.min.js"))), $l("setBalance", (e => jk(l, e))), $l("addBalance", a), $l("onceTab", (function (e, t) {
            n.push({
                event: e,
                callback: t
            }), So.pusher.on(e, t)
        })), So.pusher.on("CASINO_INCREMENT", a), Tn(t, o), wn(o), So.backend.casino_balance().then((e => l.value = Number(e))), {
            currency: e,
            tab: t,
            balance: l,
            deposit: function () {
                So.prompt("Digite o valor do depósito").then((e => {
                    let t = parseInt(e);
                    t && t > 0 && So.backend.casino_deposit(t).then((e => {
                        e && (l.value += t)
                    }))
                }), (() => { }))
            },
            withdraw: function () {
                So.prompt("Digite o valor do saque").then((e => {
                    let t = parseInt(e);
                    t && t > 0 && So.backend.casino_withdraw(t).then((e => {
                        e && (l.value -= t)
                    }))
                }), (() => { }))
            }
        }
    },
    mounted() {
        So.backend.casino_subscribe()
    },
    unmounted() {
        So.backend.casino_unsubscribe()
    }
},
    GI = {
        class: "h-full flex flex-col bg-blaze-dark sofia-pro"
    },
    WI = {
        class: "h-36 pt-12 px-10 flex justify-start items-center flex-shrink-0"
    },
    KI = {
        class: "border rounded-xl border-gray-700 ml-auto font-bold p-3 flex space-x-5 text-2xl"
    },
    JI = {
        class: "text-coolGray-400"
    },
    XI = {
        class: "text-white"
    },
    YI = Pl("i", {
        class: "fas fa-exchange"
    }, null, -1),
    ZI = {
        class: "mt-auto flex-shrink-0 h-32 grid grid-cols-3 bg-coolGray-800 text-white text-xl border-t border-coolGray-700"
    },
    QI = Pl("svg", {
        width: "3rem",
        height: "3rem",
        viewBox: "0 0 20 20",
        fill: "none",
        xmlns: "http://www.w3.org/2000/svg"
    }, [Pl("path", {
        d: "M1 6H0V14H1C1.26522 14 1.51957 13.8946 1.70711 13.7071C1.89464 13.5196 2 13.2652 2 13V7C2 6.73478 1.89464 6.48043 1.70711 6.29289C1.51957 6.10536 1.26522 6 1 6Z",
        fill: "#8C9099"
    }), Pl("path", {
        d: "M19 6C18.7348 6 18.4804 6.10536 18.2929 6.29289C18.1054 6.48043 18 6.73478 18 7V13C18 13.2652 18.1054 13.5196 18.2929 13.7071C18.4804 13.8946 18.7348 14 19 14H20V6H19Z",
        fill: "#8C9099"
    }), Pl("path", {
        d: "M9 14V4H6C5.46957 4 4.96086 4.21071 4.58579 4.58579C4.21071 4.96086 4 5.46957 4 6V14C4 14.5304 4.21071 15.0391 4.58579 15.4142C4.96086 15.7893 5.46957 16 6 16H9V14Z",
        fill: "#414952"
    }), Pl("path", {
        d: "M14 4H11V16H14C14.5304 16 15.0391 15.7893 15.4142 15.4142C15.7893 15.0391 16 14.5304 16 14V6C16 5.46957 15.7893 4.96086 15.4142 4.58579C15.0391 4.21071 14.5304 4 14 4Z",
        fill: "#414952"
    }), Pl("path", {
        d: "M9 19C9 19.2652 9.10536 19.5196 9.29289 19.7071C9.48043 19.8946 9.73478 20 10 20C10.2652 20 10.5196 19.8946 10.7071 19.7071C10.8946 19.5196 11 19.2652 11 19V16H9V19Z",
        fill: "#8C9099"
    }), Pl("path", {
        d: "M11 1C11 0.734784 10.8946 0.48043 10.7071 0.292893C10.5196 0.105357 10.2652 0 10 0C9.73478 0 9.48043 0.105357 9.29289 0.292893C9.10536 0.48043 9 0.734784 9 1V4H11V1Z",
        fill: "#8C9099"
    })], -1),
    eO = Pl("h1", {
        class: "mt-2"
    }, "Double", -1),
    tO = Pl("svg", {
        width: "3rem",
        height: "3rem",
        viewBox: "0 0 21 20",
        fill: "none",
        xmlns: "http://www.w3.org/2000/svg"
    }, [Pl("path", {
        d: "M13.14 5C12.69 5.45 12.14 5.64 11.9 5.41C11.66 5.18 11.9 4.63 12.32 4.17C12.74 3.71 13.32 3.53 13.56 3.76C13.8 3.99 13.6 4.53 13.14 5Z",
        fill: "#414952"
    }), Pl("path", {
        d: "M18 0H2C1.46957 0 0.96086 0.210714 0.585787 0.585786C0.210714 0.960859 0 1.46957 0 2V20C6.28 20 10.6 15.76 12.25 10.67C12.8089 10.8838 13.4016 10.9956 14 11C14.11 11 14.2 11 14.31 11C13.2234 14.7898 10.7158 18.0139 7.31 20H18C18.5304 20 19.0391 19.7893 19.4142 19.4142C19.7893 19.0391 20 18.5304 20 18V2C20 1.46957 19.7893 0.960859 19.4142 0.585786C19.0391 0.210714 18.5304 0 18 0V0ZM14 9C13.4067 9 12.8266 8.82405 12.3333 8.49441C11.8399 8.16476 11.4554 7.69623 11.2284 7.14805C11.0013 6.59987 10.9419 5.99667 11.0576 5.41473C11.1734 4.83279 11.4591 4.29824 11.8787 3.87868C12.2982 3.45912 12.8328 3.1734 13.4147 3.05764C13.9967 2.94189 14.5999 3.0013 15.1481 3.22836C15.6962 3.45542 16.1648 3.83994 16.4944 4.33329C16.8241 4.82664 17 5.40666 17 6C17 6.79565 16.6839 7.55871 16.1213 8.12132C15.5587 8.68393 14.7957 9 14 9Z",
        fill: "#8C9099"
    }), Pl("path", {
        d: "M19.94 1.54006C19.94 1.45006 19.94 1.35006 19.86 1.26006C19.8414 1.22776 19.8247 1.19436 19.81 1.16006L19.69 0.940059L19.62 0.830059L19.51 0.660059C19.4821 0.618792 19.4485 0.581747 19.41 0.550059L19.22 0.420059L19.08 0.320059C19.0366 0.29081 18.9895 0.267283 18.94 0.250059C18.8034 0.172451 18.6594 0.108797 18.51 0.0600586C18.5241 0.206388 18.5241 0.353729 18.51 0.500059V16.7501C18.51 17.2142 18.3256 17.6593 17.9975 17.9875C17.6693 18.3157 17.2241 18.5001 16.76 18.5001H9.41002C8.74004 19.0592 8.02418 19.561 7.27002 20.0001H18C18.5305 20.0001 19.0392 19.7893 19.4142 19.4143C19.7893 19.0392 20 18.5305 20 18.0001V2.00006C20.0158 1.87054 20.0158 1.73958 20 1.61006C19.9847 1.58307 19.9644 1.5593 19.94 1.54006Z",
        fill: "#414952"
    })], -1),
    nO = Pl("h1", {
        class: "mt-2"
    }, "Crash", -1),
    lO = Pl("svg", {
        width: "3rem",
        height: "3rem",
        viewBox: "0 0 20 20",
        fill: "none",
        xmlns: "http://www.w3.org/2000/svg"
    }, [Pl("path", {
        "fill-rule": "evenodd",
        "clip-rule": "evenodd",
        d: "M16.0889 6.31927L15.2989 7.09927C14.9289 7.46927 13.5889 6.72927 12.2989 5.43927C11.8226 4.96474 11.3969 4.44192 11.0289 3.87927C10.6689 3.30927 10.4989 2.87927 10.5889 2.57927C9.99471 2.44642 9.38773 2.37935 8.77888 2.37927C6.83085 2.37942 4.93857 3.02963 3.40187 4.22687C1.86517 5.42412 0.771943 7.09993 0.295399 8.98877C-0.181146 10.8776 -0.0137504 12.8715 0.771062 14.6544C1.55588 16.4374 2.91322 17.9074 4.62803 18.8317C6.34284 19.756 8.31705 20.0816 10.2378 19.7569C12.1586 19.4322 13.9161 18.4759 15.2319 17.0394C16.5477 15.6029 17.3465 13.7684 17.5017 11.8265C17.657 9.88468 17.1597 7.94657 16.0889 6.31927ZM5.33888 7.05927C4.33888 8.11927 3.09888 8.62927 2.68888 8.21927C2.27888 7.80927 2.79888 6.61927 3.84888 5.56927C4.89888 4.51927 6.08888 3.99927 6.49888 4.40927C6.90888 4.81927 6.38888 5.99927 5.33888 7.05927Z",
        fill: "#414952"
    }), Pl("path", {
        "fill-rule": "evenodd",
        "clip-rule": "evenodd",
        d: "M10.0289 18.6294C8.37383 18.6292 6.75272 18.1596 5.35379 17.2751C3.95485 16.3905 2.83547 15.1274 2.12559 13.6323C1.41571 12.1371 1.14445 10.4713 1.34329 8.82817C1.54213 7.18505 2.20291 5.63202 3.24894 4.34937C2.29467 5.12084 1.51335 6.08441 0.955698 7.17749C0.39805 8.27057 0.0765523 9.46873 0.0120843 10.6941C-0.0523837 11.9196 0.141619 13.1448 0.581494 14.2904C1.02137 15.436 1.69728 16.4762 2.56533 17.3435C3.43338 18.2109 4.47416 18.8859 5.62008 19.3249C6.766 19.7638 7.99143 19.9568 9.21679 19.8914C10.4422 19.8259 11.6401 19.5034 12.7327 18.9449C13.8253 18.3864 14.7882 17.6043 15.5589 16.6494C14.0021 17.9327 12.0465 18.6329 10.0289 18.6294Z",
        fill: "#414952"
    }), Pl("path", {
        d: "M14.529 3.87937C14.4516 3.87953 14.3756 3.8588 14.309 3.81937C14.2498 3.79057 14.1969 3.75037 14.1533 3.70108C14.1097 3.65179 14.0762 3.59437 14.0549 3.53212C14.0335 3.46988 14.0246 3.40402 14.0288 3.33834C14.0329 3.27266 14.05 3.20844 14.079 3.14937C14.2144 2.88712 14.3898 2.64758 14.599 2.43937C13.439 1.36937 12.309 0.779368 12.029 1.11937C11.749 1.45937 12.399 2.81937 13.689 4.11937C14.979 5.41937 16.319 6.11937 16.689 5.77937C17.059 5.43937 16.439 4.31937 15.369 3.14937C15.2319 3.27988 15.1171 3.43188 15.029 3.59937C14.9822 3.68989 14.9099 3.76468 14.821 3.81446C14.7321 3.86424 14.6306 3.88681 14.529 3.87937Z",
        fill: "#414952"
    }), Pl("path", {
        d: "M19.6189 0.0493271C19.5592 0.0206524 19.4944 0.0041153 19.4283 0.000675356C19.3622 -0.00276459 19.2961 0.00696118 19.2337 0.0292882C19.1714 0.0516153 19.1141 0.086099 19.0652 0.130738C19.0163 0.175377 18.9768 0.229283 18.9489 0.289327C18.6189 0.989327 17.8389 1.17933 16.9489 1.39933C16.092 1.51215 15.2826 1.85805 14.6089 2.39933L14.9789 2.73933L15.3189 3.09933C15.8608 2.68431 16.5022 2.4188 17.1789 2.32933C17.7217 2.28984 18.2475 2.12248 18.7133 1.84092C19.1791 1.55937 19.5716 1.17161 19.8589 0.709327C19.8874 0.650385 19.9038 0.586332 19.9071 0.520952C19.9104 0.455572 19.9006 0.39019 19.8782 0.328667C19.8558 0.267144 19.8214 0.210728 19.7768 0.16275C19.7323 0.114772 19.6786 0.0762053 19.6189 0.0493271Z",
        fill: "#414952"
    })], -1),
    aO = Pl("h1", {
        class: "mt-2"
    }, "Mine", -1);
qI.render = function (e, t, l, n, a, o) {
    let r = dl("Double"),
        s = dl("Crash"),
        i = dl("Mine");
    return wl(), _l("div", GI, [Pl("div", WI, [Pl("img", {
        class: "w-12 h-12",
        src: e.$asset("/apps/blaze.svg", "casinoLogo"),
        alt: ""
    }, null, 8, ["src"]), Pl("div", KI, [Pl("h1", JI, g(n.currency), 1), Pl("h3", XI, g(n.balance.toLocaleString()), 1)]), Pl("button", {
        onClick: t[1] || (t[1] = (...e) => n.deposit && n.deposit(...e)),
        class: "bg-blaze-red text-white text-xl font-bold h-14 px-4 ml-5 rounded-lg"
    }, " Depositar "), Pl("button", {
        onClick: t[2] || (t[2] = (...e) => n.withdraw && n.withdraw(...e)),
        class: "bg-blaze-red text-white text-xl font-bold h-14 px-4 ml-5 rounded-lg"
    }, [YI])]), "double" == n.tab ? (wl(), _l(r, {
        key: 0
    })) : Ml("", !0), "crash" == n.tab ? (wl(), _l(s, {
        key: 1
    })) : "mine" == n.tab ? (wl(), _l(i, {
        key: 2
    })) : Ml("", !0), Pl("div", ZI, [Pl("button", {
        onClick: t[3] || (t[3] = e => n.tab = "double"),
        class: "mx-auto flex flex-col flex-center"
    }, [QI, eO]), Pl("button", {
        onClick: t[4] || (t[4] = e => n.tab = "crash"),
        class: "mx-auto flex flex-col flex-center"
    }, [tO, nO]), Pl("button", {
        onClick: t[5] || (t[5] = e => n.tab = "mine"),
        class: "mx-auto flex flex-col flex-center"
    }, [lO, aO])])])
};
const sO = {
    setup() {
        jl("setDark")(!0);
        let e = Ze([]),
            t = Ze({
                state: "",
                time: 0,
                bombs: 0,
                marked: 0
            });

        function l(e) {
            return e[Math.floor(e.length * Math.random())]
        }
        return setInterval((() => {
            "playing" == t.state && (t.time += 1)
        }), 1e3), {
            game: t,
            columns: e,
            newGame: function (n, a) {
                e.length = 0, t.state = "playing", t.bombs = a, t.marked = 0, t.time = 0;
                for (let t = 0; t < n; t++) {
                    let l = [];
                    for (let e = 0; e < n; e++) l.push({
                        x: t,
                        y: e,
                        nearby: 0,
                        revealed: !1,
                        marked: !1,
                        mine: !1
                    });
                    e.push(l)
                }
                for (; a;) {
                    let t = l(l(e));
                    t.mine || (t.mine = !0, a -= 1)
                }
            },
            reveal: function l(n) {
                if (!n.marked && "defeat" != t.state && !n.revealed)
                    if (n.revealed = !0, n.mine) t.state = "defeat";
                    else {
                        let a = e.flat(),
                            o = a.filter((e => e != n && 1.9 > Math.sqrt((e.x - n.x) ** 2 + (e.y - n.y) ** 2))),
                            r = o.reduce(((e, t) => e + t.mine), 0);
                        0 == r ? o.forEach((e => l(e))) : n.nearby = r, a.reduce(((e, t) => e + t.revealed), 0) == a.length - t.bombs && (t.state = "win")
                    }
            },
            mark: function (e) {
                e.revealed || "playing" != t.state || t.marked >= t.bombs && !e.marked || (e.marked = !e.marked, t.marked += e.marked ? 1 : -1)
            }
        }
    }
},
    oO = {
        class: "flex flex-col h-full bg-gray-800"
    },
    rO = {
        class: "flex justify-between p-8 pt-48"
    },
    iO = {
        class: "flex"
    },
    cO = {
        class: "flex flex-center"
    },
    uO = {
        key: 0,
        class: "fas fa-flag-alt text-lg text-red-600"
    },
    dO = {
        key: 1,
        class: "fas fa-bomb"
    },
    pO = {
        key: 0,
        class: "flex-1 bg-gray-800"
    },
    fO = {
        class: "flex justify-between p-8"
    },
    mO = {
        class: "bg-gray-600 ring ring-gray-500 text-white text-center p-5 rounded-xl w-32"
    },
    hO = {
        class: "bg-gray-600 ring ring-gray-500 text-white text-center p-5 rounded-xl w-32"
    },
    bO = {
        key: 1,
        class: "text-white text-center text-4xl pt-8"
    },
    gO = {
        key: 0
    },
    vO = {
        key: 1
    },
    xO = {
        key: 2
    };
sO.render = function (e, t, l, n, a, o) {
    return wl(), _l("div", oO, [Pl("div", rO, [(wl(), _l(bl, null, fa([
        [5, 5],
        [9, 10],
        [12, 20]
    ], (([e, t]) => Pl("div", {
        key: e,
        class: "bg-gray-600 ring ring-gray-500 text-white p-5 rounded-xl",
        onClick: l => n.newGame(e, t)
    }, [Pl("h3", null, g(e) + "x" + g(e), 1)], 8, ["onClick"]))), 64))]), Pl("div", iO, [(wl(!0), _l(bl, null, fa(n.columns, ((e, t) => (wl(), _l("div", {
        class: "flex flex-col flex-1",
        key: t
    }, [(wl(!0), _l(bl, null, fa(e, ((e, t) => (wl(), _l("div", {
        key: t,
        class: ["w-full square border border-gray-600 flex flex-center", [e.revealed ? "bg-gray-400" : "bg-gray-500"]],
        onClick: t => n.reveal(e),
        onContextmenu: is((t => n.mark(e)), ["prevent", "stop"])
    }, [Pl("div", cO, [e.marked ? (wl(), _l("i", uO)) : e.revealed && e.mine ? (wl(), _l("i", dO)) : (wl(), _l("p", {
        key: 2,
        nearby: e.nearby,
        class: "font-bold"
    }, g(e.nearby || ""), 9, ["nearby"]))])], 42, ["onClick", "onContextmenu"])))), 128))])))), 128))]), "playing" == n.game.state ? (wl(), _l("div", pO, [Pl("div", fO, [Pl("div", mO, g(e.$filters.duration(n.game.time)), 1), Pl("div", hO, [Pl("h3", null, "💣 " + g(n.game.bombs - n.game.marked), 1)])])])) : (wl(), _l("div", bO, ["win" == n.game.state ? (wl(), _l("h1", gO, "Você venceu em " + g(e.$filters.duration(n.game.time)), 1)) : "defeat" == n.game.state ? (wl(), _l("h1", vO, "Você perdeu")) : (wl(), _l("h1", xO, "Escolha um modo de jogo"))]))])
};
const yO = {
    setup: () => (jl("setDark")(So.darkTheme.value), {
        isAndroid: So.settings.isAndroid
    })
},
    kO = {
        class: "flex flex-col h-full bg-theme text-theme"
    },
    wO = {
        class: "h-32 pt-16"
    },
    CO = {
        key: 0,
        class: "far fa-arrow-left"
    },
    _O = {
        key: 1,
        class: "fas fa-chevron-left text-blue-500"
    },
    AO = Pl("iframe", {
        class: "flex-1 w-full",
        src: "https://trucoon.com.br/jogo/",
        frameborder: "0"
    }, "\r\n    ", -1);
yO.render = function (e, t, l, n, a, o) {
    return wl(), _l("div", kO, [Pl("div", wO, [Pl("button", {
        class: "absolute top-16 left-0 px-4",
        onClick: t[1] || (t[1] = (...t) => e.$router.back && e.$router.back(...t))
    }, [n.isAndroid ? (wl(), _l("i", CO)) : (wl(), _l("i", _O))]), Pl("h1", {
        class: ["font-bold", {
            "ml-16": n.isAndroid,
            "text-center": !n.isAndroid
        }]
    }, "Truco", 2)]), AO])
};
const SO = {
    setup: () => (jl("setDark")(So.darkTheme.value), {
        isAndroid: So.settings.isAndroid
    })
},
    TO = {
        class: "flex flex-col h-full bg-theme text-theme"
    },
    EO = {
        class: "h-32 pt-16"
    },
    RO = {
        key: 0,
        class: "far fa-arrow-left"
    },
    PO = {
        key: 1,
        class: "fas fa-chevron-left text-blue-500"
    },
    LO = Pl("iframe", {
        class: "flex-1 w-full",
        src: "https://slither.io/",
        frameborder: "0"
    }, "\r\n    ", -1);
SO.render = function (e, t, l, n, a, o) {
    return wl(), _l("div", TO, [Pl("div", EO, [Pl("button", {
        class: "absolute top-16 left-0 px-4",
        onClick: t[1] || (t[1] = (...t) => e.$router.back && e.$router.back(...t))
    }, [n.isAndroid ? (wl(), _l("i", RO)) : (wl(), _l("i", PO))]), Pl("h1", {
        class: ["font-bold", {
            "ml-16": n.isAndroid,
            "text-center": !n.isAndroid
        }]
    }, "Gulper", 2)]), LO])
};
const IO = [{
    path: "/",
    component: fc
}, {
    path: "/home",
    component: xc
}, {
    path: "/video",
    component: Cr
}, {
    path: "/settings",
    component: Ec
}, {
    path: "/contacts",
    component: fu
}, {
    path: "/contacts/services",
    component: zu
}, {
    path: "/contacts/dial",
    component: td
}, {
    path: "/contacts/history",
    component: vd
}, {
    path: "/contacts/blocks",
    component: Ld
}, {
    path: "/contacts/create",
    component: Eu
}, {
    path: "/contacts/:id",
    component: Vu
}, {
    path: "/call",
    component: Op
}, {
    path: "/sms",
    component: $d
}, {
    path: "/sms/:id",
    component: ep
}, {
    path: "/gallery",
    component: mp
}, {
    path: "/gallery/:folder",
    component: mp
}, {
    path: "/gallery/carousel/:file",
    component: Ap
}, {
    path: "/whatsapp",
    component: Rf,
    meta: {
        keepAlive: !0
    }
}, {
    path: "/whatsapp/create",
    component: th
}, {
    path: "/whatsapp/edit/:group",
    component: kh
}, {
    path: "/whatsapp/:contact",
    component: bm
}, {
    path: "/tor",
    component: tb
}, {
    path: "/tor/groups",
    component: fb
}, {
    path: "/tor/store",
    component: Bb
}, {
    path: "/tor/store/create",
    component: ng
}, {
    path: "/tor/payments",
    component: dg
}, {
    path: "/tor/:id",
    component: Sb
}, {
    path: "/instagram",
    component: vv
}, {
    path: "/instagram/login",
    component: Ev
}, {
    path: "/instagram/register",
    component: jv
}, {
    path: "/instagram/search",
    component: Qv
}, {
    path: "/instagram/create",
    component: Ig
}, {
    path: "/instagram/notifications",
    component: rx
}, {
    path: "/instagram/edit",
    component: mx
}, {
    path: "/instagram/profiles/:id",
    component: Ax
}, {
    path: "/instagram/posts/:id",
    component: Hx
}, {
    path: "/instagram/stories/:id",
    component: rv
}, {
    path: "/twitter",
    component: dy
}, {
    path: "/twitter/register",
    component: my
}, {
    path: "/twitter/create",
    component: wy
}, {
    path: "/twitter/posts/:id",
    component: Ey
}, {
    path: "/twitter/profiles/:id",
    component: nk
}, {
    path: "/twitter/settings",
    component: yk
}, {
    path: "/bank",
    component: pw
}, {
    path: "/bank/pix",
    component: Iw
}, {
    path: "/bank/transfer",
    component: aC
}, {
    path: "/bank/receipt",
    component: wC
}, {
    path: "/bank/statements",
    component: MC
}, {
    path: "/bank/invoices",
    component: WC
}, {
    path: "/bank/invoices/create",
    component: i_
}, {
    path: "/bank/fines",
    component: E_
}, {
    path: "/paypal",
    component: B_
}, {
    path: "/olx",
    component: ES
}, {
    path: "/olx/create",
    component: NS
}, {
    path: "/olx/search",
    component: YS
}, {
    path: "/olx/dashboard",
    component: PT
}, {
    path: "/olx/:id",
    component: nT
}, {
    path: "/tinder",
    component: zT
}, {
    path: "/tinder/register",
    component: aE
}, {
    path: "/tinder/likes",
    component: LE
}, {
    path: "/tinder/chats",
    component: $E
}, {
    path: "/tinder/chats/:id",
    component: ZE
}, {
    path: "/tinder/profile",
    component: fR
}, {
    path: "/yellowpages",
    component: MR
}, {
    path: "/yellowpages/create",
    component: BR
}, {
    path: "/weazel",
    component: EP
}, {
    path: "/weazel/create",
    component: ZP
}, {
    path: "/weazel/:id/edit",
    component: ZP
}, {
    path: "/weazel/:id",
    component: dL
}, {
    path: "/casino",
    component: qI
}, {
    path: "/custom/:id",
    component: RR
}, {
    path: "/calculator",
    component: WR
}, {
    path: "/notes",
    component: uP
}, {
    path: "/notes/create",
    component: kP
}, {
    path: "/notes/:id",
    component: _P
}, {
    path: "/minesweeper",
    component: sO
}, {
    path: "/truco",
    component: yO
}, {
    path: "/gulper",
    component: SO
}],
    OO = function (e) {
        let t = Ti(e.routes, e),
            l = e.parseQuery || Xi,
            n = e.stringifyQuery || Yi,
            a = e.history,
            o = Qi(),
            r = Qi(),
            s = Qi(),
            i = ct(mi, !0),
            c = mi;
        Fr && e.scrollBehavior && "scrollRestoration" in history && (history.scrollRestoration = "manual");
        let u = Br.bind(null, (e => "" + e)),
            d = Br.bind(null, Ki),
            p = Br.bind(null, Ji);

        function f(e, o) {
            var r, s, c;
            if (o = zr({}, o || i.value), "string" == typeof e) {
                let n = Gr(l, e, o.path),
                    r = t.resolve({
                        path: n.path
                    }, o),
                    s = a.createHref(n.fullPath);
                return zr(n, r, {
                    params: p(r.params),
                    hash: Ji(n.hash),
                    redirectedFrom: void 0,
                    href: s
                })
            }
            let f;
            "path" in e ? f = zr({}, e, {
                path: Gr(l, e.path, o.path).path
            }) : (f = zr({}, e, {
                params: d(e.params)
            }), o.params = d(o.params));
            let m = t.resolve(f, o),
                h = e.hash || "";
            m.params = u(p(m.params));
            let g, b = (s = n, g = (c = zr({}, e, {
                hash: (r = h, Gi(r).replace(zi, "{").replace(Hi, "}").replace(ji, "^")),
                path: m.path
            })).query ? s(c.query) : "", c.path + (g && "?") + g + (c.hash || "")),
                v = a.createHref(b);
            return zr({
                fullPath: b,
                hash: h,
                query: n === Yi ? Zi(e.query) : e.query
            }, m, {
                redirectedFrom: void 0,
                href: v
            })
        }

        function m(e) {
            return "string" == typeof e ? Gr(l, e, i.value.path) : zr({}, e)
        }

        function h(e, t) {
            if (c !== e) return vi(8, {
                from: t,
                to: e
            })
        }

        function g(e) {
            let t = e.matched[e.matched.length - 1];
            if (t && t.redirect) {
                let {
                    redirect: l
                } = t, n = "function" == typeof l ? l(e) : l;
                return "string" == typeof n && (n = n.indexOf("?") > -1 || n.indexOf("#") > -1 ? n = m(n) : {
                    path: n
                }), zr({
                    query: e.query,
                    hash: e.hash,
                    params: e.params
                }, n)
            }
        }

        function b(e, t) {
            var l, a, o;
            let r = c = f(e),
                s = i.value,
                u = e.state,
                d = e.force,
                p = !0 === e.replace,
                h = g(r);
            if (h) return b(zr(m(h), {
                state: u,
                force: d,
                replace: p
            }), t || r);
            let v, k, P, _ = r;
            return _.redirectedFrom = t, !d && (l = n, o = r, k = (a = s).matched.length - 1, P = o.matched.length - 1, k > -1 && k === P && Kr(a.matched[k], o.matched[P]) && Jr(a.params, o.params) && l(a.query) === l(o.query) && a.hash === o.hash) && (v = vi(16, {
                to: _,
                from: s
            }), T(s, s, !0, !1)), (v ? Promise.resolve(v) : x(_, s)).catch((e => xi(e) ? e : C(e))).then((e => {
                if (e) {
                    if (xi(e, 2)) return b(zr(m(e.to), {
                        state: u,
                        force: d,
                        replace: p
                    }), t || _)
                } else e = w(_, s, !0, p, u);
                return y(_, s, e), e
            }))
        }

        function v(e, t) {
            let l = h(e, t);
            return l ? Promise.reject(l) : Promise.resolve()
        }

        function x(e, t) {
            let l, [n, a, s] = function (e, t) {
                let l = [],
                    n = [],
                    a = [],
                    o = Math.max(t.matched.length, e.matched.length);
                for (let r = 0; r < o; r++) {
                    let o = t.matched[r];
                    o && (e.matched.find((e => Kr(e, o))) ? n.push(o) : l.push(o));
                    let s = e.matched[r];
                    s && (t.matched.find((e => Kr(e, s))) || a.push(s))
                }
                return [l, n, a]
            }(e, t);
            for (let a of (l = tc(n.reverse(), "beforeRouteLeave", e, t), n)) a.leaveGuards.forEach((n => {
                l.push(ec(n, e, t))
            }));
            let i = v.bind(null, e, t);
            return l.push(i), ic(l).then((() => {
                for (let n of (l = [], o.list())) l.push(ec(n, e, t));
                return l.push(i), ic(l)
            })).then((() => {
                for (let n of (l = tc(a, "beforeRouteUpdate", e, t), a)) n.updateGuards.forEach((n => {
                    l.push(ec(n, e, t))
                }));
                return l.push(i), ic(l)
            })).then((() => {
                for (let n of (l = [], e.matched))
                    if (n.beforeEnter && 0 > t.matched.indexOf(n))
                        if (Array.isArray(n.beforeEnter))
                            for (let a of n.beforeEnter) l.push(ec(a, e, t));
                        else l.push(ec(n.beforeEnter, e, t));
                return l.push(i), ic(l)
            })).then((() => (e.matched.forEach((e => e.enterCallbacks = {})), (l = tc(s, "beforeRouteEnter", e, t)).push(i), ic(l)))).then((() => {
                for (let n of (l = [], r.list())) l.push(ec(n, e, t));
                return l.push(i), ic(l)
            })).catch((e => xi(e, 8) ? e : Promise.reject(e)))
        }

        function y(e, t, l) {
            for (let n of s.list()) n(e, t, l)
        }

        function w(e, t, l, n, o) {
            let r = h(e, t);
            if (r) return r;
            let s = t === mi,
                c = Fr ? history.state : {};
            l && (n || s ? a.replace(e.fullPath, zr({
                scroll: s && c && c.scroll
            }, o)) : a.push(e.fullPath, o)), i.value = e, T(e, t, l, s), A()
        }
        let k, P, _ = Qi(),
            S = Qi();

        function C(e) {
            return A(e), S.list().forEach((t => t(e))), Promise.reject(e)
        }

        function A(e) {
            P || (P = !0, k = a.listen(((e, t, l) => {
                var n, o;
                let r = f(e),
                    s = g(r);
                if (s) return void b(zr(s, {
                    replace: !0
                }), r).catch(Hr);
                c = r;
                let u = i.value;
                Fr && (n = ri(u.fullPath, l.delta), o = si(), ii.set(n, o)), x(r, u).catch((e => xi(e, 12) ? e : xi(e, 2) ? (b(e.to, r).catch(Hr), Promise.reject()) : (l.delta && a.go(-l.delta, !1), C(e)))).then((e => {
                    (e = e || w(r, u, !1)) && l.delta && a.go(-l.delta, !1), y(r, u, e)
                })).catch(Hr)
            })), _.list().forEach((([t, l]) => e ? l(e) : t())), _.reset())
        }

        function T(t, l, n, a) {
            let {
                scrollBehavior: o
            } = e;
            if (!Fr || !o) return Promise.resolve();
            let r = !n && function (e) {
                let t = ii.get(e);
                return ii.delete(e), t
            }(ri(t.fullPath, 0)) || (a || !n) && history.state && history.state.scroll || null;
            return Lt().then((() => o(t, l, r))).then((e => e && oi(e))).catch(C)
        }
        let R, E = e => a.go(e),
            L = new Set;
        return {
            currentRoute: i,
            addRoute: function (e, l) {
                let n, a;
                return fi(e) ? (n = t.getRecordMatcher(e), a = l) : a = e, t.addRoute(a, n)
            },
            removeRoute: function (e) {
                let l = t.getRecordMatcher(e);
                l && t.removeRoute(l)
            },
            hasRoute: function (e) {
                return !!t.getRecordMatcher(e)
            },
            getRoutes: function () {
                return t.getRoutes().map((e => e.record))
            },
            resolve: f,
            options: e,
            push: function (e) {
                return b(e)
            },
            replace: function (e) {
                return b(zr(m(e), {
                    replace: !0
                }))
            },
            go: E,
            back: () => E(-1),
            forward: () => E(1),
            beforeEach: o.add,
            beforeResolve: r.add,
            afterEach: s.add,
            onError: S.add,
            isReady: function () {
                return P && i.value !== mi ? Promise.resolve() : new Promise(((e, t) => {
                    _.add([e, t])
                }))
            },
            install(e) {
                e.component("RouterLink", lc), e.component("RouterView", rc), e.config.globalProperties.$router = this, Object.defineProperty(e.config.globalProperties, "$route", {
                    get: () => ut(i)
                }), Fr && !R && i.value === mi && (R = !0, b(a.location).catch((e => { })));
                let t = {};
                for (let e in mi) t[e] = da((() => i.value[e]));
                e.provide(Ur, this), e.provide($r, Ze(t)), e.provide(jr, i);
                let l = e.unmount;
                L.add(e), e.unmount = function () {
                    L.delete(e), L.size < 1 && (k(), i.value = mi, R = !1, P = !1), l()
                }
            }
        }
    }({
        history: (0 > (MO = location.host ? MO || location.pathname + location.search : "").indexOf("#") && (MO += "#"), pi(MO)),
        routes: IO
    });
OO.afterEach((e => So.pusher.emit("Route:afterEach", e)));
var VO = OO;
const DO = () => VO.currentRoute.value.path,
    NO = new Map;
for (let [e, t] of (NO.set("GPS", (({
    location: [e, t]
}) => {
    So.client.SetNewWaypoint(e, t), So.addNotification("gps", "GPS", "O destino foi marcado em seu GPS")
})), NO.set("WHATSAPP_MESSAGE", (({
    sender: e,
    group: t,
    content: l,
    image: n,
    location: a
}) => {
    if (e != So.identity.phone) {
        let o = Bs(e),
            r = n ? "📷 Foto" : a ? "🌎 Localização" : l;
        r.match(/(http)?s?:?(\/\/[^"']*\.(?:webm|ogg))/) ? r = "🔊 Áudio" : r.length > 40 && (r = r.substr(0, 40) + "..."), t && DO() != `/whatsapp/group${t.id}` ? So.addNotification("whatsapp", t.name, `<b>${o}:</b> ${r}`) : t || DO() == `/whatsapp/${e}` || So.addNotification("whatsapp", o, r)
    }
})), NO.set("WHATSAPP_GROUP_KICK", (({
    name: e
}) => So.addNotification("whatsapp", e, "Você foi removido do grupo"))), NO.set("WHATSAPP_GROUP_DESTROY", (({
    name: e
}) => So.addNotification("whatsapp", e, "O grupo foi excluído"))), NO.set("INSTAGRAM_NOTIFY", (e => So.addNotification("instagram", Zs("instagram"), zs(e)))), NO.set("PAYPAL", (({
    sender: e,
    value: t
}) => {
    let l = Bs(e);
    So.addNotification("paypal", "PayPal", `<b class="text-black">${l}</b> transferiu <b class="text-black">${js(t)}</b> para sua conta`)
})), NO.set("BANK", (({
    sender: e,
    value: t
}) => {
    let l = Bs(e);
    So.addNotification("bank", Zs("bank"), `<b class="text-black">${l}</b> transferiu <b class="text-black">${js(t)}</b> para sua conta`)
})), NO.set("BANK_NOTIFY", (({
    title: e,
    subtitle: t
}) => So.addNotification("bank", e, t))), NO.set("BANK_INVOICE", (({
    value: e
}) => So.addNotification("bank", "Fatura recebida", `Você recebeu uma fatura no valor de ${js(e)}`))), NO.set("BANK_INVOICE_RECEIPT", (({
    value: e,
    name: t
}) => So.addNotification("bank", `${t} pagou uma fatura`, `Foram creditados ${js(e)} em sua conta`))), NO.set("TINDER_MESSAGE", (({
    sender: e,
    sender_name: t,
    content: l,
    sender_uid: n
}) => {
    n != So.identity.user_id && DO() != `/tinder/chats/${e}` && So.addNotification("tinder", t, l)
})), NO.set("TINDER_MATCH", (({
    profile: {
        name: e
    }
}) => So.addNotification("tinder", "Match!", `Você agora tem um match com ${e}! <i class="fas fa-heart text-red-500"></i>`))), NO.set("TWITTER_NOTIFY", (e => {
    let [t, l] = Array.isArray(e) ? e : [null, e];
    So.addNotification("twitter", null != t ? t : Zs("twitter"), l)
})), NO.set("TOR_NOTIFY", (e => {
    let [t, l] = Array.isArray(e) ? e : [null, e];
    So.addNotification("tor", null != t ? t : Zs("tor"), l)
})), NO.set("TOR_MESSAGE", (e => {
    let t = e.channel.startsWith("dm:");
    if ("geral" != e.channel && e.sender != eb.id && DO() !== "/tor/" + (t ? e.sender : e.channel)) {
        let l = e.location ? "🌎 Localização" : e.image ? "📷 Foto" : e.content;
        So.addNotification("tor", t ? eb.getNickname(e.sender) : "#" + e.channel, l)
    }
})), NO.set("WEAZEL", (e => So.addNotification("weazel", e.title, e.description))), NO.set("CUSTOM_NOTIFY", (({
    app: e,
    title: t,
    subtitle: l
}) => {
    So.addNotification(e, t, l)
})), NO.set("SMS", (e => {
    let {
        sender: t,
        content: l,
        image: n,
        location: a
    } = e;
    if (null != e.created_at || (e.created_at = Math.floor(Date.now() / 1e3)), t in So.messages ? So.messages[t].push(e) > 100 && So.messages[t].shift() : So.messages[t] = [e], So.hasNotificationFor("sms") && DO() != "/sms/" + t) {
        let e = l.substr(0, 40);
        l.length > 40 && (e += "..."), So.addNotification("sms", Bs(t), n ? "📷 Foto" : a ? "🌎 Localização" : e)
    }
})), NO.entries())) So.pusher.on(e, (l => {
    let n = e.split("_")[0].toLowerCase();
    (So.hasNotificationFor(n) || "sms" === n) && t(l)
}));
var UO = "\nAddEventHandler('onResourceStop', function (name)\n  if name == GetCurrentResourceName() and IsNuiOpen then\n    SetNuiFocus(false)\n  end\nend)\n\nfunction src.exports(script, method, ...)\n  local o = exports[script]\n  o[method](o, ...)\nend\n\nfunction src.takePhoto(onlySelfie)\n  return TakePhotoAndUpload(onlySelfie)\nend\n\nfunction src.getLocation()\n  local c = GetEntityCoords(PlayerPedId())\n  return {c.x,c.y,c.z}\nend\n\nfunction src.setInput(b)\n  SetNuiFocusKeepInput(b)\nend\n\nsrc.SetNewWaypoint = SetNewWaypoint\n\nfunction src.getClock()\n  local hours = GetClockHours()\n  local minutes = GetClockMinutes()\n  if hours < 10 then hours = '0'..hours end\n  if minutes < 10 then minutes = '0'..minutes end\n  \n  return { hours=hours, minutes=minutes }\nend\n\nfunction src.isAlive()\n  return GetEntityHealth(PlayerPedId()) > (MinimumHealth or 101)\nend\n\nfunction src.setState(key, value)\n  LocalPlayer.state[key] = value\nend\n\nCitizen.CreateThread(function()\n  while true do\n    TriggerNuiEvent('pusher', 'TIME', src.getClock())\n    Wait(1000)\n  end\nend)\n\nfunction TriggerNuiEvent(event, ...)\n  local args = {...}\n  SendNUIMessage({ event=event,args=args })\nend\n\nRegisterNetEvent('smartphone:pusher', function(type, subject)\n  TriggerNuiEvent('pusher', type, subject)\nend)\n\nRegisterCommand('+smartphone-fix', function()\n  SetNuiFocus(IsNuiOpen, IsNuiOpen)\nend)\n\nfunction requestSync(name, ...)\n  local p = promise.new()\n  requestToBackend(name, {...}, function(res)\n    p:resolve(res)\n  end)\n  return Citizen.Await(p)\nend\n\nfunction forceOpen()\n  if not IsNuiOpen then\n    if (GetEntityHealth(PlayerPedId()) > (MinimumHealth or 101) or CanUseDead) and not LocalPlayer.state.disablePhone then\n      local res = requestSync('checkPhone')\n      if requestSync('checkPhone') then\n        src.open()\n      else\n        NoPhoneCallback()\n      end\n    end\n  else\n    SetNuiFocus(true, true)\n  end\nend\n\nexports('forceOpen', forceOpen)\n\nexports('closeSmartphone', function()\n  TriggerNuiEvent('close')\nend)\n\nexports('close', function()\n  TriggerNuiEvent('close')\nend)\n\nexports('open', src.open)\n\nRegisterCommand('bindSmartphone', function()\n  if (not PhoneKey or PhoneKey == 'k') and not IsControlJustPressed(0, 311) then return end\n  if IsControlPressed(0, 176) or IsControlPressed(0, 25) then return end\n\n  forceOpen()\nend)\n\nRegisterKeyMapping('bindSmartphone', 'Open the smartphone', 'keyboard', _G.PhoneKey or 'k')\n\nDisabledKeys = { 24, 25, 140, 199 }\n\nfunction disarmPlayer()\n\tif DoNotDisarm then\n\t\treturn\n\tend\n\tSetCurrentPedWeapon(PlayerPedId(), GetHashKey(\"WEAPON_UNARMED\"), true)\nend\n\nCitizen.CreateThread(function()\n  while true do\n    local idle = 0\n\n    if IsNuiOpen then\n\t\t\tdisarmPlayer()\n      for k,v in pairs(DisabledKeys) do\n        DisableControlAction(0, v, true)\n      end\n\n      local ped = PlayerPedId()\n\n      if not CanUseDead and (GetEntityHealth(ped) < MinimumHealth or IsPedRagdoll(ped)) then\n        src.close()\n        TriggerNuiEvent('pusher', 'SET_VISIBLE', false)\n        TriggerNuiEvent('pusher', 'FORCE_LEAVE_CALL', true)\n        src.playAnim(false)\n        tryDeleteProp()\n      end\n    else idle = 1000 end\n\n    Wait(idle)\n  end\nend)\n\nif not NoPhoneCallback then\n  _G.NoPhoneCallback = function()\n    if GetResourceMetadata('vrp', 'creative_network') then\n       TriggerEvent('Notify', 'Negado', 'Você não tem <b>CELULAR</b>', 'vermelho', 3000)\n    else\n      TriggerEvent('Notify', 'negado', 'Você não tem <b>CELULAR</b>')\n    end\n  end\nend\n\nRegisterNUICallback('keydown', function(data, cb)\n  TriggerNuiEvent('pusher', 'keydown', data.key or data)\n  cb('ok')\nend)\n\nRegisterNUICallback('setDark', function(data, cb)\n  TriggerNuiEvent('pusher', 'setDark', data)\n  cb('ok')\nend)\n\nRegisterNUICallback('prompt', function(data, cb)\n  TriggerNuiEvent('pusher', 'prompt', data)\n  src.fPrompt = cb\nend)\n\nRegisterNUICallback('confirm', function(data, cb)\n  TriggerNuiEvent('pusher', 'confirm', data)\n  src.fConfirm = cb\nend)\n\nRegisterNUICallback('alert', function(data, cb)\n  TriggerNuiEvent('pusher', 'alert', data)\n  cb('ok')\nend)\n\nfunction createSMS(sender, content, attachments)\n  local atype = type(attachments)\n  TriggerNuiEvent('pusher', 'SMS', {\n    sender = sender,\n    content = content,\n    image = (atype == 'string') and attachments or nil,\n    location = (atype == 'table') and attachments or nil\n  })\nend\n\nRegisterNetEvent('smartphone:createBankConfirm', function(html, id, timeout)\n  TriggerNuiEvent('pusher', 'createCustomConfirm', { html = html, timeout = timeout })\n  \n  src.fCustomConfirm = function(answer)\n    TriggerServerEvent('bank:confirm', id, answer)\n  end\nend)\n\nexports('createSMS', createSMS)\nRegisterNetEvent('smartphone:createSMS', createSMS)\n\nexports('createDispatch', function(number, text)\n  local cds = src.getLocation()\n  return requestSync('service_request', number, text, cds)\nend)\n\nexports('callPlayer', function(phone)\n  TriggerNuiEvent('pusher', 'CALL_TO', phone)\nend)\n\nRegisterNetEvent('smartphone:exports', function(script, method, ...)\n  local e = exports[script]\n  e[method](e, ...)\nend)\n",
    $O = "\nfunction CellFrontCamActivate(activate)\n  return Citizen.InvokeNative(0x2491A93618B7D838, activate)\nend\n\nScreenshotCallback = nil\n\nRegisterNUICallback('screenshot', function(data, cb)\n  if ScreenshotCallback then\n    ScreenshotCallback()\n    ScreenshotCallback = nil\n  end\n  cb({})\nend)\n\nBlockCameraKeys = false\n\nfunction TakePhotoAndUpload(onlySelfie)\n  local selfie = not not onlySelfie\n\n  if _G.Samba then executeVRP('removeObjects') end\n\n  ClearPedSecondaryTask(PlayerPedId())\n  ClearPedTasks(PlayerPedId())\n\n  CreateMobilePhone(1)\n  CellCamActivate(true, true)\n\n  isUsingCamera = true\n\n  if selfie then\n    CellFrontCamActivate(true)\n  end\n\n  Wait(500)\n\n  local p = promise.new()\n\n  Citizen.CreateThread(function()\n    local click = false\n\n    while true do\n      HideHudAndRadarThisFrame()\n      if IsControlJustReleased(0, 27) and not onlySelfie then\n        selfie = not selfie\n        CellFrontCamActivate(selfie)\n        Wait(500)\n      elseif IsControlJustReleased(0, 177) then\n        p:resolve(false)\n        break\n      elseif IsControlJustReleased(0, 176) or IsControlJustReleased(0, 38) or IsControlJustReleased(0, 201) then\n        TriggerNuiEvent('pusher', 'CONFIRM_SCREENSHOT')\n        ScreenshotCallback = function()\n          p:resolve(true)\n        end\n        break\n      end\n      Wait(0)\n    end\n  end)\n\n  p:next(function(b)\n    DestroyMobilePhone()\n    CellCamActivate(false, false)\n    isUsingCamera = false\n    if _G.Samba then PhonePlayText() end\n    return b\n  end)\n\n  return Citizen.Await(p)\nend",
    jO = '\n\nInVideoCall = false\nVC_FirstPerson = true\nVC_Camera = false\n\nfunction DESTROY_VC_CAMERA()\n  if VC_Camera then\n    DestroyMobilePhone()\n    CellCamActivate(false, false)\n    VC_Camera = false\n  end\nend\n\nfunction SetInVideoCall(bool)\n  if Samba then\n    LocalPlayer["state"]["Active"] = not bool\n  end\n  if bool ~= InVideoCall then\n    InVideoCall = bool\n    if not bool then\n      VC_FirstPerson = true\n      SetFollowPedCamViewMode(1)\n    else\n      CreateThread(function()\n        while InVideoCall do\n          DisableControlAction(0, 0, true)\n          if IsControlJustPressed(1, 27) or (IsPedInAnyVehicle(PlayerPedId()) and not VC_FirstPerson) then\n            VC_FirstPerson = not VC_FirstPerson\n      \n            if VC_FirstPerson then\n              DESTROY_VC_CAMERA()\n            elseif not VC_Camera then\n              VC_Camera = true\n              CreateMobilePhone(1)\n              CellCamActivate(true, true)\n              CellFrontCamActivate(true)\n            end\n          elseif VC_FirstPerson then\n            SetFollowPedCamViewMode(4)\n            SetFollowVehicleCamViewMode(4)\n          end\n          Wait(0)\n        end\n        DESTROY_VC_CAMERA()\n      end)\n    end\n  end\nend\n\nsrc.SetInVideoCall = SetInVideoCall\n',
    FO = "\nfunction executeVRP(name, ...)\n\tTriggerEvent('vRP:proxy', name, {...}, 'smartphone', -1)\nend\n\nlocal function log(...)\n  if Debug then\n    print(...)\n  end\nend\n\n_G.MinimumHealth = _G.MinimumHealth or 101\n\nisUsingCamera = false\ncurrentAnim = false\ncurrentProp = false\n\nif not phoneModel then\n  if Samba then\n    phoneModel = \"prop_npc_phone_02\"\n  else\n    phoneModel = \"prop_amb_phone\"\n  end\nend\n\nfunction playAnim(anim)\n  dict = inCar() and \"anim@cellphone@in_car@ps\" or \"cellphone@\"\n  if IsEntityPlayingAnim(PlayerPedId(), dict, anim, 3) then\n    return\n  end\n\n  RequestAnimDict(dict)\n  repeat Wait(10)\n  until HasAnimDictLoaded(dict)\n  TaskPlayAnim(PlayerPedId(), dict, anim, 3.0, 3.0, -1, 50, 1, 0, 0, 0)\n  currentAnim = { dict, anim }\nend\n\nfunction stopAnim()\n  if currentAnim then\n    local dict, anim = table.unpack(currentAnim)\n    StopAnimTask(PlayerPedId(), dict, anim, 1.1)\n  end\n  currentAnim = false\nend\n\nlocal propLock = false\n\nfunction setPhoneProp(bool)\n\tif DisableProp or Samba then\n\t\treturn\n\tend\n\n  local startedAt = GetGameTimer()\n\n  log('Awaiting propLock')\n\n  repeat Wait(0)\n  until not propLock\n\n  log('propLock done')\n\n  propLock = true\n\n  if bool then\n    disarmPlayer()\n\n    if DoesEntityExist(currentProp) then\n      tryDeleteProp()\n    end\n\n    local ped = PlayerPedId()\n\n    log('Requesting model')\n\n    RequestModel(phoneModel)\n    repeat Wait(50)\n    until HasModelLoaded(phoneModel)\n\n    log('Requesting 0x00029a')\n\n    local mode = MODE_CACHE or requestSync('0x00029a')\n\n    log('Mode is ', mode)\n\n    if mode == 'auto' then\n      MODE_CACHE = 'auto'\n      local x, y, z = table.unpack(GetEntityCoords(ped))\n      currentProp = CreateObject(phoneModel, x, y, z-1.5, true, true, false)\n    elseif mode then\n      propLock = false\n      currentProp = NetToEnt(mode)\n    else\n      propLock = false\n      return SetModelAsNoLongerNeeded(phoneModel)\n    end\n    SetEntityCollision(currentProp, false, false)\n    AttachEntityToEntity(currentProp, ped, GetPedBoneIndex(ped, 28422),0.0,0.0,0.0,0.0,0.0,0.0,false,false,false,false,2,true)\n    SetModelAsNoLongerNeeded(phoneModel)\n  elseif currentProp then\n    tryDeleteProp()\n    currentProp = false\n  end\n  propLock = false\nend\n\nfunction inCar()\n  return IsPedInAnyVehicle(PlayerPedId())\nend\n\nanims = {}\n\nfunction anims.close()\n  setPhoneProp(false)\n  Wait(1000)\n  stopAnim()\nend\n\nfunction anims.toText()\n  if Samba then\n    return executeVRP(\"createObjects\", \"cellphone@\", \"cellphone_text_in\", phoneModel, 50, 28422)\n  end\n  playAnim(\"cellphone_text_in\")\nend\n\nfunction anims.toCall()\n  if Samba then\n\t\treturn executeVRP(\"createObjects\", \"cellphone@\", \"cellphone_text_to_call\", phoneModel, 50, 28422)\n  end\n  playAnim(\"cellphone_text_to_call\")\nend\n\nfunction anims.callToText()\n  if Samba then\n    return executeVRP(\"createObjects\", \"cellphone@\", \"cellphone_call_to_text\", phoneModel, 50, 28422)\n  end\n  playAnim(\"cellphone_call_to_text\")\nend\n\nfunction anims.fromCall()\n  if Samba then\n    return executeVRP('removeObjects', 'one')\n  end\n  playAnim(inCar() and \"cellphone_horizontal_exit\" or \"cellphone_call_out\")\n  anims.close()\nend\n\nfunction anims.fromText()\n  if Samba then\n    return executeVRP('removeObjects', 'one')\n  end\n  playAnim(\"cellphone_text_out\")\n  anims.close()\nend\n\nlocal currentLoop\n\nfunction src.playAnim(anim, loop)\n  if type(anim) == 'string' and anim:match('to') then\n    setPhoneProp(true)\n  end\n\n\tif loop and currentLoop ~= anim and not Samba then\n\t\tcurrentLoop = anim\n\n\t\tCreateThread(function()\n\t\t\twhile currentLoop == anim and GetEntityHealth(PlayerPedId()) >= MinimumHealth and not isUsingCamera and not InVideoCall do\n\t\t\t\tpcall(anims[anim])\n\t\t\t\tWait(250)\n\t\t\tend\n\t\tend)\n\telseif anim then\n\t\tcurrentLoop = false\n\t\tpcall(anims[anim])\n  elseif anim == false then\n    if Samba then\n      return executeVRP('removeObjects', 'one')\n    end\n    currentLoop = false\n    stopAnim()\n  end\nend\n\nfunction tryDeleteProp()\n  log('tryDeleteProp->start')\n  while DoesEntityExist(currentProp) do\n    NetworkRequestControlOfEntity(currentProp)\n    DeleteEntity(currentProp)\n    Wait(0)\n  end\n  log('tryDeleteProp->end')\nend\n\nAddEventHandler('onResourceStop', function(name)\n  if name == GetCurrentResourceName() then\n\t\tif currentProp then\n\t\t\tsrc.playAnim(false)\n      tryDeleteProp()\n\t\tend\n  end\nend)\n";
if (!So.localhost) {
    let e = null != (t = globalThis.safeEval) ? t : "eval",
        l = [UO, $O, jO, FO].map((t => So.client[e](t)));
    Promise.all(l).then((() => {
        So.client.__clear(), globalThis.safeEval = null
    }))
}
const zO = {
    components: {
        Alert: To,
        Confirm: Vo,
        Prompt: Yo,
        Menu: or,
        PhotoEditor: dr,
        VideoRecorder: Cr,
        CustomConfirm: Bo
    },
    setup() {
        let e = cc(),
            t = rt(!0),
            {
                visible: l,
                notifications: n,
                currentCall: a,
                identity: o
            } = So,
            r = rt(),
            s = rt(),
            i = rt(),
            c = rt(),
            u = co(),
            d = da((() => So.settings.case || "iphonex")),
            p = da((() => So.settings.isAndroid)),
            f = da((() => So.clock.value.hours + ":" + So.clock.value.minutes)),
            m = da((() => {
                var e;
                return null != (e = So.settings.notificationsBottom) ? e : "18.5vh"
            })),
            h = rt(),
            g = rt(),
            b = rt(!1),
            v = 0;
        if (So.localhost) {
            l.value = !0;
            let e = document.querySelector("body");
            e.style.backgroundColor = "blue", e.style.backgroundSize = "100vw 100vh"
        }
        let x = e => (t, l = 255) => new Promise((n => {
            if (t.includes("executeVRP")) return n("true");
            e.value = {
                title: t,
                max: l,
                callback: function (t) {
                    n(t), e.value = null
                }
            }
        }));
        $l("videoCamera", (() => new Promise(((e, t) => {
            g.value = [e, t]
        })).finally((() => g.value = null)))), $l("alert", So.alert = e => r.value = e), $l("prompt", So.prompt = x(i)), $l("confirm", So.confirm = x(s)), $l("setDark", (e => t.value = null != e ? e : So.darkTheme.value)), $l("setLoading", (e => b.value = e)), So.fetchSettings(), So.localhost && So.created();
        let y = rt(!1);
        Tn(y, (e => So.client.setInput(e)));
        let w = {
            open() {
                var e;
                v = Date.now() + 500, l.value = !0, (null == (e = a.value) ? void 0 : e.accepted) || So.client.playAnim("toText", !0), So.client.setState("usingPhone", !0)
            },
            async close() {
                var t;
                ["/call", "/"].includes(e.currentRoute.value.path) || e.push("/home"), [r, i, c, s, g].forEach((e => e.value = null)), l.value = !1, y.value = !1, (null == (t = a.value) ? void 0 : t.accepted) || So.client.playAnim("fromText"), So.client.close(), So.client.setState("usingPhone", !1)
            },
            pusher(e, t) {
                So.pusher.emit(e, t)
            }
        };

        function k(t) {
            if (So.localhost && "k" === t) return void (l.value = !0);
            if (v > Date.now() || "Escape" != t && "Backspace" != t || b.value) return;
            if (h.value) return h.value = null;
            let n = "Escape" == t;
            go().state.request.value = null;
            let a = e.currentRoute.value.path;
            if ("Backspace" === t && !document.querySelector("input:focus,textarea:focus"))
                if ("/home" == a) n = !0;
                else if (g.value) g.value = null;
                else if ("/call" != a && "/" != a) return [r, s, i].forEach((e => e.value = null)), e.back();
            n && w.close()
        }
        return So.pusher.on("REDIRECT", (t => {
            So.visible.value || So.client.open(), "/home" != e.currentRoute.value.path && e.replace("/home"), e.push(t)
        })), So.pusher.on("CALL_REQUEST", (async t => {
            So.storage.doNotDisturb.value || await So.client.isAlive() && (t.contact = So.contacts.value.find((e => e.phone == t.initiator.phone)) || {
                name: t.isAnonymous ? "Anônimo" : t.initiator.phone,
                phone: t.initiator.phone
            }, a.value = t, l.value || So.addNotification(t.isVideo ? "facetime" : "phone", t.isVideo ? "Chamada de Vídeo" : "Chamada de Voz", t.contact.name + " está te ligando"), e.push("/call"))
        })), So.pusher.on("CALL_TO", ((t, l = !1) => {
            if (t == So.identity.phone) return r.value = "Você não pode ligar para si mesmo";
            let n = So.storage.anonymousCall.value;
            So.backend.createPhoneCall(t, l, n).then((l => {
                l.error ? r.value = l.error : (l.contact = {
                    name: Bs(t),
                    phone: t
                }, l.owner = !0, a.value = l, e.push("/call"), So.visible.value || So.client.open())
            }))
        })), So.pusher.on("SET_VISIBLE", (e => l.value = e)), So.pusher.on("REFRESH", (() => {
            e.replace("/"), So.identity.phone = null, So.fetchSettings(), So.backend.ig_logout()
        })), So.pusher.on("SERVICE_RESPONSE", (() => r.value = "Seu chamado foi atendido")), So.pusher.on("SERVICE_REJECT", (() => r.value = "Seu chamado foi rejeitado")), So.pusher.on("PHONE_CHANGE", (({
            from: e,
            to: t
        }) => {
            var l;
            So.contacts.value.forEach((l => {
                l.phone == e && (l.phone = t)
            })), (null == (l = So.identity) ? void 0 : l.phone) == e && (So.identity.phone = t)
        })), So.pusher.on("UPLOAD_SCREENSHOT", (({
            url: e,
            body: t = {}
        }) => {
            let l = new FormData;
            for (let e in t) l.set(e, t[e]);
            ro.start(), setTimeout((async () => {
                let t = await ro.createBlob();
                l.append("file", t, Date.now() + ".jpg"), fetch(e, {
                    method: "POST",
                    body: l
                }), ro.stop()
            }), 200)
        })), globalThis.pusher = So.pusher, So.localhost && (globalThis.store = So), $l("useImageFocus", (e => h.value = e)), $l("setKeepInput", (e => y.value = e)), So.captureMicrophone(), window.addEventListener("message", (({
            data: {
                event: e,
                args: t
            }
        }) => {
            var l;
            null == (l = w[e]) || l.call(w, ...t)
        })), window.addEventListener("contextmenu", (() => {
            y.value = !y.value
        })), window.addEventListener("keydown", (({
            key: e
        }) => k(e))), So.pusher.on("keydown", k), So.pusher.on("setDark", (e => t.value = e)), So.pusher.on("prompt", (e => x(i)(e).then((e => So.client.fPrompt(e))))), So.pusher.on("confirm", (e => x(s)(e).then((e => So.client.fConfirm(e))))), So.pusher.on("alert", (e => r.value = e)), {
            visible: l,
            loading: b,
            android: p,
            clock: f,
            alert: r,
            confirm: s,
            prompt: i,
            dark: t,
            menu: c,
            paint: u,
            notifications: n,
            call: a,
            identity: o,
            phonecase: d,
            imageFocused: h,
            notificationsBottom: m,
            recording: g
        }
    }
},
    BO = sn("data-v-16768605");
ln("data-v-16768605");
const HO = {
    key: 0,
    class: "notification select-none"
},
    qO = {
        class: "flex flex-col ml-3"
    },
    GO = Pl("h1", null, "Chamada em andamento", -1),
    WO = {
        class: "flex flex-col ml-3"
    },
    KO = {
        key: 0,
        class: "fixed z-50 w-screen h-screen flex flex-col flex-center select-none",
        style: {
            background: "rgba(0,0,0,0.8)"
        }
    },
    JO = {
        class: "relative"
    },
    XO = {
        class: "bg-gray-900 h-16 rounded-t-3xl"
    },
    YO = Pl("i", {
        class: "fas fa-times text-white text-3xl"
    }, null, -1),
    ZO = {
        class: "marvel-device iphone-x"
    },
    QO = {
        class: "screen"
    },
    eM = {
        class: "absolute left-8 z-10"
    },
    tM = {
        class: "font-bold text-xl"
    },
    nM = {
        key: 0,
        class: "relative left-1.5 bottom-0 far fa-location-arrow text-sm"
    },
    lM = {
        class: "absolute right-8 top-5 z-10 flex items-center text-lg"
    },
    aM = Pl("i", {
        class: "fas fa-signal-alt pr-2"
    }, null, -1),
    sM = Pl("i", {
        class: "fas fa-wifi pr-2"
    }, null, -1),
    oM = {
        key: 0,
        class: "far fa-battery-full pr-2"
    },
    rM = {
        key: 1,
        class: "absolute inset-0 bg-black bg-opacity-20 flex flex-center z-10"
    },
    iM = Pl("i", {
        class: "fas fa-spinner-third animate-spin text-5xl text-white"
    }, null, -1);
an();
const cM = BO(((e, t, l, n, a, o) => {
    let r = dl("Alert"),
        s = dl("Prompt"),
        i = dl("Confirm"),
        c = dl("custom-confirm"),
        u = dl("Menu"),
        d = dl("PhotoEditor"),
        p = dl("VideoRecorder"),
        f = dl("router-view");
    return wl(), _l(bl, null, [Pl(Ja, {
        tag: "ul",
        "enter-from-class": "opacity-0 transform translate-y-16",
        "enter-to-class": "opacity-100",
        "leave-from-class": "opacity-100",
        "leave-to-class": "opacity-0 transform translate-x-96",
        "enter-active-class": "transition duration-1000",
        "leave-active-class": "transition duration-1000",
        class: "notifications",
        style: {
            right: n.visible ? "49rem" : "5rem",
            bottom: n.visible ? "6.5rem" : n.notificationsBottom
        }
    }, {
        default: BO((() => [n.call && n.call.accepted && !n.visible ? (wl(), _l("li", HO, [Pl("img", {
            src: e.$asset("/apps/phone.png"),
            class: "w-8 rounded-xl"
        }, null, 8, ["src"]), Pl("div", qO, [GO, Pl("span", null, g(n.call.contact.name), 1)])])) : Ml("", !0), (wl(!0), _l(bl, null, fa(n.notifications, (e => (wl(), _l("li", {
            class: "notification select-none",
            key: e.id
        }, [Pl("img", {
            src: e.icon,
            class: "w-8 rounded-xl"
        }, null, 8, ["src"]), Pl("div", WO, [Pl("h1", null, g(e.title), 1), Pl("span", {
            innerHTML: e.subtitle
        }, null, 8, ["innerHTML"])])])))), 128))])),
        _: 1
    }, 8, ["style"]), n.imageFocused ? (wl(), _l("div", KO, [Pl("div", JO, [Pl("div", XO, [Pl("button", {
        onClick: t[1] || (t[1] = e => n.imageFocused = null),
        class: "block ml-auto p-3 mr-2"
    }, [YO])]), Pl("img", {
        style: {
            "max-height": "80vh",
            "max-width": "50vw"
        },
        src: n.imageFocused
    }, null, 8, ["src"])])])) : Ml("", !0), Pl(Oa, {
        name: "phone"
    }, {
        default: BO((() => [Zn(Pl("div", ZO, [Pl("img", {
            class: "case",
            type: n.phonecase,
            src: e.$asset(`/stock/cases/${n.phonecase}.png`)
        }, null, 8, ["type", "src"]), Pl("div", QO, ["/boot" != e.$route.path ? (wl(), _l("div", {
            key: 0,
            class: {
                "text-white": n.dark,
                "text-black": !n.dark
            }
        }, [Pl("div", eM, [Pl("span", tM, g(n.clock), 1), n.android ? Ml("", !0) : (wl(), _l("i", nM))]), Pl("div", lM, [aM, sM, n.android ? Ml("", !0) : (wl(), _l("i", oM))])], 2)) : Ml("", !0), n.loading ? (wl(), _l("div", rM, [iM])) : Ml("", !0), n.alert ? (wl(), _l(r, {
            key: 2,
            content: n.alert
        }, null, 8, ["content"])) : Ml("", !0), n.prompt ? (wl(), _l(s, Ul({
            key: 3
        }, n.prompt), null, 16)) : Ml("", !0), n.confirm ? (wl(), _l(i, {
            key: 4,
            title: n.confirm.title,
            callback: n.confirm.callback
        }, null, 8, ["title", "callback"])) : Ml("", !0), Pl(c), Pl(Oa, {
            name: "menu"
        }, {
            default: BO((() => [Pl(u)])),
            _: 1
        }), n.paint.original ? (wl(), _l(d, {
            key: 5
        })) : Ml("", !0), n.recording ? (wl(), _l(p, {
            key: 6,
            callback: n.recording
        }, null, 8, ["callback"])) : Ml("", !0), Pl(f, {
            key: e.$route.fullPath
        }, {
            default: BO((({
                Component: e
            }) => [(wl(), _l(Fn, {
                include: "WhatsApp"
            }, [Zn((wl(), _l(fl(e), null, null, 512)), [
                [ds, !n.paint.original && !n.recording]
            ])], 1024))])),
            _: 1
        })])], 512), [
            [ds, n.visible]
        ])])),
        _: 1
    })], 64)
}));
zO.render = cM, zO.__scopeId = "data-v-16768605";
const uM = {
    props: {
        modelValue: {
            required: !0
        }
    },
    setup: () => ({
        android: So.settings.isAndroid
    })
},
    dM = sn("data-v-e073d7c8");
ln("data-v-e073d7c8");
const pM = Pl("i", null, null, -1);
an();
const fM = dM(((e, t, l, n, a, o) => (wl(), _l("label", {
    class: "form-switch",
    android: n.android
}, [Pl("input", {
    type: "checkbox",
    checked: l.modelValue,
    onInput: t[1] || (t[1] = t => e.$emit("update:modelValue", t.target.checked))
}, null, 40, ["checked"]), pM], 8, ["android"]))));
uM.render = fM, uM.__scopeId = "data-v-e073d7c8";
const mM = {
    props: ["white"],
    setup(e) {
        var t;
        return {
            white: null != (t = So.darkTheme.value) ? t : e.white
        }
    }
},
    hM = Ol('<div class="bar1"></div><div class="bar2"></div><div class="bar3"></div><div class="bar4"></div><div class="bar5"></div><div class="bar6"></div><div class="bar7"></div><div class="bar8"></div><div class="bar9"></div><div class="bar10"></div><div class="bar11"></div><div class="bar12"></div>', 12);
mM.render = function (e, t, l, n, a, o) {
    return wl(), _l("div", {
        class: "loading-spinner",
        style: {
            filter: n.white && "invert(1)"
        }
    }, [hM], 4)
};
const bM = {},
    gM = {
        xmlns: "http://www.w3.org/2000/svg",
        height: "512pt",
        viewBox: "0 0 512 512",
        width: "512pt"
    },
    vM = Pl("path", {
        d: "m256 0c-141.164062 0-256 114.835938-256 256s114.835938 256 256 256 256-114.835938 256-256-114.835938-256-256-256zm0 0",
        fill: "#2196f3"
    }, null, -1),
    xM = Pl("path", {
        d: "m385.75 201.75-138.667969 138.664062c-4.160156 4.160157-9.621093 6.253907-15.082031 6.253907s-10.921875-2.09375-15.082031-6.253907l-69.332031-69.332031c-8.34375-8.339843-8.34375-21.824219 0-30.164062 8.339843-8.34375 21.820312-8.34375 30.164062 0l54.25 54.25 123.585938-123.582031c8.339843-8.34375 21.820312-8.34375 30.164062 0 8.339844 8.339843 8.339844 21.820312 0 30.164062zm0 0",
        fill: "#fafafa"
    }, null, -1);
bM.render = function (e, t) {
    return wl(), _l("svg", gM, [vM, xM])
}, globalThis.GameView = lo;
const yM = ((...e) => {
    let t = (ms || (ms = rl(fs))).createApp(...e),
        {
            mount: l
        } = t;
    return t.mount = e => {
        let n = function (e) {
            return V(e) ? document.querySelector(e) : e
        }(e);
        if (!n) return;
        let a = t._component;
        M(a) || a.render || a.template || (a.template = n.innerHTML), n.innerHTML = "";
        let o = l(n);
        return n instanceof Element && (n.removeAttribute("v-cloak"), n.setAttribute("data-v-app", "")), o
    }, t
})(zO);
yM.component("AppInput", JP), yM.component("AppSelect", XP), yM.component("AppToggle", uM), yM.component("AppLoading", mM), yM.component("AppVerified", bM), yM.use(VO), yM.config.globalProperties.$filters = Gs, yM.config.globalProperties.$asset = (e, t) => So.settings[t] || So.asset(e), Object.defineProperty(yM.config.globalProperties, "$currency", {
    get: () => So.settings.currency
}), yM.mount("#root");