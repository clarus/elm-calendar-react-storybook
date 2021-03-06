module Calendar.Model exposing (..)

import Date exposing (Date)
import Calendar.Utils exposing (monthDates)


type alias Model =
    { selectedMonthIndex : Int
    , selectedStartDay : Maybe Date
    , selectedEndDay : Maybe Date
    , hoveredDay : Maybe Date
    , currentDates : List Date
    }


type DayState
    = Normal
    | Dimmed
    | Disabled
    | Selected
    | Hovered


model : Model
model =
    { selectedMonthIndex = 9
    , selectedStartDay = Nothing
    , selectedEndDay = Nothing
    , hoveredDay = Nothing
    , currentDates = monthDates 2016 (Date.Oct)
    }
