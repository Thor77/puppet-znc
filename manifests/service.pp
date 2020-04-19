# @summary Manage ZNC service
class znc::service {
    $service_active = $znc::service_ensure == 'running'
    systemd::unit_file { "${znc::service_name}.service":
        source  => 'puppet:///modules/znc/znc.service',
        enable  => $service_active,
        active  => $service_active,
        require => [
            Package[$znc::package_name],
            User['znc'],
        ],
    }
}
