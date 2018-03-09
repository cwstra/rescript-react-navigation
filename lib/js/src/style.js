// Generated by BUCKLESCRIPT VERSION 2.2.2, PLEASE EDIT WITH CARE
'use strict';

var $$Array = require("bs-platform/lib/js/array.js");
var Js_boolean = require("bs-platform/lib/js/js_boolean.js");
var Encode$BsReactNative = require("./private/encode.js");
var UtilsRN$BsReactNative = require("./private/utilsRN.js");

function encode_pt_pct(value) {
  if (value.tag) {
    return Encode$BsReactNative.pct(value[0]);
  } else {
    return value[0];
  }
}

function encode_pt_pct_auto(value) {
  if (typeof value === "number") {
    return "auto";
  } else if (value.tag) {
    return Encode$BsReactNative.pct(value[0]);
  } else {
    return value[0];
  }
}

function encode_pt_pct_animated_interpolated(value) {
  if (value.tag === 1) {
    return Encode$BsReactNative.pct(value[0]);
  } else {
    return value[0];
  }
}

function combine(a, b) {
  return UtilsRN$BsReactNative.dictFromArray($$Array.append(UtilsRN$BsReactNative.dictEntries(a), UtilsRN$BsReactNative.dictEntries(b)));
}

var concat = $$Array.of_list;

var style = UtilsRN$BsReactNative.dictFromList;

function alignContent(v) {
  var tmp;
  switch (v) {
    case 0 : 
        tmp = "flex-start";
        break;
    case 1 : 
        tmp = "flex-end";
        break;
    case 2 : 
        tmp = "center";
        break;
    case 3 : 
        tmp = "stretch";
        break;
    case 4 : 
        tmp = "space-around";
        break;
    case 5 : 
        tmp = "space-between";
        break;
    
  }
  return /* tuple */[
          "alignContent",
          tmp
        ];
}

function alignItems(v) {
  var tmp;
  switch (v) {
    case 0 : 
        tmp = "flex-start";
        break;
    case 1 : 
        tmp = "flex-end";
        break;
    case 2 : 
        tmp = "center";
        break;
    case 3 : 
        tmp = "stretch";
        break;
    case 4 : 
        tmp = "baseline";
        break;
    
  }
  return /* tuple */[
          "alignItems",
          tmp
        ];
}

function alignSelf(v) {
  var tmp;
  switch (v) {
    case 0 : 
        tmp = "flex-start";
        break;
    case 1 : 
        tmp = "flex-end";
        break;
    case 2 : 
        tmp = "center";
        break;
    case 3 : 
        tmp = "stretch";
        break;
    case 4 : 
        tmp = "baseline";
        break;
    
  }
  return /* tuple */[
          "alignSelf",
          tmp
        ];
}

function aspectRatio(param) {
  return /* tuple */[
          "aspectRatio",
          param
        ];
}

function borderBottomWidth(param) {
  return /* tuple */[
          "borderBottomWidth",
          param
        ];
}

function borderLeftWidth(param) {
  return /* tuple */[
          "borderLeftWidth",
          param
        ];
}

function borderRightWidth(param) {
  return /* tuple */[
          "borderRightWidth",
          param
        ];
}

function borderTopWidth(param) {
  return /* tuple */[
          "borderTopWidth",
          param
        ];
}

function borderWidth(param) {
  return /* tuple */[
          "borderWidth",
          param
        ];
}

function display(v) {
  return /* tuple */[
          "display",
          v !== 0 ? "none" : "flex"
        ];
}

function flex(param) {
  return /* tuple */[
          "flex",
          param
        ];
}

function flexBasis(value) {
  return /* tuple */[
          "flexBasis",
          encode_pt_pct(value)
        ];
}

function flexDirection(v) {
  var tmp;
  switch (v) {
    case 0 : 
        tmp = "row";
        break;
    case 1 : 
        tmp = "row-reverse";
        break;
    case 2 : 
        tmp = "column";
        break;
    case 3 : 
        tmp = "column-reverse";
        break;
    
  }
  return /* tuple */[
          "flexDirection",
          tmp
        ];
}

function flexGrow(param) {
  return /* tuple */[
          "flexGrow",
          param
        ];
}

function flexShrink(param) {
  return /* tuple */[
          "flexShrink",
          param
        ];
}

function flexWrap(v) {
  return /* tuple */[
          "flexWrap",
          v !== 0 ? "nowrap" : "wrap"
        ];
}

function justifyContent(v) {
  var tmp;
  switch (v) {
    case 0 : 
        tmp = "flex-start";
        break;
    case 1 : 
        tmp = "flex-end";
        break;
    case 2 : 
        tmp = "center";
        break;
    case 3 : 
        tmp = "stretch";
        break;
    case 4 : 
        tmp = "space-around";
        break;
    case 5 : 
        tmp = "space-between";
        break;
    
  }
  return /* tuple */[
          "justifyContent",
          tmp
        ];
}

function margin(value) {
  return /* tuple */[
          "margin",
          encode_pt_pct_auto(value)
        ];
}

function marginBottom(value) {
  return /* tuple */[
          "marginBottom",
          encode_pt_pct_auto(value)
        ];
}

function marginHorizontal(value) {
  return /* tuple */[
          "marginHorizontal",
          encode_pt_pct_auto(value)
        ];
}

function marginLeft(value) {
  return /* tuple */[
          "marginLeft",
          encode_pt_pct_auto(value)
        ];
}

function marginRight(value) {
  return /* tuple */[
          "marginRight",
          encode_pt_pct_auto(value)
        ];
}

function marginTop(value) {
  return /* tuple */[
          "marginTop",
          encode_pt_pct_auto(value)
        ];
}

function marginVertical(value) {
  return /* tuple */[
          "marginVertical",
          encode_pt_pct_auto(value)
        ];
}

function maxHeight(value) {
  return /* tuple */[
          "maxHeight",
          encode_pt_pct(value)
        ];
}

function maxWidth(value) {
  return /* tuple */[
          "maxWidth",
          encode_pt_pct(value)
        ];
}

function minHeight(value) {
  return /* tuple */[
          "minHeight",
          encode_pt_pct(value)
        ];
}

function minWidth(value) {
  return /* tuple */[
          "minWidth",
          encode_pt_pct(value)
        ];
}

function overflow(v) {
  var tmp;
  switch (v) {
    case 0 : 
        tmp = "visible";
        break;
    case 1 : 
        tmp = "hidden";
        break;
    case 2 : 
        tmp = "scroll";
        break;
    
  }
  return /* tuple */[
          "overflow",
          tmp
        ];
}

function padding(value) {
  return /* tuple */[
          "padding",
          encode_pt_pct(value)
        ];
}

function paddingBottom(value) {
  return /* tuple */[
          "paddingBottom",
          encode_pt_pct(value)
        ];
}

function paddingHorizontal(value) {
  return /* tuple */[
          "paddingHorizontal",
          encode_pt_pct(value)
        ];
}

function paddingLeft(value) {
  return /* tuple */[
          "paddingLeft",
          encode_pt_pct(value)
        ];
}

function paddingRight(value) {
  return /* tuple */[
          "paddingRight",
          encode_pt_pct(value)
        ];
}

function paddingTop(value) {
  return /* tuple */[
          "paddingTop",
          encode_pt_pct(value)
        ];
}

function paddingVertical(value) {
  return /* tuple */[
          "paddingVertical",
          encode_pt_pct(value)
        ];
}

function position(v) {
  return /* tuple */[
          "position",
          v !== 0 ? "relative" : "absolute"
        ];
}

function top(value) {
  return /* tuple */[
          "top",
          encode_pt_pct_animated_interpolated(value)
        ];
}

function left(value) {
  return /* tuple */[
          "left",
          encode_pt_pct_animated_interpolated(value)
        ];
}

function right(value) {
  return /* tuple */[
          "right",
          encode_pt_pct_animated_interpolated(value)
        ];
}

function bottom(value) {
  return /* tuple */[
          "bottom",
          encode_pt_pct_animated_interpolated(value)
        ];
}

function height(value) {
  return /* tuple */[
          "height",
          encode_pt_pct_animated_interpolated(value)
        ];
}

function width(value) {
  return /* tuple */[
          "width",
          encode_pt_pct_animated_interpolated(value)
        ];
}

function zIndex(value) {
  return /* tuple */[
          "zIndex",
          value
        ];
}

function direction(v) {
  var tmp;
  switch (v) {
    case 0 : 
        tmp = "inherit";
        break;
    case 1 : 
        tmp = "ltr";
        break;
    case 2 : 
        tmp = "rtl";
        break;
    
  }
  return /* tuple */[
          "direction",
          tmp
        ];
}

function shadowColor(param) {
  return /* tuple */[
          "shadowColor",
          param
        ];
}

function shadowOffset(height, width) {
  return /* tuple */[
          "shadowOffset",
          UtilsRN$BsReactNative.dictFromArray(/* array */[
                /* tuple */[
                  "height",
                  height
                ],
                /* tuple */[
                  "width",
                  width
                ]
              ])
        ];
}

function shadowOpacity(param) {
  return /* tuple */[
          "shadowOpacity",
          param
        ];
}

function shadowRadius(param) {
  return /* tuple */[
          "shadowRadius",
          param
        ];
}

function create_(encoder, rotationEncoder, perspective, rotate, rotateX, rotateY, rotateZ, scaleX, scaleY, translateX, translateY, skewX, skewY) {
  var opt_values = /* array */[
    /* tuple */[
      "perspective",
      encoder(perspective)
    ],
    /* tuple */[
      "rotate",
      rotationEncoder(rotate)
    ],
    /* tuple */[
      "rotateX",
      rotationEncoder(rotateX)
    ],
    /* tuple */[
      "rotateY",
      rotationEncoder(rotateY)
    ],
    /* tuple */[
      "rotateZ",
      rotationEncoder(rotateZ)
    ],
    /* tuple */[
      "scaleX",
      encoder(scaleX)
    ],
    /* tuple */[
      "scaleY",
      encoder(scaleY)
    ],
    /* tuple */[
      "translateX",
      encoder(translateX)
    ],
    /* tuple */[
      "translateY",
      encoder(translateY)
    ],
    /* tuple */[
      "skewX",
      encoder(skewX)
    ],
    /* tuple */[
      "skewY",
      encoder(skewY)
    ]
  ];
  var values = $$Array.fold_right((function (x, acc) {
          var match = x[1];
          if (match) {
            var val_ = UtilsRN$BsReactNative.dictFromArray(/* array */[/* tuple */[
                    x[0],
                    match[0]
                  ]]);
            return /* :: */[
                    val_,
                    acc
                  ];
          } else {
            return acc;
          }
        }), opt_values, /* [] */0);
  return /* tuple */[
          "transform",
          $$Array.of_list(values)
        ];
}

function make(perspective, rotate, rotateX, rotateY, rotateZ, scaleX, scaleY, translateX, translateY, skewX, skewY, _) {
  return create_((function (value) {
                return UtilsRN$BsReactNative.option_map((function (prim) {
                              return prim;
                            }), value);
              }), (function (value) {
                return UtilsRN$BsReactNative.option_map((function (prim) {
                              return prim;
                            }), value);
              }), perspective, rotate, rotateX, rotateY, rotateZ, scaleX, scaleY, translateX, translateY, skewX, skewY);
}

function makeAnimated(perspective, rotate, rotateX, rotateY, rotateZ, scaleX, scaleY, translateX, translateY, skewX, skewY, _) {
  return create_((function (value) {
                return UtilsRN$BsReactNative.option_map((function (prim) {
                              return prim;
                            }), value);
              }), (function (value) {
                return UtilsRN$BsReactNative.option_map((function (prim) {
                              return prim;
                            }), value);
              }), perspective, rotate, rotateX, rotateY, rotateZ, scaleX, scaleY, translateX, translateY, skewX, skewY);
}

function makeInterpolated(perspective, rotate, rotateX, rotateY, rotateZ, scaleX, scaleY, translateX, translateY, skewX, skewY, _) {
  return create_((function (value) {
                return UtilsRN$BsReactNative.option_map((function (prim) {
                              return prim;
                            }), value);
              }), (function (value) {
                return UtilsRN$BsReactNative.option_map((function (prim) {
                              return prim;
                            }), value);
              }), perspective, rotate, rotateX, rotateY, rotateZ, scaleX, scaleY, translateX, translateY, skewX, skewY);
}

function backfaceVisibility(v) {
  return /* tuple */[
          "backfaceVisibility",
          v !== 0 ? "hidden" : "visible"
        ];
}

function backgroundColor(param) {
  return /* tuple */[
          "backgroundColor",
          param
        ];
}

function borderColor(param) {
  return /* tuple */[
          "borderColor",
          param
        ];
}

function borderTopColor(param) {
  return /* tuple */[
          "borderTopColor",
          param
        ];
}

function borderRightColor(param) {
  return /* tuple */[
          "borderRightColor",
          param
        ];
}

function borderBottomColor(param) {
  return /* tuple */[
          "borderBottomColor",
          param
        ];
}

function borderLeftColor(param) {
  return /* tuple */[
          "borderLeftColor",
          param
        ];
}

function borderRadius(param) {
  return /* tuple */[
          "borderRadius",
          param
        ];
}

function borderTopLeftRadius(param) {
  return /* tuple */[
          "borderTopLeftRadius",
          param
        ];
}

function borderTopRightRadius(param) {
  return /* tuple */[
          "borderTopRightRadius",
          param
        ];
}

function borderBottomLeftRadius(param) {
  return /* tuple */[
          "borderBottomLeftRadius",
          param
        ];
}

function borderBottomRightRadius(param) {
  return /* tuple */[
          "borderBottomRightRadius",
          param
        ];
}

function borderStyle(v) {
  var tmp;
  switch (v) {
    case 0 : 
        tmp = "solid";
        break;
    case 1 : 
        tmp = "dotted";
        break;
    case 2 : 
        tmp = "dashed";
        break;
    
  }
  return /* tuple */[
          "borderStyle",
          tmp
        ];
}

function opacity(value) {
  return /* tuple */[
          "opacity",
          value[0]
        ];
}

function elevation(param) {
  return /* tuple */[
          "elevation",
          param
        ];
}

function color(param) {
  return /* tuple */[
          "color",
          param
        ];
}

function fontFamily(param) {
  return /* tuple */[
          "fontFamily",
          param
        ];
}

function fontSize(value) {
  return /* tuple */[
          "fontSize",
          value[0]
        ];
}

function fontStyle(v) {
  return /* tuple */[
          "fontStyle",
          v !== 0 ? "italic" : "normal"
        ];
}

function fontWeight(v) {
  return /* tuple */[
          "fontWeight",
          v >= 1056105525 ? (
              v >= 1056204983 ? (
                  v >= 1056304441 ? (
                      v >= 1056354170 ? "900" : "800"
                    ) : (
                      v >= 1056254712 ? "700" : "600"
                    )
                ) : (
                  v >= 1056155254 ? "500" : "400"
                )
            ) : (
              v !== 737455525 ? (
                  v >= 1056006067 ? (
                      v >= 1056055796 ? "300" : "200"
                    ) : (
                      v >= 1055956338 ? "100" : "normal"
                    )
                ) : "bold"
            )
        ];
}

function lineHeight(param) {
  return /* tuple */[
          "lineHeight",
          param
        ];
}

function textAlign(v) {
  var tmp;
  switch (v) {
    case 0 : 
        tmp = "auto";
        break;
    case 1 : 
        tmp = "left";
        break;
    case 2 : 
        tmp = "right";
        break;
    case 3 : 
        tmp = "center";
        break;
    case 4 : 
        tmp = "justify";
        break;
    
  }
  return /* tuple */[
          "textAlign",
          tmp
        ];
}

function textDecorationLine(v) {
  var tmp;
  switch (v) {
    case 0 : 
        tmp = "none";
        break;
    case 1 : 
        tmp = "underline";
        break;
    case 2 : 
        tmp = "line-through";
        break;
    case 3 : 
        tmp = "underline line-through";
        break;
    
  }
  return /* tuple */[
          "textDecorationLine",
          tmp
        ];
}

function textShadowColor(param) {
  return /* tuple */[
          "textShadowColor",
          param
        ];
}

function textShadowOffset(height, width) {
  return /* tuple */[
          "textShadowOffset",
          UtilsRN$BsReactNative.dictFromArray(/* array */[
                /* tuple */[
                  "height",
                  height
                ],
                /* tuple */[
                  "width",
                  width
                ]
              ])
        ];
}

function textShadowRadius(param) {
  return /* tuple */[
          "textShadowRadius",
          param
        ];
}

function includeFontPadding(value) {
  return /* tuple */[
          "includeFontPadding",
          Js_boolean.to_js_boolean(value)
        ];
}

function textAlignVertical(v) {
  var tmp;
  switch (v) {
    case 0 : 
        tmp = "auto";
        break;
    case 1 : 
        tmp = "top";
        break;
    case 2 : 
        tmp = "bottom";
        break;
    case 3 : 
        tmp = "center";
        break;
    
  }
  return /* tuple */[
          "textAlignVertical",
          tmp
        ];
}

function fontVariant(fontVariants) {
  return /* tuple */[
          "fontVariant",
          $$Array.map((function (prim) {
                  return prim;
                }), $$Array.of_list(fontVariants))
        ];
}

function letterSpacing(param) {
  return /* tuple */[
          "letterSpacing",
          param
        ];
}

function textDecorationColor(param) {
  return /* tuple */[
          "textDecorationColor",
          param
        ];
}

function textDecorationStyle(v) {
  var tmp;
  switch (v) {
    case 0 : 
        tmp = "solid";
        break;
    case 1 : 
        tmp = "double";
        break;
    case 2 : 
        tmp = "dotted";
        break;
    case 3 : 
        tmp = "dashed";
        break;
    
  }
  return /* tuple */[
          "textDecorationStyle",
          tmp
        ];
}

function writingDirection(v) {
  var tmp;
  switch (v) {
    case 0 : 
        tmp = "auto";
        break;
    case 1 : 
        tmp = "ltr";
        break;
    case 2 : 
        tmp = "rtl";
        break;
    
  }
  return /* tuple */[
          "writingDirection",
          tmp
        ];
}

function resizeMode(v) {
  var tmp;
  switch (v) {
    case 0 : 
        tmp = "cover";
        break;
    case 1 : 
        tmp = "contain";
        break;
    case 2 : 
        tmp = "stretch";
        break;
    case 3 : 
        tmp = "repeat";
        break;
    case 4 : 
        tmp = "center";
        break;
    
  }
  return /* tuple */[
          "resizeMode",
          tmp
        ];
}

function tintColor(param) {
  return /* tuple */[
          "tintColor",
          param
        ];
}

function overlayColor(param) {
  return /* tuple */[
          "overlayColor",
          param
        ];
}

function flatten(prim) {
  return prim;
}

var Transform = [
  make,
  makeAnimated,
  makeInterpolated
];

exports.style = style;
exports.flatten = flatten;
exports.combine = combine;
exports.concat = concat;
exports.alignContent = alignContent;
exports.alignItems = alignItems;
exports.alignSelf = alignSelf;
exports.aspectRatio = aspectRatio;
exports.borderBottomWidth = borderBottomWidth;
exports.borderLeftWidth = borderLeftWidth;
exports.borderRightWidth = borderRightWidth;
exports.borderTopWidth = borderTopWidth;
exports.borderWidth = borderWidth;
exports.flex = flex;
exports.display = display;
exports.flexBasis = flexBasis;
exports.flexGrow = flexGrow;
exports.flexDirection = flexDirection;
exports.flexShrink = flexShrink;
exports.flexWrap = flexWrap;
exports.justifyContent = justifyContent;
exports.margin = margin;
exports.marginBottom = marginBottom;
exports.marginHorizontal = marginHorizontal;
exports.marginLeft = marginLeft;
exports.marginRight = marginRight;
exports.marginTop = marginTop;
exports.marginVertical = marginVertical;
exports.maxHeight = maxHeight;
exports.maxWidth = maxWidth;
exports.minHeight = minHeight;
exports.minWidth = minWidth;
exports.overflow = overflow;
exports.padding = padding;
exports.paddingBottom = paddingBottom;
exports.paddingHorizontal = paddingHorizontal;
exports.paddingLeft = paddingLeft;
exports.paddingRight = paddingRight;
exports.paddingTop = paddingTop;
exports.paddingVertical = paddingVertical;
exports.position = position;
exports.top = top;
exports.left = left;
exports.right = right;
exports.bottom = bottom;
exports.height = height;
exports.width = width;
exports.zIndex = zIndex;
exports.direction = direction;
exports.shadowColor = shadowColor;
exports.shadowOffset = shadowOffset;
exports.shadowOpacity = shadowOpacity;
exports.shadowRadius = shadowRadius;
exports.Transform = Transform;
exports.backfaceVisibility = backfaceVisibility;
exports.backgroundColor = backgroundColor;
exports.borderColor = borderColor;
exports.borderTopColor = borderTopColor;
exports.borderRightColor = borderRightColor;
exports.borderBottomColor = borderBottomColor;
exports.borderLeftColor = borderLeftColor;
exports.borderRadius = borderRadius;
exports.borderTopLeftRadius = borderTopLeftRadius;
exports.borderTopRightRadius = borderTopRightRadius;
exports.borderStyle = borderStyle;
exports.borderBottomLeftRadius = borderBottomLeftRadius;
exports.borderBottomRightRadius = borderBottomRightRadius;
exports.opacity = opacity;
exports.elevation = elevation;
exports.color = color;
exports.fontFamily = fontFamily;
exports.fontSize = fontSize;
exports.fontStyle = fontStyle;
exports.fontWeight = fontWeight;
exports.lineHeight = lineHeight;
exports.textAlign = textAlign;
exports.textDecorationLine = textDecorationLine;
exports.textShadowColor = textShadowColor;
exports.textShadowOffset = textShadowOffset;
exports.textShadowRadius = textShadowRadius;
exports.includeFontPadding = includeFontPadding;
exports.textAlignVertical = textAlignVertical;
exports.fontVariant = fontVariant;
exports.letterSpacing = letterSpacing;
exports.textDecorationColor = textDecorationColor;
exports.textDecorationStyle = textDecorationStyle;
exports.writingDirection = writingDirection;
exports.resizeMode = resizeMode;
exports.tintColor = tintColor;
exports.overlayColor = overlayColor;
/* No side effect */