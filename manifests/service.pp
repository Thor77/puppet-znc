# @summary Manage ZNC service
class znc::service {
  service { $znc::service_name:
    ensure => $znc::service_ensure,
    enable => $znc::service_ensure == 'runnng',
  }
}
