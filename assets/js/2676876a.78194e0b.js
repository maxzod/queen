"use strict";(self.webpackChunkqueen=self.webpackChunkqueen||[]).push([[253],{3905:(e,n,r)=>{r.d(n,{Zo:()=>u,kt:()=>h});var t=r(7294);function a(e,n,r){return n in e?Object.defineProperty(e,n,{value:r,enumerable:!0,configurable:!0,writable:!0}):e[n]=r,e}function o(e,n){var r=Object.keys(e);if(Object.getOwnPropertySymbols){var t=Object.getOwnPropertySymbols(e);n&&(t=t.filter((function(n){return Object.getOwnPropertyDescriptor(e,n).enumerable}))),r.push.apply(r,t)}return r}function l(e){for(var n=1;n<arguments.length;n++){var r=null!=arguments[n]?arguments[n]:{};n%2?o(Object(r),!0).forEach((function(n){a(e,n,r[n])})):Object.getOwnPropertyDescriptors?Object.defineProperties(e,Object.getOwnPropertyDescriptors(r)):o(Object(r)).forEach((function(n){Object.defineProperty(e,n,Object.getOwnPropertyDescriptor(r,n))}))}return e}function i(e,n){if(null==e)return{};var r,t,a=function(e,n){if(null==e)return{};var r,t,a={},o=Object.keys(e);for(t=0;t<o.length;t++)r=o[t],n.indexOf(r)>=0||(a[r]=e[r]);return a}(e,n);if(Object.getOwnPropertySymbols){var o=Object.getOwnPropertySymbols(e);for(t=0;t<o.length;t++)r=o[t],n.indexOf(r)>=0||Object.prototype.propertyIsEnumerable.call(e,r)&&(a[r]=e[r])}return a}var c=t.createContext({}),s=function(e){var n=t.useContext(c),r=n;return e&&(r="function"==typeof e?e(n):l(l({},n),e)),r},u=function(e){var n=s(e.components);return t.createElement(c.Provider,{value:n},e.children)},p={inlineCode:"code",wrapper:function(e){var n=e.children;return t.createElement(t.Fragment,{},n)}},d=t.forwardRef((function(e,n){var r=e.components,a=e.mdxType,o=e.originalType,c=e.parentName,u=i(e,["components","mdxType","originalType","parentName"]),d=s(r),h=a,f=d["".concat(c,".").concat(h)]||d[h]||p[h]||o;return r?t.createElement(f,l(l({ref:n},u),{},{components:r})):t.createElement(f,l({ref:n},u))}));function h(e,n){var r=arguments,a=n&&n.mdxType;if("string"==typeof e||a){var o=r.length,l=new Array(o);l[0]=d;var i={};for(var c in n)hasOwnProperty.call(n,c)&&(i[c]=n[c]);i.originalType=e,i.mdxType="string"==typeof e?e:a,l[1]=i;for(var s=2;s<o;s++)l[s]=r[s];return t.createElement.apply(null,l)}return t.createElement.apply(null,r)}d.displayName="MDXCreateElement"},2818:(e,n,r)=>{r.r(n),r.d(n,{assets:()=>c,contentTitle:()=>l,default:()=>p,frontMatter:()=>o,metadata:()=>i,toc:()=>s});var t=r(7462),a=(r(7294),r(3905));const o={title:"Lunchers"},l="Launchers",i={unversionedId:"launchers",id:"launchers",title:"Lunchers",description:"Introduction",source:"@site/docs/9_launchers.md",sourceDirName:".",slug:"/launchers",permalink:"/queen/docs/launchers",draft:!1,editUrl:"https://github.com/FlutterQueen/queen/tree/master/docs/9_launchers.md",tags:[],version:"current",sidebarPosition:9,frontMatter:{title:"Lunchers"},sidebar:"tutorialSidebar",previous:{title:"lighthouse (CLI)",permalink:"/queen/docs/cli"},next:{title:"Pipes",permalink:"/queen/docs/pipes"}},c={},s=[{value:"One , register dependencies",id:"one--register-dependencies",level:2},{value:"Boot",id:"boot",level:2},{value:"shouldRunInParallel",id:"shouldruninparallel",level:2}],u={toc:s};function p(e){let{components:n,...o}=e;return(0,a.kt)("wrapper",(0,t.Z)({},u,o,{components:n,mdxType:"MDXLayout"}),(0,a.kt)("h1",{id:"launchers"},"Launchers"),(0,a.kt)("p",null,"Introduction\nLaunchers are the way queen organize the process of register dependencies and bootstrap for Queen . Your own application, and other developers packages ,"),(0,a.kt)("p",null,(0,a.kt)("img",{alt:"How Pipes Work",src:r(4754).Z,width:"3552",height:"1600"})),(0,a.kt)("h2",{id:"one--register-dependencies"},"One , register dependencies"),(0,a.kt)("pre",null,(0,a.kt)("code",{parentName:"pre",className:"language-dart"},"\nclass ThemeLauncher extends Launcher {\n\n  @override\n  void register() {\n    Locators.put(ThemeService());\n  }\n\n}\n")),(0,a.kt)("h2",{id:"boot"},"Boot"),(0,a.kt)("p",null,"In general, we mean registering things, including registering services, controllers, other packages dependencies and to bootstrap them if needed ",(0,a.kt)("inlineCode",{parentName:"p"},"boot")," will be called before the application run"),(0,a.kt)("pre",null,(0,a.kt)("code",{parentName:"pre",className:"language-dart"},"\nclass ThemeLauncher extends Launcher {\n\n  @override\n  FutureOr<void> boot() async => AwesomeController().init();\n\n}\n\n\n")),(0,a.kt)("h2",{id:"shouldruninparallel"},"shouldRunInParallel"),(0,a.kt)("p",null,"if ",(0,a.kt)("inlineCode",{parentName:"p"},"false")," the Launcher boot will called after the previous one is done\nif ",(0,a.kt)("inlineCode",{parentName:"p"},"true")," will boot in parallel with other Launchers (apps boot faster)"),(0,a.kt)("pre",null,(0,a.kt)("code",{parentName:"pre",className:"language-dart"},"\nclass ThemeLauncher extends Launcher {\n\n  @override\n  bool get shouldRunInParallel => true;\n\n}\n\n\n")))}p.isMDXComponent=!0},4754:(e,n,r)=>{r.d(n,{Z:()=>t});const t=r.p+"assets/images/launchers_work-017c6e42a9ae2e3feb18ca8fabf5c632.png"}}]);