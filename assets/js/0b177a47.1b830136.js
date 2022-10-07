"use strict";(self.webpackChunkqueen=self.webpackChunkqueen||[]).push([[993],{3905:(e,t,a)=>{a.d(t,{Zo:()=>d,kt:()=>v});var r=a(7294);function n(e,t,a){return t in e?Object.defineProperty(e,t,{value:a,enumerable:!0,configurable:!0,writable:!0}):e[t]=a,e}function i(e,t){var a=Object.keys(e);if(Object.getOwnPropertySymbols){var r=Object.getOwnPropertySymbols(e);t&&(r=r.filter((function(t){return Object.getOwnPropertyDescriptor(e,t).enumerable}))),a.push.apply(a,r)}return a}function l(e){for(var t=1;t<arguments.length;t++){var a=null!=arguments[t]?arguments[t]:{};t%2?i(Object(a),!0).forEach((function(t){n(e,t,a[t])})):Object.getOwnPropertyDescriptors?Object.defineProperties(e,Object.getOwnPropertyDescriptors(a)):i(Object(a)).forEach((function(t){Object.defineProperty(e,t,Object.getOwnPropertyDescriptor(a,t))}))}return e}function o(e,t){if(null==e)return{};var a,r,n=function(e,t){if(null==e)return{};var a,r,n={},i=Object.keys(e);for(r=0;r<i.length;r++)a=i[r],t.indexOf(a)>=0||(n[a]=e[a]);return n}(e,t);if(Object.getOwnPropertySymbols){var i=Object.getOwnPropertySymbols(e);for(r=0;r<i.length;r++)a=i[r],t.indexOf(a)>=0||Object.prototype.propertyIsEnumerable.call(e,a)&&(n[a]=e[a])}return n}var u=r.createContext({}),s=function(e){var t=r.useContext(u),a=t;return e&&(a="function"==typeof e?e(t):l(l({},t),e)),a},d=function(e){var t=s(e.components);return r.createElement(u.Provider,{value:t},e.children)},c={inlineCode:"code",wrapper:function(e){var t=e.children;return r.createElement(r.Fragment,{},t)}},p=r.forwardRef((function(e,t){var a=e.components,n=e.mdxType,i=e.originalType,u=e.parentName,d=o(e,["components","mdxType","originalType","parentName"]),p=s(a),v=n,m=p["".concat(u,".").concat(v)]||p[v]||c[v]||i;return a?r.createElement(m,l(l({ref:t},d),{},{components:a})):r.createElement(m,l({ref:t},d))}));function v(e,t){var a=arguments,n=t&&t.mdxType;if("string"==typeof e||n){var i=a.length,l=new Array(i);l[0]=p;var o={};for(var u in t)hasOwnProperty.call(t,u)&&(o[u]=t[u]);o.originalType=e,o.mdxType="string"==typeof e?e:n,l[1]=o;for(var s=2;s<i;s++)l[s]=a[s];return r.createElement.apply(null,l)}return r.createElement.apply(null,a)}p.displayName="MDXCreateElement"},1583:(e,t,a)=>{a.r(t),a.d(t,{assets:()=>u,contentTitle:()=>l,default:()=>c,frontMatter:()=>i,metadata:()=>o,toc:()=>s});var r=a(7462),n=(a(7294),a(3905));const i={title:"Validation",sidebar_position:5},l="variable validation",o={unversionedId:"validation",id:"validation",title:"Validation",description:"use a function to validate any variable and it will return a bool based on the input",source:"@site/docs/5_validation.md",sourceDirName:".",slug:"/validation",permalink:"/queen/docs/validation",draft:!1,editUrl:"https://github.com/FlutterQueen/queen/tree/master/docs/5_validation.md",tags:[],version:"current",sidebarPosition:5,frontMatter:{title:"Validation",sidebar_position:5},sidebar:"tutorialSidebar",previous:{title:"Themes",permalink:"/queen/docs/themes"},next:{title:"Helpers(readable)",permalink:"/queen/docs/helpers"}},u={},s=[{value:"list of available functions",id:"list-of-available-functions",level:2},{value:"Validate Forms",id:"validate-forms",level:2},{value:"list of available Rules",id:"list-of-available-rules",level:2},{value:"Localize the rule error message",id:"localize-the-rule-error-message",level:2},{value:"override the error message",id:"override-the-error-message",level:3},{value:"QRule",id:"qrule",level:2}],d={toc:s};function c(e){let{components:t,...a}=e;return(0,n.kt)("wrapper",(0,r.Z)({},d,a,{components:t,mdxType:"MDXLayout"}),(0,n.kt)("h1",{id:"variable-validation"},"variable validation"),(0,n.kt)("p",null,"use a function to validate any variable and it will return a ",(0,n.kt)("inlineCode",{parentName:"p"},"bool")," based on the input"),(0,n.kt)("pre",null,(0,n.kt)("code",{parentName:"pre",className:"language-dart"},"const badEmail = 'QueenRoyal.kingdom';\nprint(isEmail(badEmail)) // false\n\nconst validEmail = 'Queen@Royal.kingdom';\nprint(isEmail(validEmail)) // true\n\n")),(0,n.kt)("h2",{id:"list-of-available-functions"},(0,n.kt)("a",{parentName:"h2",href:"https://pub.dev/documentation/queen_validators/latest/queen_validators/queen_validators-library.html#functions"},"list of available functions")),(0,n.kt)("h1",{id:"form-validation"},"Form validation"),(0,n.kt)("p",null,"just like the flutter says to do with forms queen do it in the same way just take the burden of the validation logic from you"),(0,n.kt)("ul",null,(0,n.kt)("li",{parentName:"ul"},"create a from , add the fields , set the roles and you are done")),(0,n.kt)("h2",{id:"validate-forms"},"Validate Forms"),(0,n.kt)("pre",null,(0,n.kt)("code",{parentName:"pre",className:"language-dart"},'@override\nWidget build(BuildContext context) {\nreturn TextFormField(\n     // use qValidator function and provider list of rules to apply on this field\n    validator: qValidator([\n      IsRequired(),\n      IsOptional()\n      IsEmail(),\n      MinLength(8),\n      MaxLength(30, "optionally you can override the failure if the validation fails"),\n    ]),\n  );\n  }\n')),(0,n.kt)("h2",{id:"list-of-available-rules"},(0,n.kt)("a",{parentName:"h2",href:"https://pub.dev/documentation/queen_validators/latest/queen_validators/queen_validators-library.html#classes"},"list of available Rules")),(0,n.kt)("h2",{id:"localize-the-rule-error-message"},"Localize the rule error message"),(0,n.kt)("p",null,"its localized out of the box"),(0,n.kt)("h3",{id:"override-the-error-message"},"override the error message"),(0,n.kt)("p",null,"copy the key and override it in any language you want under the package name 'validation'"),(0,n.kt)("h2",{id:"qrule"},"QRule"),(0,n.kt)("p",null,"you can build your own rule on the go \ud83d\ude0e"),(0,n.kt)("pre",null,(0,n.kt)("code",{parentName:"pre",className:"language-dart"},"@override\nWidget build(BuildContext context) {\nreturn TextFormField(\n     // use qValidator function and provider list of rules to apply on this field\n    validator: qValidator([\n      QRule((String input){\n        return input.startsWith('050');\n      },'must starts with 050'),\n    ]),\n  );\n  }\n")))}c.isMDXComponent=!0}}]);