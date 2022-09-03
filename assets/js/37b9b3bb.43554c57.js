"use strict";(self.webpackChunkqueen=self.webpackChunkqueen||[]).push([[964],{3905:(e,t,n)=>{n.d(t,{Zo:()=>p,kt:()=>d});var r=n(7294);function i(e,t,n){return t in e?Object.defineProperty(e,t,{value:n,enumerable:!0,configurable:!0,writable:!0}):e[t]=n,e}function a(e,t){var n=Object.keys(e);if(Object.getOwnPropertySymbols){var r=Object.getOwnPropertySymbols(e);t&&(r=r.filter((function(t){return Object.getOwnPropertyDescriptor(e,t).enumerable}))),n.push.apply(n,r)}return n}function o(e){for(var t=1;t<arguments.length;t++){var n=null!=arguments[t]?arguments[t]:{};t%2?a(Object(n),!0).forEach((function(t){i(e,t,n[t])})):Object.getOwnPropertyDescriptors?Object.defineProperties(e,Object.getOwnPropertyDescriptors(n)):a(Object(n)).forEach((function(t){Object.defineProperty(e,t,Object.getOwnPropertyDescriptor(n,t))}))}return e}function l(e,t){if(null==e)return{};var n,r,i=function(e,t){if(null==e)return{};var n,r,i={},a=Object.keys(e);for(r=0;r<a.length;r++)n=a[r],t.indexOf(n)>=0||(i[n]=e[n]);return i}(e,t);if(Object.getOwnPropertySymbols){var a=Object.getOwnPropertySymbols(e);for(r=0;r<a.length;r++)n=a[r],t.indexOf(n)>=0||Object.prototype.propertyIsEnumerable.call(e,n)&&(i[n]=e[n])}return i}var c=r.createContext({}),u=function(e){var t=r.useContext(c),n=t;return e&&(n="function"==typeof e?e(t):o(o({},t),e)),n},p=function(e){var t=u(e.components);return r.createElement(c.Provider,{value:t},e.children)},s={inlineCode:"code",wrapper:function(e){var t=e.children;return r.createElement(r.Fragment,{},t)}},m=r.forwardRef((function(e,t){var n=e.components,i=e.mdxType,a=e.originalType,c=e.parentName,p=l(e,["components","mdxType","originalType","parentName"]),m=u(n),d=i,h=m["".concat(c,".").concat(d)]||m[d]||s[d]||a;return n?r.createElement(h,o(o({ref:t},p),{},{components:n})):r.createElement(h,o({ref:t},p))}));function d(e,t){var n=arguments,i=t&&t.mdxType;if("string"==typeof e||i){var a=n.length,o=new Array(a);o[0]=m;var l={};for(var c in t)hasOwnProperty.call(t,c)&&(l[c]=t[c]);l.originalType=e,l.mdxType="string"==typeof e?e:i,o[1]=l;for(var u=2;u<a;u++)o[u]=n[u];return r.createElement.apply(null,o)}return r.createElement.apply(null,n)}m.displayName="MDXCreateElement"},9751:(e,t,n)=>{n.r(t),n.d(t,{assets:()=>c,contentTitle:()=>o,default:()=>s,frontMatter:()=>a,metadata:()=>l,toc:()=>u});var r=n(7462),i=(n(7294),n(3905));const a={title:"Themes",sidebar_position:4},o=void 0,l={unversionedId:"themes",id:"themes",title:"Themes",description:"introduction",source:"@site/docs/4_themes.md",sourceDirName:".",slug:"/themes",permalink:"/queen/docs/themes",draft:!1,editUrl:"https://github.com/FlutterQueen/queen/tree/master/docs/4_themes.md",tags:[],version:"current",sidebarPosition:4,frontMatter:{title:"Themes",sidebar_position:4},sidebar:"tutorialSidebar",previous:{title:"Localization",permalink:"/queen/docs/localization"},next:{title:"Validation",permalink:"/queen/docs/validation"}},c={},u=[{value:"introduction",id:"introduction",level:2},{value:"Get Started",id:"get-started",level:2},{value:"Config",id:"config",level:3},{value:"booting",id:"booting",level:3},{value:"switch to the next theme",id:"switch-to-the-next-theme",level:3},{value:"switch to specific theme by index",id:"switch-to-specific-theme-by-index",level:3},{value:"get current theme",id:"get-current-theme",level:3},{value:"get current theme index",id:"get-current-theme-index",level:3}],p={toc:u};function s(e){let{components:t,...n}=e;return(0,i.kt)("wrapper",(0,r.Z)({},p,n,{components:t,mdxType:"MDXLayout"}),(0,i.kt)("h2",{id:"introduction"},"introduction"),(0,i.kt)("p",null,"with ",(0,i.kt)("inlineCode",{parentName:"p"},"qthmes")," you can support in app themes with :"),(0,i.kt)("ul",null,(0,i.kt)("li",{parentName:"ul"},"automatic reload not state management needed \ud83d\udd25"),(0,i.kt)("li",{parentName:"ul"},"support multiples themes (not just one dark and other is light but as many themes as you need) \ud83c\udfa8"),(0,i.kt)("li",{parentName:"ul"},"switch between them in the run time \ud83d\udd01"),(0,i.kt)("li",{parentName:"ul"},"automatic persistance to last picked theme \ud83d\udcbe"),(0,i.kt)("li",{parentName:"ul"},"support for (",(0,i.kt)("inlineCode",{parentName:"li"},"debugbar"),") soon \ud83d\udee0"),(0,i.kt)("li",{parentName:"ul"},"access theme with or without context both recreance to same object")),(0,i.kt)("h2",{id:"get-started"},"Get Started"),(0,i.kt)("h3",{id:"config"},"Config"),(0,i.kt)("ul",null,(0,i.kt)("li",{parentName:"ul"},"inside config folder create theme file ",(0,i.kt)("inlineCode",{parentName:"li"},"theme.dart")),(0,i.kt)("li",{parentName:"ul"},"extend ",(0,i.kt)("inlineCode",{parentName:"li"},"QThemeConfig")),(0,i.kt)("li",{parentName:"ul"},"override ",(0,i.kt)("inlineCode",{parentName:"li"},"themes")," field and add your own themes list")),(0,i.kt)("h3",{id:"booting"},"booting"),(0,i.kt)("p",null,"add ",(0,i.kt)("inlineCode",{parentName:"p"},"QThemeLauncher")," to app lunchers list and inside the constructor give it your config"),(0,i.kt)("h3",{id:"switch-to-the-next-theme"},"switch to the next theme"),(0,i.kt)("pre",null,(0,i.kt)("code",{parentName:"pre",className:"language-dart"},"AppTheme.next()\n")),(0,i.kt)("h3",{id:"switch-to-specific-theme-by-index"},"switch to specific theme by index"),(0,i.kt)("pre",null,(0,i.kt)("code",{parentName:"pre",className:"language-dart"},"AppTheme.updateTo(2)\n")),(0,i.kt)("h3",{id:"get-current-theme"},"get current theme"),(0,i.kt)("pre",null,(0,i.kt)("code",{parentName:"pre",className:"language-dart"},"/// without context\nAppTheme.current\n\n/// with context\n\nTheme.of(context);\n\n\n/// with readable package \ud83d\ude09\ncontext.theme\n\n")),(0,i.kt)("h3",{id:"get-current-theme-index"},"get current theme index"),(0,i.kt)("pre",null,(0,i.kt)("code",{parentName:"pre",className:"language-dart"}," AppTheme.currentIndex\n")))}s.isMDXComponent=!0}}]);