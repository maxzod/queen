"use strict";(self.webpackChunkqueen=self.webpackChunkqueen||[]).push([[762],{3905:(e,t,l)=>{l.d(t,{Zo:()=>s,kt:()=>d});var r=l(7294);function a(e,t,l){return t in e?Object.defineProperty(e,t,{value:l,enumerable:!0,configurable:!0,writable:!0}):e[t]=l,e}function n(e,t){var l=Object.keys(e);if(Object.getOwnPropertySymbols){var r=Object.getOwnPropertySymbols(e);t&&(r=r.filter((function(t){return Object.getOwnPropertyDescriptor(e,t).enumerable}))),l.push.apply(l,r)}return l}function i(e){for(var t=1;t<arguments.length;t++){var l=null!=arguments[t]?arguments[t]:{};t%2?n(Object(l),!0).forEach((function(t){a(e,t,l[t])})):Object.getOwnPropertyDescriptors?Object.defineProperties(e,Object.getOwnPropertyDescriptors(l)):n(Object(l)).forEach((function(t){Object.defineProperty(e,t,Object.getOwnPropertyDescriptor(l,t))}))}return e}function o(e,t){if(null==e)return{};var l,r,a=function(e,t){if(null==e)return{};var l,r,a={},n=Object.keys(e);for(r=0;r<n.length;r++)l=n[r],t.indexOf(l)>=0||(a[l]=e[l]);return a}(e,t);if(Object.getOwnPropertySymbols){var n=Object.getOwnPropertySymbols(e);for(r=0;r<n.length;r++)l=n[r],t.indexOf(l)>=0||Object.prototype.propertyIsEnumerable.call(e,l)&&(a[l]=e[l])}return a}var u=r.createContext({}),p=function(e){var t=r.useContext(u),l=t;return e&&(l="function"==typeof e?e(t):i(i({},t),e)),l},s=function(e){var t=p(e.components);return r.createElement(u.Provider,{value:t},e.children)},k={inlineCode:"code",wrapper:function(e){var t=e.children;return r.createElement(r.Fragment,{},t)}},m=r.forwardRef((function(e,t){var l=e.components,a=e.mdxType,n=e.originalType,u=e.parentName,s=o(e,["components","mdxType","originalType","parentName"]),m=p(l),d=a,g=m["".concat(u,".").concat(d)]||m[d]||k[d]||n;return l?r.createElement(g,i(i({ref:t},s),{},{components:l})):r.createElement(g,i({ref:t},s))}));function d(e,t){var l=arguments,a=t&&t.mdxType;if("string"==typeof e||a){var n=l.length,i=new Array(n);i[0]=m;var o={};for(var u in t)hasOwnProperty.call(t,u)&&(o[u]=t[u]);o.originalType=e,o.mdxType="string"==typeof e?e:a,i[1]=o;for(var p=2;p<n;p++)i[p]=l[p];return r.createElement.apply(null,i)}return r.createElement.apply(null,l)}m.displayName="MDXCreateElement"},1715:(e,t,l)=>{l.r(t),l.d(t,{assets:()=>u,contentTitle:()=>i,default:()=>k,frontMatter:()=>n,metadata:()=>o,toc:()=>p});var r=l(7462),a=(l(7294),l(3905));const n={title:"Prefs",sidebar_position:7},i=void 0,o={unversionedId:"prefs",id:"prefs",title:"Prefs",description:"- Prefs",source:"@site/docs/7_prefs.md",sourceDirName:".",slug:"/prefs",permalink:"/queen/docs/prefs",draft:!1,editUrl:"https://github.com/FlutterQueen/queen/tree/master/docs/7_prefs.md",tags:[],version:"current",sidebarPosition:7,frontMatter:{title:"Prefs",sidebar_position:7},sidebar:"tutorialSidebar",previous:{title:"Helpers(readable)",permalink:"/queen/docs/helpers"},next:{title:"lighthouse (CLI)",permalink:"/queen/docs/cli"}},u={},p=[{value:"String",id:"string",level:2},{value:"getStringOrNull",id:"getstringornull",level:3},{value:"getStringOr",id:"getstringor",level:3},{value:"getStringOrEmpty",id:"getstringorempty",level:3},{value:"setString",id:"setstring",level:3},{value:"setStringToEmpty",id:"setstringtoempty",level:3},{value:"int",id:"int",level:2},{value:"getIntOrNull",id:"getintornull",level:3},{value:"getIntOr",id:"getintor",level:3},{value:"getIntOrZero",id:"getintorzero",level:3},{value:"setInt",id:"setint",level:3},{value:"bool",id:"bool",level:2},{value:"getBoolOrNull",id:"getboolornull",level:3},{value:"getBoolOr",id:"getboolor",level:3},{value:"getBoolOrFalse",id:"getboolorfalse",level:3},{value:"getBoolOrTrue",id:"getboolortrue",level:3},{value:"setBool",id:"setbool",level:3},{value:"Map",id:"map",level:2},{value:"getMap",id:"getmap",level:3},{value:"setMap",id:"setmap",level:3},{value:"DateTime",id:"datetime",level:2},{value:"getDateOrNull",id:"getdateornull",level:3},{value:"getDateOrNow",id:"getdateornow",level:3},{value:"setDate",id:"setdate",level:3},{value:"delete values",id:"delete-values",level:2},{value:"clear",id:"clear",level:3},{value:"remove",id:"remove",level:3},{value:"removeMany",id:"removemany",level:3},{value:"other",id:"other",level:2},{value:"find",id:"find",level:3}],s={toc:p};function k(e){let{components:t,...l}=e;return(0,a.kt)("wrapper",(0,r.Z)({},s,l,{components:t,mdxType:"MDXLayout"}),(0,a.kt)("ul",null,(0,a.kt)("li",{parentName:"ul"},(0,a.kt)("a",{parentName:"li",href:"#prefs"},"Prefs"),(0,a.kt)("ul",{parentName:"li"},(0,a.kt)("li",{parentName:"ul"},(0,a.kt)("a",{parentName:"li",href:"#string"},"String"),(0,a.kt)("ul",{parentName:"li"},(0,a.kt)("li",{parentName:"ul"},(0,a.kt)("a",{parentName:"li",href:"#getstringornull"},"getStringOrNull")),(0,a.kt)("li",{parentName:"ul"},(0,a.kt)("a",{parentName:"li",href:"#getstringor"},"getStringOr")),(0,a.kt)("li",{parentName:"ul"},(0,a.kt)("a",{parentName:"li",href:"#getstringorempty"},"getStringOrEmpty")),(0,a.kt)("li",{parentName:"ul"},(0,a.kt)("a",{parentName:"li",href:"#setstring"},"setString")),(0,a.kt)("li",{parentName:"ul"},(0,a.kt)("a",{parentName:"li",href:"#setstringtoempty"},"setStringToEmpty")))),(0,a.kt)("li",{parentName:"ul"},(0,a.kt)("a",{parentName:"li",href:"#int"},"int"),(0,a.kt)("ul",{parentName:"li"},(0,a.kt)("li",{parentName:"ul"},(0,a.kt)("a",{parentName:"li",href:"#getintornull"},"getIntOrNull")),(0,a.kt)("li",{parentName:"ul"},(0,a.kt)("a",{parentName:"li",href:"#getintor"},"getIntOr")),(0,a.kt)("li",{parentName:"ul"},(0,a.kt)("a",{parentName:"li",href:"#getintorzero"},"getIntOrZero")),(0,a.kt)("li",{parentName:"ul"},(0,a.kt)("a",{parentName:"li",href:"#setint"},"setInt")))),(0,a.kt)("li",{parentName:"ul"},(0,a.kt)("a",{parentName:"li",href:"#bool"},"bool"),(0,a.kt)("ul",{parentName:"li"},(0,a.kt)("li",{parentName:"ul"},(0,a.kt)("a",{parentName:"li",href:"#getboolornull"},"getBoolOrNull")),(0,a.kt)("li",{parentName:"ul"},(0,a.kt)("a",{parentName:"li",href:"#getboolor"},"getBoolOr")),(0,a.kt)("li",{parentName:"ul"},(0,a.kt)("a",{parentName:"li",href:"#getboolorfalse"},"getBoolOrFalse")),(0,a.kt)("li",{parentName:"ul"},(0,a.kt)("a",{parentName:"li",href:"#getboolortrue"},"getBoolOrTrue")),(0,a.kt)("li",{parentName:"ul"},(0,a.kt)("a",{parentName:"li",href:"#setbool"},"setBool")))),(0,a.kt)("li",{parentName:"ul"},(0,a.kt)("a",{parentName:"li",href:"#map"},"Map"),(0,a.kt)("ul",{parentName:"li"},(0,a.kt)("li",{parentName:"ul"},(0,a.kt)("a",{parentName:"li",href:"#getmap"},"getMap")),(0,a.kt)("li",{parentName:"ul"},(0,a.kt)("a",{parentName:"li",href:"#setmap"},"setMap")))),(0,a.kt)("li",{parentName:"ul"},(0,a.kt)("a",{parentName:"li",href:"#datetime"},"DateTime"),(0,a.kt)("ul",{parentName:"li"},(0,a.kt)("li",{parentName:"ul"},(0,a.kt)("a",{parentName:"li",href:"#getdateornull"},"getDateOrNull")),(0,a.kt)("li",{parentName:"ul"},(0,a.kt)("a",{parentName:"li",href:"#getdateornow"},"getDateOrNow")),(0,a.kt)("li",{parentName:"ul"},(0,a.kt)("a",{parentName:"li",href:"#setdate"},"setDate")))),(0,a.kt)("li",{parentName:"ul"},(0,a.kt)("a",{parentName:"li",href:"#delete-values"},"delete values"),(0,a.kt)("ul",{parentName:"li"},(0,a.kt)("li",{parentName:"ul"},(0,a.kt)("a",{parentName:"li",href:"#clear"},"clear")),(0,a.kt)("li",{parentName:"ul"},(0,a.kt)("a",{parentName:"li",href:"#remove"},"remove")),(0,a.kt)("li",{parentName:"ul"},(0,a.kt)("a",{parentName:"li",href:"#removemany"},"removeMany")))),(0,a.kt)("li",{parentName:"ul"},(0,a.kt)("a",{parentName:"li",href:"#other"},"other"),(0,a.kt)("ul",{parentName:"li"},(0,a.kt)("li",{parentName:"ul"},(0,a.kt)("a",{parentName:"li",href:"#find"},"find")))),(0,a.kt)("li",{parentName:"ul"})))),(0,a.kt)("h1",{id:"prefs"},"Prefs"),(0,a.kt)("h2",{id:"string"},"String"),(0,a.kt)("p",null,"is a wrapper for shared preferences to give you more functionalities and less code but under the hood its ",(0,a.kt)("inlineCode",{parentName:"p"},"SharedPreferences")," package"),(0,a.kt)("ul",null,(0,a.kt)("li",{parentName:"ul"},"String")),(0,a.kt)("h3",{id:"getstringornull"},"getStringOrNull"),(0,a.kt)("ul",null,(0,a.kt)("li",{parentName:"ul"},"Return ",(0,a.kt)("inlineCode",{parentName:"li"},"String")," by key if exists else return ",(0,a.kt)("inlineCode",{parentName:"li"},"null"))),(0,a.kt)("pre",null,(0,a.kt)("code",{parentName:"pre",className:"language-dart"},"String? foo  = Prefs.getStringOrNull('key');\n")),(0,a.kt)("h3",{id:"getstringor"},"getStringOr"),(0,a.kt)("ul",null,(0,a.kt)("li",{parentName:"ul"},"Return ",(0,a.kt)("inlineCode",{parentName:"li"},"String")," by key if exists else return default value")),(0,a.kt)("pre",null,(0,a.kt)("code",{parentName:"pre",className:"language-dart"},"String? foo  = Prefs.getStringOr('key','def');\n")),(0,a.kt)("h3",{id:"getstringorempty"},"getStringOrEmpty"),(0,a.kt)("ul",null,(0,a.kt)("li",{parentName:"ul"},"Return ",(0,a.kt)("inlineCode",{parentName:"li"},"String")," by key if exists else return default value")),(0,a.kt)("pre",null,(0,a.kt)("code",{parentName:"pre",className:"language-dart"},"String? foo  = Prefs.getStringOrEmpty('key');\n")),(0,a.kt)("h3",{id:"setstring"},"setString"),(0,a.kt)("ul",null,(0,a.kt)("li",{parentName:"ul"},"Set the value to given key in shared prefs")),(0,a.kt)("pre",null,(0,a.kt)("code",{parentName:"pre",className:"language-dart"},"Prefs.setString('key','value');\n")),(0,a.kt)("h3",{id:"setstringtoempty"},"setStringToEmpty"),(0,a.kt)("ul",null,(0,a.kt)("li",{parentName:"ul"},"Set the value to given key to ",(0,a.kt)("inlineCode",{parentName:"li"},"''")," (Empty String)")),(0,a.kt)("pre",null,(0,a.kt)("code",{parentName:"pre",className:"language-dart"},"Prefs.setStringToEmpty('key');\n")),(0,a.kt)("h2",{id:"int"},"int"),(0,a.kt)("h3",{id:"getintornull"},"getIntOrNull"),(0,a.kt)("ul",null,(0,a.kt)("li",{parentName:"ul"},"Return ",(0,a.kt)("inlineCode",{parentName:"li"},"int")," by key else return ",(0,a.kt)("inlineCode",{parentName:"li"},"null"))),(0,a.kt)("pre",null,(0,a.kt)("code",{parentName:"pre",className:"language-dart"},"int? foo  = Prefs.getIntOrNull('key');\n")),(0,a.kt)("h3",{id:"getintor"},"getIntOr"),(0,a.kt)("ul",null,(0,a.kt)("li",{parentName:"ul"},"Return ",(0,a.kt)("inlineCode",{parentName:"li"},"int")," by key else return default value`")),(0,a.kt)("pre",null,(0,a.kt)("code",{parentName:"pre",className:"language-dart"},"int foo  = Prefs.getIntOr('key',def) ;\n")),(0,a.kt)("h3",{id:"getintorzero"},"getIntOrZero"),(0,a.kt)("ul",null,(0,a.kt)("li",{parentName:"ul"},"Return ",(0,a.kt)("inlineCode",{parentName:"li"},"int")," by key else return ",(0,a.kt)("inlineCode",{parentName:"li"},"0"))),(0,a.kt)("pre",null,(0,a.kt)("code",{parentName:"pre",className:"language-dart"},"int foo  = Prefs.getIntOrZero('key') ;\n")),(0,a.kt)("h3",{id:"setint"},"setInt"),(0,a.kt)("pre",null,(0,a.kt)("code",{parentName:"pre",className:"language-dart"},"Prefs.setInt('key',123) ;\n")),(0,a.kt)("h2",{id:"bool"},"bool"),(0,a.kt)("h3",{id:"getboolornull"},"getBoolOrNull"),(0,a.kt)("ul",null,(0,a.kt)("li",{parentName:"ul"},"Return ",(0,a.kt)("inlineCode",{parentName:"li"},"bool")," by key if exist else return ",(0,a.kt)("inlineCode",{parentName:"li"},"null"))),(0,a.kt)("pre",null,(0,a.kt)("code",{parentName:"pre",className:"language-dart"},"bool? foo  = Prefs.getBoolOrNull('key') ;\n")),(0,a.kt)("h3",{id:"getboolor"},"getBoolOr"),(0,a.kt)("ul",null,(0,a.kt)("li",{parentName:"ul"},"Return ",(0,a.kt)("inlineCode",{parentName:"li"},"bool")," by key if exist - else return the default value")),(0,a.kt)("pre",null,(0,a.kt)("code",{parentName:"pre",className:"language-dart"},"bool firstTimeOpen  = Prefs.getBoolOr('key', true ) ;\n")),(0,a.kt)("h3",{id:"getboolorfalse"},"getBoolOrFalse"),(0,a.kt)("ul",null,(0,a.kt)("li",{parentName:"ul"},"Return ",(0,a.kt)("inlineCode",{parentName:"li"},"bool")," by key if exist else return False")),(0,a.kt)("pre",null,(0,a.kt)("code",{parentName:"pre",className:"language-dart"},"bool isFound  = Prefs.getBoolOrFalse('key') ;\n")),(0,a.kt)("h3",{id:"getboolortrue"},"getBoolOrTrue"),(0,a.kt)("ul",null,(0,a.kt)("li",{parentName:"ul"},"Return ",(0,a.kt)("inlineCode",{parentName:"li"},"bool")," by key if exist else return True")),(0,a.kt)("pre",null,(0,a.kt)("code",{parentName:"pre",className:"language-dart"},"bool isFound  = Prefs.getBoolOrTrue('key' ) ;\n")),(0,a.kt)("h3",{id:"setbool"},"setBool"),(0,a.kt)("ul",null,(0,a.kt)("li",{parentName:"ul"},"Set the value => True or False to given key in shared prefs")),(0,a.kt)("pre",null,(0,a.kt)("code",{parentName:"pre",className:"language-dart"}," Prefs.setBool(key, value);\n")),(0,a.kt)("h2",{id:"map"},"Map"),(0,a.kt)("h3",{id:"getmap"},"getMap"),(0,a.kt)("ul",null,(0,a.kt)("li",{parentName:"ul"},"Return Map by given key or value")),(0,a.kt)("pre",null,(0,a.kt)("code",{parentName:"pre",className:"language-dart"}," Map<String, dynamic> isMap  = Prefs.getMap('key') ;\n")),(0,a.kt)("h3",{id:"setmap"},"setMap"),(0,a.kt)("ul",null,(0,a.kt)("li",{parentName:"ul"},"Set value of map by given key & own map")),(0,a.kt)("pre",null,(0,a.kt)("code",{parentName:"pre",className:"language-dart"},"Prefs.setMap('key',{}) ;\n")),(0,a.kt)("h2",{id:"datetime"},"DateTime"),(0,a.kt)("h3",{id:"getdateornull"},"getDateOrNull"),(0,a.kt)("ul",null,(0,a.kt)("li",{parentName:"ul"},"Return ",(0,a.kt)("inlineCode",{parentName:"li"},"dateTime")," by key if exists else return ",(0,a.kt)("inlineCode",{parentName:"li"},"null"))),(0,a.kt)("pre",null,(0,a.kt)("code",{parentName:"pre",className:"language-dart"},"DateTime? date =Prefs.getDateOrNull('key') ;\n")),(0,a.kt)("h3",{id:"getdateornow"},"getDateOrNow"),(0,a.kt)("ul",null,(0,a.kt)("li",{parentName:"ul"},"Return ",(0,a.kt)("inlineCode",{parentName:"li"},"dateTime")," by key if exists else return current date")),(0,a.kt)("pre",null,(0,a.kt)("code",{parentName:"pre",className:"language-dart"},"DateTime? date =Prefs.getDateOrNull('key') ;\n")),(0,a.kt)("h3",{id:"setdate"},"setDate"),(0,a.kt)("ul",null,(0,a.kt)("li",{parentName:"ul"},"Set data time by given key & value => from data time")),(0,a.kt)("pre",null,(0,a.kt)("code",{parentName:"pre",className:"language-dart"},"Prefs.setDate('key',dateTime) ;\n")),(0,a.kt)("h2",{id:"delete-values"},"delete values"),(0,a.kt)("h3",{id:"clear"},"clear"),(0,a.kt)("ul",null,(0,a.kt)("li",{parentName:"ul"},"clear the share preferences")),(0,a.kt)("pre",null,(0,a.kt)("code",{parentName:"pre",className:"language-dart"}," Prefs.clear() ;\n")),(0,a.kt)("h3",{id:"remove"},"remove"),(0,a.kt)("ul",null,(0,a.kt)("li",{parentName:"ul"},"Remove specially key from sheared preferences")),(0,a.kt)("pre",null,(0,a.kt)("code",{parentName:"pre",className:"language-dart"},"Prefs.remove('key') ;\n")),(0,a.kt)("h3",{id:"removemany"},"removeMany"),(0,a.kt)("ul",null,(0,a.kt)("li",{parentName:"ul"},"Remove list of value from sheared preferences just pass key of list")),(0,a.kt)("pre",null,(0,a.kt)("code",{parentName:"pre",className:"language-dart"},' Prefs.removeMany(["key","foo","rQueen"]) ;\n')),(0,a.kt)("h2",{id:"other"},"other"),(0,a.kt)("h3",{id:"find"},"find"),(0,a.kt)("ul",null,(0,a.kt)("li",{parentName:"ul"},"get value without preferences the data types by given key")),(0,a.kt)("pre",null,(0,a.kt)("code",{parentName:"pre",className:"language-dart"},"Prefs.find('key') ;\n")))}k.isMDXComponent=!0}}]);