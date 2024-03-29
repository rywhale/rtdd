% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/dd_hydro_data.R
\name{dd_hydro_data}
\alias{dd_hydro_data}
\title{dd_hydro_data}
\usage{
dd_hydro_data(station_id, prov_terr, update_interval = "hourly",
  all_stns = FALSE)
}
\arguments{
\item{station_id}{The official Water Survey of Canada gauge ID. See \code{?dd_hydro_meta}}

\item{prov_terr}{Province/territory short code. \describe{
  \item{NB}{New Brunswick}
  \item{PE}{Prince Edward Island}
  \item{NS}{Nova Scotia}
  \item{ON}{Ontario}
  \item{QC}{Quebec}
  \item{NL}{Newfoundland}
  \item{MB}{Manitoba}
  \item{AB}{Alberta}
  \item{SK}{Saskatchewan}
  \item{NU}{Nunavut}
  \item{NT}{Northwest Territories}
  \item{BC}{British Columbia}
  \item{YT}{Yukon}
}}

\item{update_interval}{\describe{
  \item{hourly}{(Default) Last 2 complete days of data plus the current incomplete day}
  \item{daily}{Last 30 complete days of data plus the current incomplete day}
}}

\item{all_stns}{\describe{
  \item{FALSE}{(Default) Only return data for stations specified with station_id}
  \item{TRUE}{Return data for all stations in region specified with prov_terr}
}}
}
\value{
Tibble with following columns \describe{
  \item{STATION_ID}{WSC station identifier. See \code{?dd_hydro_meta}}
  \item{TIMESTAMP}{Timestamp for measurement in UTC}
  \item{WATER_LEVEL}{Water level measurement (m). See WSC website for datumn info.}
  \item{QA_QC_WL}{Quality assurance/quality control flag for the water level (1 = preliminary, 2 = reviewed, 3 = checked, 4 = approved)}
  \item{DISCHARGE}{Discharge measurement (cms)}
  \item{QA_QC_DIS}{Quality assurance/quality control flag for the discharge (1 = preliminary, 2 = reviewed, 3 = checked, 4 = approved)}
}
}
\description{
Get near real-time data for Water Survey of Canada gauges via DataMart.
#' See \href{https://dd.weather.gc.ca/hydrometric/doc/hydrometric_README.txt}{DataMart documentation} for more info.
}
\examples{
dd_hydro_data(station_id = "02HA006", prov_terr = "ON")

}
