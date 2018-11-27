define('@weex-component/mine', function (require, exports, module) {
       
       ;
       
       ;module.exports.style = {
       "title": {
       "color": "#FF0000",
       "justifyContent": "center",
       "alignSelf": "center",
       "alignItems": "center",
       "marginTop": 800,
       "fontSize": "50"
       }
       }
       
       ;module.exports.template = {
       "type": "div",
       "children": [
                    {
                    "type": "text",
                    "classList": [
                                  "title"
                                  ],
                    "attr": {
                    "value": "首页 模块!"
                    }
                    }
                    ]
       }
       
       ;})

// require module
bootstrap('@weex-component/mine', {"transformerVersion":"0.3.1"})
