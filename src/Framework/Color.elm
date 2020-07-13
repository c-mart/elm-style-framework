module Framework.Color exposing
    ( background, black, black_bis, black_ter, blue, border, border_hover, code, code_background, cyan, danger, dark, green, grey, grey_dark, grey_darker, grey_light, grey_lighter, info, introspection, light, link, link_active, link_active_border, link_focus, link_focus_border, link_hover, link_hover_border, link_invert, link_visited, muted, orange, pre, pre_background, primary, purple, red, success, text, text_light, text_strong, transparent, turquoise, warning, white, white_bis, white_ter, yellow
    , disabledButtonBackground, disabledButtonFont
    )

{-| [Demo](https://lucamug.github.io/elm-style-framework/#/framework/Colors/Gray%20Scale)


# Functions

@docs background, black, black_bis, black_ter, blue, border, border_hover, code, code_background, cyan, danger, dark, green, grey, grey_dark, grey_darker, grey_light, grey_lighter, info, introspection, light, link, link_active, link_active_border, link_focus, link_focus_border, link_hover, link_hover_border, link_invert, link_visited, muted, orange, pre, pre_background, primary, purple, red, success, text, text_light, text_strong, transparent, turquoise, warning, white, white_bis, white_ter, yellow

-}

-- import Color

import StyleFrameworkColor
import Element exposing (Element, column)
import Element.Background
import Element.Border
import Element.Font
import Framework.Configuration exposing (conf)


{-| -}
introspection :
    { name : String
    , description : String
    , signature : String
    , variations : List ( String, List ( Element msg1, String ) )
    }
introspection =
    { name = "Colors"
    , description = ""
    , signature = "Color.Color"
    , variations =
        [ ( "Colors"
          , [ ( usageWrapper <| orange, "orange" )
            , ( usageWrapper <| yellow, "yellow" )
            , ( usageWrapper <| green, "green" )
            , ( usageWrapper <| turquoise, "turquoise" )
            , ( usageWrapper <| cyan, "cyan" )
            , ( usageWrapper <| blue, "blue" )
            , ( usageWrapper <| purple, "purple" )
            , ( usageWrapper <| red, "red" )
            ]
          )
        , ( "Gray Scale"
          , [ ( usageWrapper <| black, "black" )
            , ( usageWrapper <| black_bis, "black_bis" )
            , ( usageWrapper <| black_ter, "black_ter" )
            , ( usageWrapper <| grey_darker, "grey_darker" )
            , ( usageWrapper <| grey_dark, "grey_dark" )
            , ( usageWrapper <| grey, "grey" )
            , ( usageWrapper <| grey_light, "grey_light" )
            , ( usageWrapper <| grey_lighter, "grey_lighter" )
            , ( usageWrapper <| white_ter, "white_ter" )
            , ( usageWrapper <| white_bis, "white_bis" )
            , ( usageWrapper <| white, "white" )
            ]
          )
        , ( "Derived"
          , [ ( usageWrapper <| primary, "primary" )
            , ( usageWrapper <| info, "info" )
            , ( usageWrapper <| success, "success" )
            , ( usageWrapper <| warning, "warning" )
            , ( usageWrapper <| danger, "danger" )
            , ( usageWrapper <| light, "light" )
            , ( usageWrapper <| dark, "dark" )
            ]
          )
        , ( "Fonts"
          , [ ( usageWrapper <| text, "text" )
            , ( usageWrapper <| text_light, "text_light" )
            , ( usageWrapper <| text_strong, "text_strong" )
            , ( usageWrapper <| code, "code" )
            , ( usageWrapper <| code_background, "code_background" )
            , ( usageWrapper <| pre, "pre" )
            , ( usageWrapper <| pre_background, "pre_background" )
            ]
          )
        , ( "Links"
          , [ ( usageWrapper <| link, "link" )
            , ( usageWrapper <| link_invert, "link_invert" )
            , ( usageWrapper <| link_visited, "link_visited" )
            , ( usageWrapper <| link_hover, "link_hover" )
            , ( usageWrapper <| link_hover_border, "link_hover_border" )
            , ( usageWrapper <| link_focus, "link_focus" )
            , ( usageWrapper <| link_focus_border, "link_focus_border" )
            , ( usageWrapper <| link_active, "link_active" )
            , ( usageWrapper <| link_active_border, "link_active_border" )
            ]
          )
        , ( "Others"
          , [ -- Background
              ( usageWrapper <| background, "background" )

            -- Border
            , ( usageWrapper <| border, "border" )
            , ( usageWrapper <| border_hover, "border_hover" )

            -- Others
            , ( usageWrapper <| transparent, "transparent" )
            , ( usageWrapper <| muted, "muted" )
            , ( usageWrapper <| disabledButtonBackground, "disabledButtonBackground" )
            , ( usageWrapper <| disabledButtonFont, "disabledButtonFont" )
            ]
          )
        ]
    }


{-| -}
usageWrapper : StyleFrameworkColor.Color -> Element.Element msg
usageWrapper cl =
    Element.el
        [ Element.Background.color <| StyleFrameworkColor.toElementColor cl
        , Element.width <| Element.px 200
        , Element.padding 10
        , Element.Border.rounded 5
        , Element.Font.color <| StyleFrameworkColor.toElementColor <| StyleFrameworkColor.maximumContrast cl (StyleFrameworkColor.rgb 0 0 0) (StyleFrameworkColor.rgb 255 255 255)
        ]
    <|
        column []
            [ Element.text <| StyleFrameworkColor.colorToHex cl
            ]


{-| -}
background : StyleFrameworkColor.Color
background =
    conf.color.background


{-| -}
black : StyleFrameworkColor.Color
black =
    conf.color.black


{-| -}
black_bis : StyleFrameworkColor.Color
black_bis =
    conf.color.black_bis


{-| -}
black_ter : StyleFrameworkColor.Color
black_ter =
    conf.color.black_ter


{-| -}
blue : StyleFrameworkColor.Color
blue =
    conf.color.blue


{-| -}
border : StyleFrameworkColor.Color
border =
    conf.color.border


{-| -}
border_hover : StyleFrameworkColor.Color
border_hover =
    conf.color.border_hover


{-| -}
code : StyleFrameworkColor.Color
code =
    conf.color.code


{-| -}
code_background : StyleFrameworkColor.Color
code_background =
    conf.color.code_background


{-| -}
cyan : StyleFrameworkColor.Color
cyan =
    conf.color.cyan


{-| -}
danger : StyleFrameworkColor.Color
danger =
    conf.color.danger


{-| -}
dark : StyleFrameworkColor.Color
dark =
    conf.color.dark


{-| -}
green : StyleFrameworkColor.Color
green =
    conf.color.green


{-| -}
grey : StyleFrameworkColor.Color
grey =
    conf.color.grey


{-| -}
grey_dark : StyleFrameworkColor.Color
grey_dark =
    conf.color.grey_dark


{-| -}
grey_darker : StyleFrameworkColor.Color
grey_darker =
    conf.color.grey_darker


{-| -}
grey_light : StyleFrameworkColor.Color
grey_light =
    conf.color.grey_light


{-| -}
grey_lighter : StyleFrameworkColor.Color
grey_lighter =
    conf.color.grey_lighter


{-| -}
info : StyleFrameworkColor.Color
info =
    conf.color.info


{-| -}
light : StyleFrameworkColor.Color
light =
    conf.color.light


{-| -}
link : StyleFrameworkColor.Color
link =
    conf.color.link


{-| -}
link_active : StyleFrameworkColor.Color
link_active =
    conf.color.link_active


{-| -}
link_active_border : StyleFrameworkColor.Color
link_active_border =
    conf.color.link_active_border


{-| -}
link_focus : StyleFrameworkColor.Color
link_focus =
    conf.color.link_focus


{-| -}
link_focus_border : StyleFrameworkColor.Color
link_focus_border =
    conf.color.link_focus_border


{-| -}
link_hover : StyleFrameworkColor.Color
link_hover =
    conf.color.link_hover


{-| -}
link_hover_border : StyleFrameworkColor.Color
link_hover_border =
    conf.color.link_hover_border


{-| -}
link_invert : StyleFrameworkColor.Color
link_invert =
    conf.color.link_invert


{-| -}
link_visited : StyleFrameworkColor.Color
link_visited =
    conf.color.link_visited


{-| -}
muted : StyleFrameworkColor.Color
muted =
    conf.color.muted


{-| -}
orange : StyleFrameworkColor.Color
orange =
    conf.color.orange


{-| -}
pre : StyleFrameworkColor.Color
pre =
    conf.color.pre


{-| -}
pre_background : StyleFrameworkColor.Color
pre_background =
    conf.color.pre_background


{-| -}
primary : StyleFrameworkColor.Color
primary =
    conf.color.primary


{-| -}
purple : StyleFrameworkColor.Color
purple =
    conf.color.purple


{-| -}
red : StyleFrameworkColor.Color
red =
    conf.color.red


{-| -}
success : StyleFrameworkColor.Color
success =
    conf.color.success


{-| -}
text : StyleFrameworkColor.Color
text =
    conf.color.text


{-| -}
text_light : StyleFrameworkColor.Color
text_light =
    conf.color.text_light


{-| -}
text_strong : StyleFrameworkColor.Color
text_strong =
    conf.color.text_strong


{-| -}
transparent : StyleFrameworkColor.Color
transparent =
    conf.color.transparent


disabledButtonBackground : StyleFrameworkColor.Color
disabledButtonBackground =
    conf.color.grey_lighter


disabledButtonFont : StyleFrameworkColor.Color
disabledButtonFont =
    conf.color.grey_light


{-| -}
turquoise : StyleFrameworkColor.Color
turquoise =
    conf.color.turquoise


{-| -}
warning : StyleFrameworkColor.Color
warning =
    conf.color.warning


{-| -}
white : StyleFrameworkColor.Color
white =
    conf.color.white


{-| -}
white_bis : StyleFrameworkColor.Color
white_bis =
    conf.color.white_bis


{-| -}
white_ter : StyleFrameworkColor.Color
white_ter =
    conf.color.white_ter


{-| -}
yellow : StyleFrameworkColor.Color
yellow =
    conf.color.yellow
