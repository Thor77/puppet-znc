# @summary ZNC init class
class znc (
    String $package_name,
    String $package_ensure,
    String $service_name,
    String $service_ensure,
) {
    contain znc::install
    contain znc::service
}
