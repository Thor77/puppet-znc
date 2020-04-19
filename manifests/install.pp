# @summary Manage ZNC package
class znc::install {
    package { $znc::package_name:
        ensure => $znc::package_ensure,
    }

    group { 'znc':
        ensure => 'present',
    } -> user { 'znc':
        ensure     => 'present',
        gid        => 'znc',
        system     => true,
        home       => '/var/lib/znc',
        managehome => true,
    }
}
