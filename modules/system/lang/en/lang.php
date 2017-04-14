<?php

return [
    'app' => [
        'name' => 'OctoberCMS',
        'tagline' => 'Getting back to basics'
    ],
    'locale' => [
        'be' => 'Беларуская',
        'bg' => 'Български',
        'cs' => 'Čeština',
        'da' => 'Dansk',
        'en' => 'English (United States)',
        'en-au' => 'English (Australia)',
        'en-ca' => 'English (Canada)',
        'en-gb' => 'English (United Kingdom)',
        'de' => 'Deutsch',
        'el' => 'Ελληνικά',
        'es' => 'Español',
        'es-ar' => 'Español (Argentina)',
        'fa' => 'فارسی',
        'fr' => 'Français',
        'fr-ca' => 'Français (Canada)',
        'hu' => 'Magyar',
        'id' => 'Bahasa Indonesia',
        'it' => 'Italiano',
        'ja' => '日本語',
        'lv' => 'Latvijas',
        'nb-no' => 'Norsk (Bokmål)',
        'nl' => 'Nederlands',
        'pl' => 'Polskie',
        'pt-br' => 'Português (Brasil)',
        'ro' => 'Română',
        'ru' => 'Русский',
        'sv' => 'Svenska',
        'sk' => 'Slovenský',
        'tr' => 'Türkçe',
        'zh-cn' => '简体中文',
        'zh-tw' => '繁體中文'
    ],
    'directory' => [
        'create_fail' => 'Cannot create directory: :name'
    ],
    'file' => [
        'create_fail' => 'Cannot create file: :name'
    ],
    'combiner' => [
        'not_found' => "The combiner file ':name' is not found."
    ],
    'system' => [
        'name' => 'System',
        'menu_label' => 'System',
        'categories' => [
            'cms' => 'CMS',
            'misc' => 'Misc',
            'logs' => 'Logs',
            'mail' => 'Mail',
            'shop' => 'Shop',
            'team' => 'Team',
            'users' => 'Users',
            'system' => 'System',
            'social' => 'Social',
            'events' => 'Events',
            'customers' => 'Customers',
            'my_settings' => 'My Settings'
        ]
    ],
    'theme' => [
        'label' => 'Theme',
        'unnamed' => 'Unnamed theme',
        'name' => [
            'label' => 'Theme Name',
            'help' => 'Name the theme by its unique code. For example, RainLab.Vanilla'
        ],
    ],
    'themes' => [
        'install' => 'Install themes',
        'search' => 'search themes to install...',
        'installed' => 'Installed themes',
        'no_themes' => 'There are no themes installed from the marketplace.',
        'recommended' => 'Recommended',
        'remove_confirm' => 'Are you sure you want to remove this theme?'
    ],
    'plugin' => [
        'label' => 'Plugin',
        'unnamed' => 'Unnamed plugin',
        'name' => [
            'label' => 'Plugin Name',
            'help' => 'Name the plugin by its unique code. For example, RainLab.Blog'
        ]
    ],
    'plugins' => [
        'manage' => 'Manage plugins',
        'enable_or_disable' => 'Enable or disable',
        'enable_or_disable_title' => 'Enable or Disable Plugins',
        'install' => 'Install plugins',
        'install_products' => 'Install products',
        'search' => 'search plugins to install...',
        'installed' => 'Installed plugins',
        'no_plugins' => 'There are no plugins installed from the marketplace.',
        'recommended' => 'Recommended',
        'remove' => 'Remove',
        'refresh' => 'Refresh',
        'disabled_label' => 'Disabled',
        'disabled_help' => 'Plugins that are disabled are ignored by the application.',
        'frozen_label' => 'Freeze updates',
        'frozen_help' => 'Plugins that are frozen will be ignored by the update process.',
        'selected_amount' => 'Plugins selected: :amount',
        'remove_confirm' => 'Are you sure you want to remove this plugin?',
        'remove_success' => 'Successfully removed those plugins from the system.',
        'refresh_confirm' => 'Are you sure?',
        'refresh_success' => 'Successfully refreshed those plugins in the system.',
        'disable_confirm' => 'Are you sure?',
        'disable_success' => 'Successfully disabled those plugins.',
        'enable_success' => 'Successfully enabled those plugins.',
        'unknown_plugin' => 'Plugin has been removed from the file system.'
    ],
    'project' => [
        'name' => 'Project',
        'owner_label' => 'Owner',
        'attach' => 'Attach Project',
        'detach' => 'Detach Project',
        'none' => 'None',
        'id' => [
            'label' => 'Project ID',
            'help' => 'How to find your Project ID',
            'missing' => 'Please specify a Project ID to use.'
        ],
        'detach_confirm' => 'Are you sure you want to detach this project?',
        'unbind_success' => 'Project has been detached.'
    ],
    'settings' => [
        'menu_label' => 'Settings',
        'not_found' => 'Unable to find the specified settings.',
        'missing_model' => 'The settings page is missing a Model definition.',
        'update_success' => ':name settings updated',
        'return' => 'Return to system settings',
        'search' => 'Search'
    ],
    'mail' => [
        'log_file' => 'Log file',
        'menu_label' => 'Mail configuration',
        'menu_description' => 'Manage email configuration.',
        'general' => 'General',
        'method' => 'Mail method',
        'sender_name' => 'Sender name',
        'sender_email' => 'Sender email',
        'php_mail' => 'PHP mail',
        'smtp' => 'SMTP',
        'smtp_address' => 'SMTP address',
        'smtp_authorization' => 'SMTP authorization required',
        'smtp_authorization_comment' => 'Use this checkbox if your SMTP server requires authorization.',
        'smtp_username' => 'Username',
        'smtp_password' => 'Password',
        'smtp_port' => 'SMTP port',
        'smtp_ssl' => 'SSL connection required',
        'smtp_encryption' => 'SMTP encryption protocol',
        'smtp_encryption_none' => 'No encryption',
        'smtp_encryption_tls' => 'TLS',
        'smtp_encryption_ssl' => 'SSL',
        'sendmail' => 'Sendmail',
        'sendmail_path' => 'Sendmail path',
        'sendmail_path_comment' => 'Please specify the path of the sendmail program.',
        'mailgun' => 'Mailgun',
        'mailgun_domain' => 'Mailgun domain',
        'mailgun_domain_comment' => 'Please specify the Mailgun domain name.',
        'mailgun_secret' => 'Mailgun secret',
        'mailgun_secret_comment' => 'Enter your Mailgun API key.',
        'mandrill' => 'Mandrill',
        'mandrill_secret' => 'Mandrill secret',
        'mandrill_secret_comment' => 'Enter your Mandrill API key.',
        'ses' => 'SES',
        'ses_key' => 'SES key',
        'ses_key_comment' => 'Enter your SES API key',
        'ses_secret' => 'SES secret',
        'ses_secret_comment' => 'Enter your SES API secret key',
        'ses_region' => 'SES region',
        'ses_region_comment' => 'Enter your SES region (e.g. us-east-1)',
        'drivers_hint_header' => 'Drivers not installed',
        'drivers_hint_content' => 'This mail method requires the plugin ":plugin" be installed before you can send mail.'
    ],
    'mail_templates' => [
        'menu_label' => 'Mail templates',
        'menu_description' => 'Modify the mail templates that are sent to users and administrators, manage email layouts.',
        'new_template' => 'New Template',
        'new_layout' => 'New Layout',
        'template' => 'Template',
        'templates' => 'Templates',
        'menu_layouts_label' => 'Mail Layouts',
        'layout' => 'Layout',
        'layouts' => 'Layouts',
        'no_layout' => '-- No layout --',
        'name' => 'Name',
        'name_comment' => 'Unique name used to refer to this template',
        'code' => 'Code',
        'code_comment' => 'Unique code used to refer to this template',
        'subject' => 'Subject',
        'subject_comment' => 'Email message subject',
        'description' => 'Description',
        'content_html' => 'HTML',
        'content_css' => 'CSS',
        'content_text' => 'Plaintext',
        'test_send' => 'Send test message',
        'test_success' => 'Test message sent.',
        'test_confirm' => 'Send test message to :email. Continue?',
        'creating' => 'Creating Template...',
        'creating_layout' => 'Creating Layout...',
        'saving' => 'Saving Template...',
        'saving_layout' => 'Saving Layout...',
        'delete_confirm' => 'Delete this template?',
        'delete_layout_confirm' => 'Delete this layout?',
        'deleting' => 'Deleting Template...',
        'deleting_layout' => 'Deleting Layout...',
        'sending' => 'Sending test message...',
        'return' => 'Return to template list'
    ],
    'install' => [
        'project_label' => 'Attach to Project',
        'plugin_label' => 'Install Plugin',
        'theme_label' => 'Install Theme',
        'missing_plugin_name' => 'Please specify a Plugin name to install.',
        'missing_theme_name' => 'Please specify a Theme name to install.',
        'install_completing' => 'Finishing installation process',
        'install_success' => 'Plugin installed successfully'
    ],
    'updates' => [
        'title' => 'Manage Updates',
        'name' => 'Software update',
        'menu_label' => 'Updates & Plugins',
        'menu_description' => 'Update the system, manage and install plugins and themes.',
        'return_link' => 'Return to system updates',
        'check_label' => 'Check for updates',
        'retry_label' => 'Try again',
        'plugin_name' => 'Name',
        'plugin_code' => 'Code',
        'plugin_description' => 'Description',
        'plugin_version' => 'Version',
        'plugin_author' => 'Author',
        'plugin_not_found' => 'Plugin not found',
        'core_current_build' => 'Current build',
        'core_build' => 'Build :build',
        'core_build_help' => 'Latest build is available.',
        'core_downloading' => 'Downloading application files',
        'core_extracting' => 'Unpacking application files',
        'plugins' => 'Plugins',
        'themes' => 'Themes',
        'disabled' => 'Disabled',
        'plugin_downloading' => 'Downloading plugin: :name',
        'plugin_extracting' => 'Unpacking plugin: :name',
        'plugin_version_none' => 'New plugin',
        'plugin_current_version' => 'Current version',
        'theme_new_install' => 'New theme installation.',
        'theme_downloading' => 'Downloading theme: :name',
        'theme_extracting' => 'Unpacking theme: :name',
        'update_label' => 'Update software',
        'update_completing' => 'Finishing update process',
        'update_loading' => 'Loading available updates...',
        'update_success' => 'Update process complete',
        'update_failed_label' => 'Update failed',
        'force_label' => 'Force update',
        'found' => [
            'label' => 'Found new updates!',
            'help' => 'Click Update software to begin the update process.'
        ],
        'none' => [
            'label' => 'No updates',
            'help' => 'No new updates were found.'
        ],
        'important_action' => [
            'empty' => 'Select action',
            'confirm' => 'Confirm update',
            'skip' => 'Skip this update (once only)',
            'ignore' => 'Skip this update (always)'
        ],
        'important_action_required' => 'Action required',
        'important_view_guide' => 'View upgrade guide',
        'important_view_release_notes' => 'View release notes',
        'important_alert_text' => 'Some updates need your attention.',
        'details_title' => 'Plugin details',
        'details_view_homepage' => 'View homepage',
        'details_readme' => 'Documentation',
        'details_readme_missing' => 'There is no documentation provided.',
        'details_changelog' => 'Changelog',
        'details_changelog_missing' => 'There is no changelog provided.',
        'details_upgrades' => 'Upgrade Guide',
        'details_upgrades_missing' => 'There are no upgrade instructions provided.',
        'details_licence' => 'Licence',
        'details_licence_missing' => 'There is no licence provided.',
        'details_current_version' => 'Current version',
        'details_author' => 'Author'
    ],
    'server' => [
        'connect_error' => 'Error connecting to the server.',
        'response_not_found' => 'The update server could not be found.',
        'response_invalid' => 'Invalid response from the server.',
        'response_empty' => 'Empty response from the server.',
        'file_error' => 'Server failed to deliver the package.',
        'file_corrupt' => 'File from server is corrupt.'
    ],
    'behavior' => [
        'missing_property' => 'Class :class must define property $:property used by :behavior behavior.'
    ],
    'config' => [
        'not_found' => 'Unable to find configuration file :file defined for :location.',
        'required' => "Configuration used in :location must supply a value ':property'."
    ],
    'zip' => [
        'extract_failed' => "Unable to extract core file ':file'."
    ],
    'event_log' => [
        'hint' => 'This log displays a list of potential errors that occur in the application, such as exceptions and debugging information.',
        'menu_label' => 'Event log',
        'menu_description' => 'View system log messages with their recorded time and details.',
        'empty_link' => 'Empty event log',
        'empty_loading' => 'Emptying event log...',
        'empty_success' => 'Event log emptied',
        'return_link' => 'Return to event log',
        'id' => 'ID',
        'id_label' => 'Event ID',
        'created_at' => 'Date & Time',
        'message' => 'Message',
        'level' => 'Level',
        'preview_title' => 'Event'
    ],
    'request_log' => [
        'hint' => 'This log displays a list of browser requests that may require attention. For example, if a visitor opens a CMS page that cannot be found, a record is created with the status code 404.',
        'menu_label' => 'Request log',
        'menu_description' => 'View bad or redirected requests, such as Page not found (404).',
        'empty_link' => 'Empty request log',
        'empty_loading' => 'Emptying request log...',
        'empty_success' => 'Request log emptied',
        'return_link' => 'Return to request log',
        'id' => 'ID',
        'id_label' => 'Log ID',
        'count' => 'Counter',
        'referer' => 'Referers',
        'url' => 'URL',
        'status_code' => 'Status',
        'preview_title' => 'Request'
    ],
    'permissions' => [
        'name' => 'System',
        'manage_system_settings' => 'Manage system settings',
        'manage_software_updates' => 'Manage software updates',
        'access_logs' => 'View system logs',
        'manage_mail_templates' => 'Manage mail templates',
        'manage_mail_settings' => 'Manage mail settings',
        'manage_other_administrators' => 'Manage other administrators',
        'manage_preferences' => 'Manage backend preferences',
        'manage_editor' => 'Manage code editor preferences',
        'view_the_dashboard' => 'View the dashboard',
        'manage_branding' => 'Customize the back-end'
    ],
    'log' => [
        'menu_label' => 'Log settings',
        'menu_description' => 'Specify which areas should use logging.',
        'default_tab' => 'Logging',
        'log_events' => 'Log system events',
        'log_events_comment' => 'Store system events in the database in addition to the file-based log.',
        'log_requests' => 'Log bad requests',
        'log_requests_comment' => 'Browser requests that may require attention, such as 404 errors.',
        'log_theme' => 'Log theme changes',
        'log_theme_comment' => 'When a change is made to the theme using the back-end.',
    ]
];
