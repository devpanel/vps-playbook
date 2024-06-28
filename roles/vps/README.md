# VPS Ansible Role

This roles help DevPanel move all of files in the `APP_ROOT` directory to the `APP_ROOT` of VPS.

**Noted:**

- DevPanel excludes .git folder when moving files.

## Variables

| Name                | Description                                                                                                | Type   | Default               | Required |
| ------------------- | ---------------------------------------------------------------------------------------------------------- | ------ | --------------------- | :------: |
| VPS_username        | username to login to the VPS                                                                               | string |                       |   yes    |
| VPS_publicIp        | Public Ip of VPS                                                                                           | string |                       |   yes    |
| VPS_privateKey      | The private key of VPS that we use to to rsyc                                                              | string |                       |   yes    |
| VPS_source          | `APP_ROOT` into DevPanel container                                                                         | string | $APP_ROOT             |   yes    |
| VPS_dest            | `APP_ROOT` in VPS                                                                                          | string | ~/.devpanel/www/html/ |   yes    |
| VPS_applicationName | name of application would like to deploy to the VPS                                                        | string |                       |   yes    |
| VPS_applicationType | type of application would like to deploy to the VPS (For exp: drupal8, drupal8_v2, wordpress...)           | string |                       |   yes    |
| VPS_isIncludeFiles  | - If `true`, DevPanel moves source-code and static files<br />-If `false`, DevPanel moves source-code only | string | true                  |          |
| VPS_namespace       | the namespace name where the application is installed                                                      | string | default               |          |
| VPS_state           | - If `deploy`, DevPanel moves all of file in source to dest                                                | string | deploy                |          |
| VPS_hooksPath       | path of hooks file in `APP_ROOT`                                                                           | string | .devpanel/hooks.yml   |          |
