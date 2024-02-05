function ArtisanShadowAdeptActionbarListener(config, state)
   if 
      state == 1
      and EEex_GameObject_GetSelected():getActiveStats().m_nKit == Shadow_Adept_IDS
      then
      EEex_Actionbar_SetButton(5, EEex_Actionbar_ButtonType.STEALTH)
   end
end
EEex_Actionbar_AddListener(ArtisanShadowAdeptActionbarListener)

function ArtisanShadowAdeptActionbarListener(config, state)
   if 
      state == 1
      and EEex_GameObject_GetSelected():getActiveStats().m_nKit == Shadow_Disciple_IDS
      then
      EEex_Actionbar_SetButton(5, EEex_Actionbar_ButtonType.STEALTH)
   end
end
EEex_Actionbar_AddListener(ArtisanShadowAdeptActionbarListener)

function ArtisanShadeWarriorActionbarListener(config, state)
   if 
      state == 7
      and EEex_GameObject_GetSelected():getActiveStats().m_nKit == Shade_Warrior_IDS
      then
      EEex_Actionbar_SetButton(5, EEex_Actionbar_ButtonType.STEALTH)
   end
end
EEex_Actionbar_AddListener(ArtisanShadeWarriorActionbarListener)

function ArtisanNightbringerActionbarListener(config, state)
   if 
      state == 14
      and EEex_GameObject_GetSelected():getActiveStats().m_nKit == Nightbringer_IDS
      then
      EEex_Actionbar_SetButton(5, EEex_Actionbar_ButtonType.STEALTH)
   end
end
EEex_Actionbar_AddListener(ArtisanNightbringerActionbarListener)

function ArtisanDarkJusticiarActionbarListener(config, state)
   if 
      state == 17
      and EEex_GameObject_GetSelected():getActiveStats().m_nKit == Dark_Justiciar_IDS
      then
      EEex_Actionbar_SetButton(5, EEex_Actionbar_ButtonType.STEALTH)
   end
end
EEex_Actionbar_AddListener(ArtisanDarkJusticiarActionbarListener)

function ArtisanNightsingerActionbarListener(config, state)
   if 
      state == 5
      and EEex_GameObject_GetSelected():getActiveStats().m_nKit == Nightsinger_IDS
      then
      EEex_Actionbar_SetButton(5, EEex_Actionbar_ButtonType.STEALTH)
   end
end
EEex_Actionbar_AddListener(ArtisanNightsingerActionbarListener)
