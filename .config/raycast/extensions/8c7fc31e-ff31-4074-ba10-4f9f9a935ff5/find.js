var i=Object.defineProperty;var m=Object.getOwnPropertyDescriptor;var g=Object.getOwnPropertyNames;var d=Object.prototype.hasOwnProperty;var l=e=>i(e,"__esModule",{value:!0});var u=(e,n)=>{for(var r in n)i(e,r,{get:n[r],enumerable:!0})},f=(e,n,r,a)=>{if(n&&typeof n=="object"||typeof n=="function")for(let t of g(n))!d.call(e,t)&&(r||t!=="default")&&i(e,t,{get:()=>n[t],enumerable:!(a=m(n,t))||a.enumerable});return e};var h=(e=>(n,r)=>e&&e.get(n)||(r=f(l({}),n,1),e&&e.set(n,r),r))(typeof WeakMap!="undefined"?new WeakMap:0);var w={};u(w,{default:()=>p});var o=require("@raycast/api"),c=require("react");function s(e){return"https://www.google.com/maps/search/?api=1"+"&query="+encodeURI(e)}function p(){let[e,n]=(0,c.useState)("");return _jsx(o.Form,{actions:_jsx(o.ActionPanel,null,_jsx(o.OpenInBrowserAction,{url:s(e),icon:o.Icon.Globe,onOpen:()=>(0,o.popToRoot)()}),_jsx(o.CopyToClipboardAction,{content:s(e),icon:o.Icon.Clipboard,onCopy:()=>(0,o.popToRoot)()}))},_jsx(o.Form.TextField,{id:"search",title:"Search",placeholder:"Location or Category",value:e,onChange:n}))}module.exports=h(w);0&&(module.exports={});
