!function(){var a={},b=function(b){for(var c=a[b],e=c.deps,f=c.defn,g=e.length,h=new Array(g),i=0;i<g;++i)h[i]=d(e[i]);var j=f.apply(null,h);if(void 0===j)throw"module ["+b+"] returned undefined";c.instance=j},c=function(b,c,d){if("string"!=typeof b)throw"module id must be a string";if(void 0===c)throw"no dependencies for "+b;if(void 0===d)throw"no definition function for "+b;a[b]={deps:c,defn:d,instance:void 0}},d=function(c){var d=a[c];if(void 0===d)throw"module ["+c+"] was undefined";return void 0===d.instance&&b(c),d.instance},e=function(a,b){for(var c=a.length,e=new Array(c),f=0;f<c;++f)e[f]=d(a[f]);b.apply(null,e)},f={};f.bolt={module:{api:{define:c,require:e,demand:d}}};var g=c,h=function(a,b){g(a,[],function(){return b})};h("4",tinymce.util.Tools.resolve),g("1",["4"],function(a){return a("tinymce.PluginManager")}),g("7",["4"],function(a){return a("tinymce.dom.DOMUtils")}),g("8",["4"],function(a){return a("tinymce.util.Tools")}),g("6",[],function(){var a=function(a){return a.getParam("save_enablewhendirty",!0)},b=function(a){return!!a.getParam("save_onsavecallback")},c=function(a){return!!a.getParam("save_oncancelcallback")};return{enableWhenDirty:a,hasOnSaveCallback:b,hasOnCancelCallback:c}}),g("5",["7","8","6"],function(a,b,c){var d=function(a,b){a.notificationManager.open({text:a.translate(b),type:"error"})},e=function(b){var e;if(e=a.DOM.getParent(b.id,"form"),!c.enableWhenDirty(b)||b.isDirty())return b.save(),c.hasOnSaveCallback(b)?(b.execCallback("save_onsavecallback",b),void b.nodeChanged()):void(e?(b.setDirty(!1),e.onsubmit&&!e.onsubmit()||("function"==typeof e.submit?e.submit():d(b,"Error: Form submit field collision.")),b.nodeChanged()):d(b,"Error: No form element found."))},f=function(a){var d=b.trim(a.startContent);return c.hasOnCancelCallback(a)?void a.execCallback("save_oncancelcallback",a):(a.setContent(d),a.undoManager.clear(),void a.nodeChanged())};return{save:e,cancel:f}}),g("2",["5"],function(a){var b=function(b){b.addCommand("mceSave",function(){a.save(b)}),b.addCommand("mceCancel",function(){a.cancel(b)})};return{register:b}}),g("3",["6"],function(a){var b=function(b){return function(c){var d=c.control;b.on("nodeChange dirty",function(){d.disabled(a.enableWhenDirty(b)&&!b.isDirty())})}},c=function(a){a.addButton("save",{icon:"save",text:"Save",cmd:"mceSave",disabled:!0,onPostRender:b(a)}),a.addButton("cancel",{text:"Cancel",icon:!1,cmd:"mceCancel",disabled:!0,onPostRender:b(a)}),a.addShortcut("Meta+S","","mceSave")};return{register:c}}),g("0",["1","2","3"],function(a,b,c){return a.add("save",function(a){c.register(a),b.register(a)}),function(){}}),d("0")()}();