# @summary Manage ZNC service
class znc::service {
    systemd::unit_file { 'znc.service':
        source  => 'puppet:///modules/znc/znc.service',
        enable  => true,
        active  => true,
        require => [
            Package[$znc::package_name],
            User['znc'],
        ],
    }
}
