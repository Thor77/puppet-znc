# @summary Manage ZNC package
class znc::install {
    package { $znc::package_name:
        ensure => $znc::package_ensure,
    }
}
