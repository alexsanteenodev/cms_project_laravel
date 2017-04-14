<?php

return [
    'plugin' => [
        'name' => 'Uživatelé',
        'description' => 'Správa front-end uživatelů.',
        'tab' => 'Uživatelé',
        'access_users' => 'Správa uživatelů',
        'access_groups' => 'Správa uživatelských skupin',
        'access_settings' => 'Správa nastavení uživatelů',
    ],
    'users' => [
        'menu_label' => 'Uživatelé',
        'all_users' => 'Seznam uživatelů',
        'new_user' => 'Vytvořit uživatele',
        'list_title' => 'Správa uživatelů',
        'activating' => 'Povoluji...',
        'trashed_hint_title' => 'Uživatel deaktivoval svůj účet',
        'trashed_hint_desc' => 'Uživatel zablokoval svůj účet a nechce se dále objevovat na stránkách. Může však svůj účet kdykoli obnovit přihlášením se zpět.',
        'banned_hint_title' => 'Uživatel byl zabanován',
        'banned_hint_desc' => 'Tento uživatel byl zablokován administrátorem a nebude moct se přihlásit.',
        'guest_hint_title' => 'Tento uživatel je host',
        'guest_hint_desc' => 'Tento uživatel je uložen pouze jako reference a musí se zaregistrovat před přihlášením.',
        'activate_warning_title' => 'Uživatel není aktivní!',
        'activate_warning_desc' => 'Tento uživatel nemohl být aktivován a nebude mít možnost se přihlásit.',
        'activate_confirm' => 'Opravdu chcete aktivovat tohoto uživatele?',
        'activated_success' => 'Uživatel byl úspěšně aktivován!',
        'activate_manually' => 'Aktivovat uživatele manuálně',
        'convert_guest_confirm' => 'Chcete převést hosta na uživatele?',
        'convert_guest_manually' => 'Převést na zaregistrovaného uživatele',
        'convert_guest_success' => 'Uživatel byl převeden na registrovaného uživatele',
        'delete_confirm' => 'Opravdu chcete smazat tohoto uživatele?',
        'unban_user' => 'Zrušit ban tohoto uživatele',
        'unban_confirm' => 'Opravdu chcete zrušit ban tohoto uživatele?',
        'unbanned_success' => 'Uživateli byl zrušen ban',
        'return_to_list' => 'Zpět na seznam uživatelů',
        'update_details' => 'Upravit detaily',
        'bulk_actions' => 'Hromadné akce',
        'delete_selected' => 'Odstranit vybrané',
        'delete_selected_confirm' => 'Chcete smazat vybrané uživatele?',
        'delete_selected_empty' => 'Nejdříve vyberte uživatele, které chcete smazat.',
        'delete_selected_success' => 'Vybraní uživatelé úspěšně odstraněni.',
        'deactivate_selected' => 'Deaktivovat vybrané',
        'deactivate_selected_confirm' => 'Deaktivovat vybrané uživatele?',
        'deactivate_selected_empty' => 'Musíte vybrat uživatele, které chcete deaktivovat.',
        'deactivate_selected_success' => 'Vybraní uživatelé byli úspěšně deaktivování.',
        'restore_selected' => 'Obnovit vybrané',
        'restore_selected_confirm' => 'Opravdu chcete obnovit vybrané uživatele?',
        'restore_selected_empty' => 'Musíte vybrat uživatele, které chcete obnovit.',
        'restore_selected_success' => 'Vybraní uživatele byli úspěšně obnoveni.',
        'ban_selected' => 'Zabanovat vybrané',
        'ban_selected_confirm' => 'Opravdu chcete zabanovat vybrané uživatele?',
        'ban_selected_empty' => 'Musíte vybrat uživatele, které chcete zabanovat.',
        'ban_selected_success' => 'Vybraní uživatelé byli úspěšně zabanováni.',
        'unban_selected' => 'Odbanovat vybrané',
        'unban_selected_confirm' => 'Opravdu chcete odbanovat vybrané uživatele?',
        'unban_selected_empty' => 'Musíte vybrat uživatele, které chcete odbanovat.',
        'unban_selected_success' => 'Vybraní uživatelé byli úspěšně odbanováni.',
    ],
    'settings' => [
        'users' => 'Uživatelé',
        'menu_label' => 'Správa uživatelů',
        'menu_description' => 'Správa nastavení uživatelů',
        'activation_tab' => 'Aktivace',
        'signin_tab' => 'Přihlášení',
        'registration_tab' => 'Registrace',
        'notifications_tab' => 'Notifikace',
        'allow_registration' => 'Povolit registraci uživatelů',
        'allow_registration_comment' => 'Pokud je registrace zakázaná, uživatelé lze vytvářet pouze v administraci.',
        'activate_mode' => 'Režim aktivace',
        'activate_mode_comment' => 'Vyberte jak má být uživatel aktivován.',
        'activate_mode_auto' => 'Automaticky',
        'activate_mode_auto_comment' => 'Aktivován automaticky ihned po registraci.',
        'activate_mode_user' => 'Aktivační e-mail',
        'activate_mode_user_comment' => 'Uživatel si aktivuje účet pomocí aktivačního e-mailu.',
        'activate_mode_admin' => 'Administrátorem',
        'activate_mode_admin_comment' => 'Pouze administrátor může aktivovat uživatele.',
        'welcome_template' => 'Uvítací šablona',
        'welcome_template_comment' => 'E-mailová šablona která se zašle uživateli po první aktivaci.',
        'require_activation' => 'Přihlášení vyžaduje aktivaci uživatele',
        'require_activation_comment' => 'Uživatelé musí mít aktivovaný účet, aby se mohl přihlásit.',
        'use_throttle' => 'Omezit opakované pokusy o přihlášení',
        'use_throttle_comment' => 'Při opakovaném pokusu o přihlášení dojde k suspendování uživatele.',
        'login_attribute' => 'Přihlašovací atribut',
        'login_attribute_comment' => 'Zvolte, jaký atribut bude použitý k přihlášení uživatele.',
        'no_mail_template' => 'Neposílat upozornění',
        'hint_templates' => 'Šablony můžete upravovat ve správě nastavení Mail > Mail Templates.',
    ],
    'user' => [
        'label' => 'Uživatel',
        'id' => 'ID',
        'username' => 'Uživatelské jméno',
        'name' => 'Jméno',
        'name_empty' => 'Anonym',
        'surname' => 'Příjmení',
        'email' => 'E-mail',
        'created_at' => 'Datum registrace',
        'last_seen' => 'Poslední přihlášení',
        'is_guest' => 'Host',
        'joined' => 'Registrován',
        'is_online' => 'Nyní on-line',
        'is_offline' => 'Nyní offline',
        'send_invite' => 'Poslat pozvánku e-mailem',
        'send_invite_comment' => 'Poslat uvítací e-mail obsahující přihlašovací jméno a heslo.',
        'create_password' => 'Vytvořit heslo',
        'create_password_comment' => 'Zadejte heslo které se bude používat k přihlašování.',
        'reset_password' => 'Nové heslo',
        'reset_password_comment' => 'Pro změnu hesla, zadejte nové heslo.',
        'confirm_password' => 'Nové heslo znovu pro kontrolu',
        'confirm_password_comment' => 'Zadejte heslo znovu pro kontrolu správnosti.',
        'groups' => 'Skupiny',
        'empty_groups' => 'V této skupině nejsou žádní uživatelé.',
        'avatar' => 'Obrázek',
        'details' => 'Detaily',
        'account' => 'Účet',
        'block_mail' => 'Zablokovat všechny odchozí e-maily pro tohoto uživatele.',
        'status_guest' => 'Host',
        'status_activated' => 'Aktivován',
        'status_registered' => 'Registrován',
    ],
    'group' => [
        'label' => 'Skupina',
        'id' => 'ID',
        'name' => 'Název',
        'description_field' => 'Popis skupiny',
        'code' => 'Kód',
        'code_comment' => 'Zadejte unikátní kód pro jednoznačnou identifikaci této skupiny.',
        'created_at' => 'Vytvořeno',
        'users_count' => 'Počet uživatelů',
    ],
    'groups' => [
        'menu_label' => 'Skupiny',
        'all_groups' => 'Uživatelské skupiny',
        'new_group' => 'Nová skupina',
        'delete_selected_confirm' => 'Opravdu chcete smazat vybrané skupiny?',
        'list_title' => 'Správa skupin',
        'delete_confirm' => 'Opravdu chcete odstranit tuto skupinu?',
        'delete_selected_success' => 'Vybrané skupiny byly úspěšně odstraněny.',
        'delete_selected_empty' => 'Musíte nejdřív vybrat skupiny které chcete smazat.',
        'return_to_list' => 'Zpět na seznam skupin',
        'return_to_users' => 'Zpět na seznam uživatelů',
        'create_title' => 'Vytvořit skupinu',
        'update_title' => 'Upravit skupinu',
        'preview_title' => 'Náhled skupiny',
    ],
    'login' => [
        'attribute_email' => 'E-mail',
        'attribute_username' => 'Uživatelské jméno',
    ],
    'account' => [
        'account' => 'Správa účtu',
        'account_desc' => 'Formuláře správy účtu a přihlášení',
        'redirect_to' => 'Přesměrovat na',
        'redirect_to_desc' => 'Název stránky pro přesměrování po úpravě údajů, přihlášení nebo registraci.',
        'code_param' => 'Parametr aktivačního kódu',
        'code_param_desc' => 'Parametr z URL stránky, který se použije pro aktivační kód',
        'invalid_user' => 'Uživatel s těmito údaji nebyl nalezen.',
        'invalid_activation_code' => 'Zadán nesprávný parametr pro aktivační kód',
        'invalid_deactivation_pass' => 'Zadané heslo není správné.',
        'success_activation' => 'Váš účet byl úspěšně aktivován.',
        'success_deactivation' => 'Váš účet byl úspěšně deaktivován. Mrzí nás, že odcházíte!',
        'success_saved' => 'Nastavení bylo úspěšně uloženo!',
        'login_first' => 'Nejdříve musíte být přihlášeni!',
        'already_active' => 'Váš účet je již aktivován!',
        'activation_email_sent' => 'Aktivační e-mail byl zaslán na e-mail, který byl zadán při registraci.',
        'registration_disabled' => 'Registrace jsou dočasně pozastaveny.',
        'sign_in' => 'Přihlášení',
        'register' => 'Registrace',
        'full_name' => 'Celé jméno',
        'email' => 'E-mail',
        'password' => 'Heslo',
        'login' => 'Přihlášení',
        'new_password' => 'Nové heslo',
        'new_password_confirm' => 'Potvrzení nového hesla'
    ],
    'reset_password' => [
        'reset_password' => 'Obnova hesla',
        'reset_password_desc' => 'Formulář obnovy hesla',
        'code_param' => 'Parametr kódu pro obnovu hesla',
        'code_param_desc' => 'Parametr URL použitý pro obnovu hesla'
    ],
    'session' => [
        'session' => 'Session',
        'session_desc' => 'Vloží do stránky informace o přihlášení s možností omezení přístupových práv.',
        'security_title' => 'Povolit pouze',
        'security_desc' => 'Kdo má přístup k této stránce.',
        'all' => 'Všichni',
        'users' => 'Uživatelé',
        'guests' => 'Hosti',
        'redirect_title' => 'Přesměrovat na',
        'redirect_desc' => 'Stránka pro přesměrování, pokud je přístup zamítnut.',
        'logout' => 'Byli jste úspěšně odhlášeni!'
    ]
];
