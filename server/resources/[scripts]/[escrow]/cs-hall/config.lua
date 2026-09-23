config = {
    -- Set whether you want to be informed in your server's console about updates regarding this resource.
    ['updatesCheck'] = true,

    -- Enabling debug will draw lines useful for debugging, especially when creating a new config entry.
    ['debug'] = false,

    -- The DUI URL, by default loaded locally.
    ['duiUrl'] = 'https://cfx-nui-' .. GetCurrentResourceName() .. '/client/dui/index.html',

    -- Strings through-out the resource to translate them if you wish.
    ['lang'] = {
        ['addToQueue'] = 'Add to Queue',
        ['bassSmoke'] = 'Bass Smoke',
        ['bassSparklers'] = 'Bass Sparklers',
        ['triggerSmoke'] = 'Trigger Smoke',
        ['triggerSparklers'] = 'Trigger Sparklers',
        ['whiteSpotlights'] = 'White Spotlights',
        ['dynamicSpotlights'] = 'Dynamic Spotlights',
        ['photorythmicSpotlights'] = 'Photorythmic Spotlights',
        ['videoToggle'] = 'Video Toggle',
        ['screenControl'] = 'Screen Control',
        ['remoteControl'] = 'Remote Control',
        ['play'] = 'Play',
        ['queueNow'] = 'Queue Now',
        ['queueNext'] = 'Queue Next',
        ['remove'] = 'Remove',
        ['pause'] = 'Pause',
        ['stop'] = 'Stop',
        ['skip'] = 'Skip',
        ['loop'] = 'Loop',
        ['volume'] = 'Volume',
        ['invalidUrl'] = 'URL invalid.',
        ['invalidYouTubeUrl'] = 'YouTube URL invalid.',
        ['invalidTwitchUrl'] = 'Twitch URL invalid.',
        ['urlPlaceholder'] = 'YouTube / Twitch URL',
        ['sourceError'] = 'Playable media error occured.',
        ['twitchChannelOffline'] = 'Twitch channel offline.',
        ['twitchVodSubOnly'] = 'Twitch video subs-only.',
        ['twitchError'] = 'Twitch error occured.',
        ['youtubeError'] = 'YouTube error occured.',
        ['sourceNotFound'] = 'Playable media not be found.',
        ['liveFeed'] = 'Live Feed',
        ['twitchClip'] = 'Twitch Clip',
        ['queueLimitReached'] = 'The queue has already too many entries.',
        ['scenes'] = 'Scenes',
        ['allUrlPlaceholder'] = 'URL',
        ['frame'] = 'Frame'
    },

    -- Loading related timeouts, default values should work in most servers.
    ['timeouts'] = {
        ['scaleformRequestMs'] = 30000,
        ['assetLoadMs'] = 30000,
        ['syncAssetLoadMs'] = 3000
    },

    -- Visit our Discord over at https://criticalscripts.shop/discord to get more entries and share yours too!

    ['entries'] = {

        ['Laura'] = {
            ['enabled'] = true,
            ['autoAdjustTime'] = false,
            -- ['perm'] = 'Dj',
            ['idleWallpaperUrl'] = 'https://i.imgur.com/fpdbx9Z.gif',
            ['maxVolumePercent'] = 100,
            ['smokeFxMultiplier'] = 3,
            ['smokeTimeoutMs'] = 5000,
            ['sparklerFxMultiplier'] = 1,
            ['sparklerTimeoutMs'] = 1500,
            ['delayBetweenSmokeChainMs'] = 1500,
            ['delayToTriggerBassEffectsAfterPlayingMs'] = 2500,
            ['featureDelayWithControllerInterfaceClosedMs'] = 500,

            ['bass'] = {
                ['smoke'] = {
                    ['cooldownMs'] = 10000,
                    ['colorWithDynamicSpotlights'] = true
                },

                ['sparklers'] = {
                    ['cooldownMs'] = 10000,
                    ['colorWithDynamicSpotlights'] = true
                }
            },

            ['area'] = {
                ['range'] = 140.0,
                ['center'] = vector3(-3132.84, 1394.87, 23.24),
                ['height'] = nil,
                ['polygons'] = nil
            },

            ['disableEmitters'] = nil,
            ['scaleform'] = nil,

            ['replacers'] = {
                ['ba_prop_battle_club_screen'] = 'script_rt_club_tv',
                ['h4_prop_battle_club_projector'] = 'script_rt_club_projector',
                ['v_ilev_cin_screen'] = 'script_rt_cinscreen',
                ['text_teloes'] = 'telao',
                
               
            },

            ['screens'] = {

                {
                    ['hash'] = 'telao_favela',
                    ['position'] = vector3(-3132.94, 1394.97, 29.34),
                    ['rotation'] = nil,
                    ['heading'] = 141.21,
                    ['lodDistance'] = 500,

                    ['advance'] = {
                        ['durationMs'] = 3000,
                        ['position'] = vector3(-3132.94, 1394.97, 29.34-15)
                    },
                },

            },

            ['spotlights'] = {

            },
       
            ['smokers'] = {
            },
        
            ['sparklers'] = {

            },

            ['speakers'] = {
                {
                    ['hash'] = 'ba_prop_battle_club_speaker_large',
                    ['visible'] = false,
                    ['position'] = vector3(-3130.55, 1393.00, 23.24),
                    ['rotation'] = nil,
                    ['heading'] = 319.09,
                    ['lodDistance'] = nil,
                    ['soundOffset'] = nil,
                    ['distanceOffset'] = nil,
                    ['maxDistance'] = 100.0,
                    ['refDistance'] = 50.0,
                    ['rolloffFactor'] = 1.25,
                    ['coneInnerAngle'] = 90,
                    ['coneOuterAngle'] = 180,
                    ['coneOuterGain'] = 0.5,
                    ['fadeDurationMs'] = 250,
                    ['volumeMultiplier'] = 1.0,
                    ['lowPassGainReductionPercent'] = 15
                },


                {
                    ['hash'] = 'ba_prop_battle_club_speaker_large',
                    ['visible'] = false,
                    ['position'] = vector3(-3135.34, 1397.00, 23.24),
                    ['rotation'] = nil,
                    ['heading'] = 317.16,
                    ['lodDistance'] = nil,
                    ['soundOffset'] = vector3(0.0, 0.0, 1.4),
                    ['distanceOffset'] = nil,
                    ['maxDistance'] = 100.0,
                    ['refDistance'] = 50.0,
                    ['rolloffFactor'] = 1.25,
                    ['coneInnerAngle'] = 90,
                    ['coneOuterAngle'] = 180,
                    ['coneOuterGain'] = 0.5,
                    ['fadeDurationMs'] = 250,
                    ['volumeMultiplier'] = 1.0,
                    ['lowPassGainReductionPercent'] = 15
                },
            } 
        },

        ['FavelaOsasco'] = {
            ['enabled'] = true,
            ['autoAdjustTime'] = false,
            -- ['perm'] = 'Dj',
            ['idleWallpaperUrl'] = 'https://i.imgur.com/fpdbx9Z.gif',
            ['maxVolumePercent'] = 100,
            ['smokeFxMultiplier'] = 3,
            ['smokeTimeoutMs'] = 5000,
            ['sparklerFxMultiplier'] = 1,
            ['sparklerTimeoutMs'] = 1500,
            ['delayBetweenSmokeChainMs'] = 1500,
            ['delayToTriggerBassEffectsAfterPlayingMs'] = 2500,
            ['featureDelayWithControllerInterfaceClosedMs'] = 500,

            ['bass'] = {
                ['smoke'] = {
                    ['cooldownMs'] = 10000,
                    ['colorWithDynamicSpotlights'] = true
                },

                ['sparklers'] = {
                    ['cooldownMs'] = 10000,
                    ['colorWithDynamicSpotlights'] = true
                }
            },

            ['area'] = {
                ['range'] = 140.0,
                ['center'] = vector3(384.48, 3336.81, 71.42),
                ['height'] = nil,
                ['polygons'] = nil
            },

            ['disableEmitters'] = nil,
            ['scaleform'] = nil,

            ['replacers'] = {
                ['ba_prop_battle_club_screen'] = 'script_rt_club_tv',
                ['h4_prop_battle_club_projector'] = 'script_rt_club_projector',
                ['v_ilev_cin_screen'] = 'script_rt_cinscreen',
                ['text_teloes'] = 'telao',
                
               
            },

            ['screens'] = {

                {
                    ['hash'] = 'telao_favela',
                    ['position'] = vector3(384.48, 3336.81, 73.62),
                    ['rotation'] = nil,
                    ['heading'] = 166.04,
                    ['lodDistance'] = 500,

                    ['advance'] = {
                        ['durationMs'] = 3000,
                        ['position'] = vector3(384.48, 3336.81, 73.62-15)
                    },
                },

            },

            ['spotlights'] = {

            },
       
            ['smokers'] = {
            },
        
            ['sparklers'] = {

            },

            ['speakers'] = {
                {
                    ['hash'] = 'ba_prop_battle_club_speaker_large',
                    ['visible'] = false,
                    ['position'] = vector3(389.93, 3341.06, 71.42),
                    ['rotation'] = nil,
                    ['heading'] = 164.48,
                    ['lodDistance'] = nil,
                    ['soundOffset'] = nil,
                    ['distanceOffset'] = nil,
                    ['maxDistance'] = 100.0,
                    ['refDistance'] = 50.0,
                    ['rolloffFactor'] = 1.25,
                    ['coneInnerAngle'] = 90,
                    ['coneOuterAngle'] = 180,
                    ['coneOuterGain'] = 0.5,
                    ['fadeDurationMs'] = 250,
                    ['volumeMultiplier'] = 1.0,
                    ['lowPassGainReductionPercent'] = 15
                },


                {
                    ['hash'] = 'ba_prop_battle_club_speaker_large',
                    ['visible'] = false,
                    ['position'] = vector3(381.64, 3343.81, 71.42),
                    ['rotation'] = nil,
                    ['heading'] = 162.20,
                    ['lodDistance'] = nil,
                    ['soundOffset'] = vector3(0.0, 0.0, 1.4),
                    ['distanceOffset'] = nil,
                    ['maxDistance'] = 100.0,
                    ['refDistance'] = 50.0,
                    ['rolloffFactor'] = 1.25,
                    ['coneInnerAngle'] = 90,
                    ['coneOuterAngle'] = 180,
                    ['coneOuterGain'] = 0.5,
                    ['fadeDurationMs'] = 250,
                    ['volumeMultiplier'] = 1.0,
                    ['lowPassGainReductionPercent'] = 15
                },
            } 
        },

        ['FavelaBrasilandia'] = {
            ['enabled'] = true,
            ['autoAdjustTime'] = false,
            -- ['perm'] = 'Dj',
            ['idleWallpaperUrl'] = 'https://i.imgur.com/fpdbx9Z.gif',
            ['maxVolumePercent'] = 100,
            ['smokeFxMultiplier'] = 3,
            ['smokeTimeoutMs'] = 5000,
            ['sparklerFxMultiplier'] = 1,
            ['sparklerTimeoutMs'] = 1500,
            ['delayBetweenSmokeChainMs'] = 1500,
            ['delayToTriggerBassEffectsAfterPlayingMs'] = 2500,
            ['featureDelayWithControllerInterfaceClosedMs'] = 500,

            ['bass'] = {
                ['smoke'] = {
                    ['cooldownMs'] = 10000,
                    ['colorWithDynamicSpotlights'] = true
                },

                ['sparklers'] = {
                    ['cooldownMs'] = 10000,
                    ['colorWithDynamicSpotlights'] = true
                }
            },

            ['area'] = {
                ['range'] = 140.0,
                ['center'] = vector3(948.86, 509.13, 122.54),
                ['height'] = nil,
                ['polygons'] = nil
            },

            ['disableEmitters'] = nil,
            ['scaleform'] = nil,

            ['replacers'] = {
                ['ba_prop_battle_club_screen'] = 'script_rt_club_tv',
                ['h4_prop_battle_club_projector'] = 'script_rt_club_projector',
                ['v_ilev_cin_screen'] = 'script_rt_cinscreen',
                ['text_teloes'] = 'telao',
                
               
            },

            ['screens'] = {

                {
                    ['hash'] = 'telao_favela',
                    ['position'] = vector3(948.86, 509.13, 124.54),
                    ['rotation'] = nil,
                    ['heading'] = -17.50,
                    ['lodDistance'] = 500,

                    ['advance'] = {
                        ['durationMs'] = 3000,
                        ['position'] = vector3(948.86, 509.13, 124.54-15)
                    },
                },

            },

            ['spotlights'] = {

            },
       
            ['smokers'] = {
            },
        
            ['sparklers'] = {

            },

            ['speakers'] = {
                {
                    ['hash'] = 'ba_prop_battle_club_speaker_large',
                    ['visible'] = false,
                    ['position'] = vector3(953.83, 506.32, 122.54),
                    ['rotation'] = nil,
                    ['heading'] = 320.01,
                    ['lodDistance'] = nil,
                    ['soundOffset'] = nil,
                    ['distanceOffset'] = nil,
                    ['maxDistance'] = 100.0,
                    ['refDistance'] = 50.0,
                    ['rolloffFactor'] = 1.25,
                    ['coneInnerAngle'] = 90,
                    ['coneOuterAngle'] = 180,
                    ['coneOuterGain'] = 0.5,
                    ['fadeDurationMs'] = 250,
                    ['volumeMultiplier'] = 1.0,
                    ['lowPassGainReductionPercent'] = 15
                },


                {
                    ['hash'] = 'ba_prop_battle_club_speaker_large',
                    ['visible'] = false,
                    ['position'] = vector3(942.61, 510.00, 122.56),
                    ['rotation'] = nil,
                    ['heading'] = 12.43,
                    ['lodDistance'] = nil,
                    ['soundOffset'] = vector3(0.0, 0.0, 1.4),
                    ['distanceOffset'] = nil,
                    ['maxDistance'] = 100.0,
                    ['refDistance'] = 50.0,
                    ['rolloffFactor'] = 1.25,
                    ['coneInnerAngle'] = 90,
                    ['coneOuterAngle'] = 180,
                    ['coneOuterGain'] = 0.5,
                    ['fadeDurationMs'] = 250,
                    ['volumeMultiplier'] = 1.0,
                    ['lowPassGainReductionPercent'] = 15
                },
            } 
        },

        ['Renato01'] = {
            ['enabled'] = true,
            ['autoAdjustTime'] = false,
            -- ['perm'] = 'Dj',
            ['idleWallpaperUrl'] = 'https://i.imgur.com/fpdbx9Z.gif',
            ['maxVolumePercent'] = 100,
            ['smokeFxMultiplier'] = 3,
            ['smokeTimeoutMs'] = 5000,
            ['sparklerFxMultiplier'] = 1,
            ['sparklerTimeoutMs'] = 1500,
            ['delayBetweenSmokeChainMs'] = 1500,
            ['delayToTriggerBassEffectsAfterPlayingMs'] = 2500,
            ['featureDelayWithControllerInterfaceClosedMs'] = 500,

            ['bass'] = {
                ['smoke'] = {
                    ['cooldownMs'] = 10000,
                    ['colorWithDynamicSpotlights'] = true
                },

                ['sparklers'] = {
                    ['cooldownMs'] = 10000,
                    ['colorWithDynamicSpotlights'] = true
                }
            },

            ['area'] = {
                ['range'] = 70.0,
                ['center'] = vector3(1466.72, 1110.61, 120.18),
                ['height'] = nil,
                ['polygons'] = nil
            },

            ['disableEmitters'] = nil,
            ['scaleform'] = nil,

            ['replacers'] = {
                ['ba_prop_battle_club_screen'] = 'script_rt_club_tv',
                ['h4_prop_battle_club_projector'] = 'script_rt_club_projector',
                ['v_ilev_cin_screen'] = 'script_rt_cinscreen',
                ['text_teloes'] = 'telao',
                
               
            },

            ['screens'] = {

                {
                    ['hash'] = 'v_ilev_cin_screen',
                    ['position'] = vector3(1466.40, 1110.16, 122.68),
                    ['rotation'] = nil,
                    ['heading'] = -90.0,
                    ['lodDistance'] = 500,

                    ['advance'] = {
                        ['durationMs'] = 3000,
                        ['position'] = vector3(1466.72, 1110.61, 120.18-15)
                    },
                },

            },

            ['spotlights'] = {

            },
       
            ['smokers'] = {
            },
        
            ['sparklers'] = {

            },

            ['speakers'] = {
                {
                    ['hash'] = 'ba_prop_battle_club_speaker_large',
                    ['visible'] = false,
                    ['position'] = vector3(1468.13, 1114.55, 117.26),
                    ['rotation'] = nil,
                    ['heading'] = -90.0,
                    ['lodDistance'] = nil,
                    ['soundOffset'] = nil,
                    ['distanceOffset'] = nil,
                    ['maxDistance'] = 100.0,
                    ['refDistance'] = 50.0,
                    ['rolloffFactor'] = 1.25,
                    ['coneInnerAngle'] = 90,
                    ['coneOuterAngle'] = 180,
                    ['coneOuterGain'] = 0.5,
                    ['fadeDurationMs'] = 250,
                    ['volumeMultiplier'] = 1.0,
                    ['lowPassGainReductionPercent'] = 15
                },


                {
                    ['hash'] = 'ba_prop_battle_club_speaker_large',
                    ['visible'] = false,
                    ['position'] = vector3(1467.83, 1105.73, 117.27),
                    ['rotation'] = nil,
                    ['heading'] = -90.0,
                    ['lodDistance'] = nil,
                    ['soundOffset'] = nil,
                    ['distanceOffset'] = nil,
                    ['maxDistance'] = 100.0,
                    ['refDistance'] = 50.0,
                    ['rolloffFactor'] = 1.25,
                    ['coneInnerAngle'] = 90,
                    ['coneOuterAngle'] = 180,
                    ['coneOuterGain'] = 0.5,
                    ['fadeDurationMs'] = 250,
                    ['volumeMultiplier'] = 1.0,
                    ['lowPassGainReductionPercent'] = 15
                },
            } 
        },

        ['Condominio'] = {
            ['enabled'] = true,
            ['autoAdjustTime'] = false,
            -- ['perm'] = 'Dj',
            ['idleWallpaperUrl'] = 'https://i.imgur.com/fpdbx9Z.gif',
            ['maxVolumePercent'] = 100,
            ['smokeFxMultiplier'] = 3,
            ['smokeTimeoutMs'] = 5000,
            ['sparklerFxMultiplier'] = 1,
            ['sparklerTimeoutMs'] = 1500,
            ['delayBetweenSmokeChainMs'] = 1500,
            ['delayToTriggerBassEffectsAfterPlayingMs'] = 2500,
            ['featureDelayWithControllerInterfaceClosedMs'] = 500,

            ['bass'] = {
                ['smoke'] = {
                    ['cooldownMs'] = 10000,
                    ['colorWithDynamicSpotlights'] = true
                },

                ['sparklers'] = {
                    ['cooldownMs'] = 10000,
                    ['colorWithDynamicSpotlights'] = true
                }
            },

            ['area'] = {
                ['range'] = 53.0,
                ['center'] = vector3(-1077.28, 1082.11, 233.85),
                ['height'] = nil,
                ['polygons'] = nil
            },

            ['disableEmitters'] = nil,
            ['scaleform'] = nil,

            ['replacers'] = {
                ['ba_prop_battle_club_screen'] = 'script_rt_club_tv',
                ['h4_prop_battle_club_projector'] = 'script_rt_club_projector',
                ['v_ilev_cin_screen'] = 'script_rt_cinscreen'
                
            },

            ['screens'] = {
                {
                    ['hash'] = 'v_ilev_cin_screen',
                    ['position'] = vector3(-1077.28, 1081.81, 233.85),
                    ['rotation'] = nil,
                    ['heading'] = 15.0,
                    ['lodDistance'] = 500,

                    ['advance'] = {
                        ['durationMs'] = 3000,
                        ['position'] = vector3(-1077.28, 1082.11, 233.85-15)
                    },
                },
            },

            ['spotlights'] = {
                -- {
                --     ['soundSyncType'] = SOUND_SYNC_TYPE.BASS,
                --     ['hash'] = 'cs_prop_hall_spotlight',
                --     ['position'] =  vector3(-1084.2355957031, 1081.8442382812, 232.3656036377),
                --     ['rotation'] = nil,
                --     ['heading'] = 20.31,
                --     ['lodDistance'] = nil,
                --     ['color'] = {255, 1, 1}
                -- },

                -- {
                --     ['soundSyncType'] = SOUND_SYNC_TYPE.BASS,
                --     ['hash'] = 'cs_prop_hall_spotlight',
                --     ['position'] =  vector3(-1071.4709472656, 1085.6843261719, 232.8656036377),
                --     ['rotation'] = nil,
                --     ['heading'] = 20.31,
                --     ['lodDistance'] = nil,
                --     ['color'] = {255, 1, 1}

                    
                -- },

                --                 {
                --     ['soundSyncType'] = SOUND_SYNC_TYPE.MID,
                --     ['hash'] = 'cs_prop_hall_spotlight',
                --     ['position'] =  vector3(-1072.8709472656, 1086.6843261719, 232.9656036377),
                --     ['rotation'] = nil,
                --     ['heading'] = 20.31,
                --     ['lodDistance'] = nil,
                --     ['color'] = {255, 1, 1}

                    
                -- },

                -- {
                --     ['soundSyncType'] = SOUND_SYNC_TYPE.MID,
                --     ['hash'] = 'cs_prop_hall_spotlight',
                --     ['position'] = vector3(-1083.2355957031, 1083.8442382812, 232.9656036377),
                --     ['rotation'] = nil,
                --     ['heading'] = 20.31,
                --     ['lodDistance'] = nil,
                --     ['color'] = {255, 1, 1}
                -- },

            },
        
            ['smokers'] = {
                -- {
                --     ['hash'] = 'ba_prop_club_smoke_machine',
                --     ['visible'] = true,

                --     ['fx'] = {
                --         ['library'] = 'scr_ba_club',
                --         ['effect'] = 'scr_ba_club_smoke_machine',
                --     },

                --     ['position'] = vector3(-1076.78, 1081.11, 224.88),
                --     ['rotation'] = nil,
                --     ['heading'] = 20.31,
                --     ['lodDistance'] = nil,
                --     ['color'] = {255, 255, 255}
                -- },
            },
        
            ['sparklers'] = {
                {
                    ['hash'] = 'prop_cs_pour_tube',
                    ['visible'] = false,

                    ['fx'] = {
                        ['library'] = 'scr_ih_club',
                        ['effect'] = 'scr_ih_club_sparkler',
                    },

                    ['position'] = vector3(-1081.50, 1082.63, 225.66),
                    ['rotation'] = nil,
                    ['heading'] = 0.0,
                    ['lodDistance'] = nil,
                    ['color'] = {18, 2, 76}
                },
                {
                    ['hash'] = 'prop_cs_pour_tube',
                    ['visible'] = false,

                    ['fx'] = {
                        ['library'] = 'scr_ih_club',
                        ['effect'] = 'scr_ih_club_sparkler',
                    },

                    ['position'] = vector3( -1073.30, 1085.08, 225.66),
                    ['rotation'] = nil,
                    ['heading'] = 0.0,
                    ['lodDistance'] = nil,
                    ['color'] = {18, 2, 76}
                },
            },

            ['speakers'] = {
                {
                    ['hash'] = 'ba_prop_battle_club_speaker_large',
                    ['visible'] = false,
                    ['position'] = vector3(-1087.54, 1079.86, 225.86),
                    ['rotation'] = nil,
                    ['heading'] = 15.0,
                    ['lodDistance'] = nil,
                    ['soundOffset'] = nil,
                    ['distanceOffset'] = nil,
                    ['maxDistance'] = 100.0,
                    ['refDistance'] = 50.0,
                    ['rolloffFactor'] = 1.25,
                    ['coneInnerAngle'] = 90,
                    ['coneOuterAngle'] = 180,
                    ['coneOuterGain'] = 0.5,
                    ['fadeDurationMs'] = 250,
                    ['volumeMultiplier'] = 1.0,
                    ['lowPassGainReductionPercent'] = 15
                },

                {
                    ['hash'] = 'ba_prop_battle_club_speaker_large',
                    ['visible'] = false,
                    ['position'] = vector3(-1066.45, 1085.75, 225.86),
                    ['rotation'] = nil,
                    ['heading'] = 15.0,
                    ['lodDistance'] = nil,
                    ['soundOffset'] = nil,
                    ['distanceOffset'] = nil,
                    ['maxDistance'] = 100.0,
                    ['refDistance'] = 50.0,
                    ['rolloffFactor'] = 1.25,
                    ['coneInnerAngle'] = 90,
                    ['coneOuterAngle'] = 180,
                    ['coneOuterGain'] = 0.5,
                    ['fadeDurationMs'] = 250,
                    ['volumeMultiplier'] = 1.0,
                    ['lowPassGainReductionPercent'] = 15
                },

                {
                    ['hash'] = 'ba_prop_battle_club_speaker_large',
                    ['visible'] = false,
                    ['position'] = vector3(-1055.51, 1069.77, 225.86),
                    ['rotation'] = nil,
                    ['heading'] = 245.0,
                    ['lodDistance'] = nil,
                    ['soundOffset'] = nil,
                    ['distanceOffset'] = nil,
                    ['maxDistance'] = 100.0,
                    ['refDistance'] = 50.0,
                    ['rolloffFactor'] = 1.25,
                    ['coneInnerAngle'] = 90,
                    ['coneOuterAngle'] = 180,
                    ['coneOuterGain'] = 0.5,
                    ['fadeDurationMs'] = 250,
                    ['volumeMultiplier'] = 1.0,
                    ['lowPassGainReductionPercent'] = 15
                },

                {
                    ['hash'] = 'ba_prop_battle_club_speaker_large',
                    ['visible'] = false,
                    ['position'] = vector3( -1089.08, 1058.86, 225.86),
                    ['rotation'] = nil,
                    ['heading'] = 145.0,
                    ['lodDistance'] = nil,
                    ['soundOffset'] = nil,
                    ['distanceOffset'] = nil,
                    ['maxDistance'] = 100.0,
                    ['refDistance'] = 50.0,
                    ['rolloffFactor'] = 1.25,
                    ['coneInnerAngle'] = 90,
                    ['coneOuterAngle'] = 180,
                    ['coneOuterGain'] = 0.5,
                    ['fadeDurationMs'] = 250,
                    ['volumeMultiplier'] = 1.0,
                    ['lowPassGainReductionPercent'] = 15
                },
            } 
        },

        ['Favelanova'] = {
            ['enabled'] = true,
            ['autoAdjustTime'] = false,
            -- ['perm'] = 'Dj',
            ['idleWallpaperUrl'] = 'https://i.imgur.com/fpdbx9Z.gif',
            ['maxVolumePercent'] = 100,
            ['smokeFxMultiplier'] = 3,
            ['smokeTimeoutMs'] = 5000,
            ['sparklerFxMultiplier'] = 1,
            ['sparklerTimeoutMs'] = 1500,
            ['delayBetweenSmokeChainMs'] = 1500,
            ['delayToTriggerBassEffectsAfterPlayingMs'] = 2500,
            ['featureDelayWithControllerInterfaceClosedMs'] = 500,

            ['bass'] = {
                ['smoke'] = {
                    ['cooldownMs'] = 10000,
                    ['colorWithDynamicSpotlights'] = true
                },

                ['sparklers'] = {
                    ['cooldownMs'] = 10000,
                    ['colorWithDynamicSpotlights'] = true
                }
            },

            ['area'] = {
                ['range'] = 70.0,
                ['center'] = vector3(1896.33, 69.82, 194.56),
                ['height'] = nil,
                ['polygons'] = nil
            },

            ['disableEmitters'] = nil,
            ['scaleform'] = nil,

            ['replacers'] = {
                ['ba_prop_battle_club_screen'] = 'script_rt_club_tv',
                ['h4_prop_battle_club_projector'] = 'script_rt_club_projector',
                ['v_ilev_cin_screen'] = 'script_rt_cinscreen'
                
            },

            ['screens'] = {
                {
                    ['hash'] = 'v_ilev_cin_screen',
                    ['position'] = vector3(1896.33, 69.82, 194.56),
                    ['rotation'] = nil,
                    ['heading'] = 315.17,
                    ['lodDistance'] = 500,

                    ['advance'] = {
                        ['durationMs'] = 3000,
                        ['position'] = vector3(1896.33, 69.82, 194.56-15)
                    },
                },
            },

            ['spotlights'] = {
                -- {
                --     ['soundSyncType'] = SOUND_SYNC_TYPE.BASS,
                --     ['hash'] = 'cs_prop_hall_spotlight',
                --     ['position'] =  vector3(-1084.2355957031, 1081.8442382812, 232.3656036377),
                --     ['rotation'] = nil,
                --     ['heading'] = 20.31,
                --     ['lodDistance'] = nil,
                --     ['color'] = {255, 1, 1}
                -- },

                -- {
                --     ['soundSyncType'] = SOUND_SYNC_TYPE.BASS,
                --     ['hash'] = 'cs_prop_hall_spotlight',
                --     ['position'] =  vector3(-1071.4709472656, 1085.6843261719, 232.8656036377),
                --     ['rotation'] = nil,
                --     ['heading'] = 20.31,
                --     ['lodDistance'] = nil,
                --     ['color'] = {255, 1, 1}

                    
                -- },

                --                 {
                --     ['soundSyncType'] = SOUND_SYNC_TYPE.MID,
                --     ['hash'] = 'cs_prop_hall_spotlight',
                --     ['position'] =  vector3(-1072.8709472656, 1086.6843261719, 232.9656036377),
                --     ['rotation'] = nil,
                --     ['heading'] = 20.31,
                --     ['lodDistance'] = nil,
                --     ['color'] = {255, 1, 1}

                    
                -- },

                -- {
                --     ['soundSyncType'] = SOUND_SYNC_TYPE.MID,
                --     ['hash'] = 'cs_prop_hall_spotlight',
                --     ['position'] = vector3(-1083.2355957031, 1083.8442382812, 232.9656036377),
                --     ['rotation'] = nil,
                --     ['heading'] = 20.31,
                --     ['lodDistance'] = nil,
                --     ['color'] = {255, 1, 1}
                -- },

            },
        
            ['smokers'] = {
                -- {
                --     ['hash'] = 'ba_prop_club_smoke_machine',
                --     ['visible'] = true,

                --     ['fx'] = {
                --         ['library'] = 'scr_ba_club',
                --         ['effect'] = 'scr_ba_club_smoke_machine',
                --     },

                --     ['position'] = vector3(-1076.78, 1081.11, 224.88),
                --     ['rotation'] = nil,
                --     ['heading'] = 20.31,
                --     ['lodDistance'] = nil,
                --     ['color'] = {255, 255, 255}
                -- },
            },
        
            ['sparklers'] = {
                -- {
                --     ['hash'] = 'prop_cs_pour_tube',
                --     ['visible'] = false,

                --     ['fx'] = {
                --         ['library'] = 'scr_ih_club',
                --         ['effect'] = 'scr_ih_club_sparkler',
                --     },

                --     ['position'] = vector3(-1081.50, 1082.63, 225.66),
                --     ['rotation'] = nil,
                --     ['heading'] = 0.0,
                --     ['lodDistance'] = nil,
                --     ['color'] = {18, 2, 76}
                -- },
                -- {
                --     ['hash'] = 'prop_cs_pour_tube',
                --     ['visible'] = false,

                --     ['fx'] = {
                --         ['library'] = 'scr_ih_club',
                --         ['effect'] = 'scr_ih_club_sparkler',
                --     },

                --     ['position'] = vector3( -1073.30, 1085.08, 225.66),
                --     ['rotation'] = nil,
                --     ['heading'] = 0.0,
                --     ['lodDistance'] = nil,
                --     ['color'] = {18, 2, 76}
                -- },
            },

            ['speakers'] = {
                {
                    ['hash'] = 'ba_prop_battle_club_speaker_large',
                    ['visible'] = false,
                    ['position'] = vector3(1887.68, 78.94, 188.56),
                    ['rotation'] = nil,
                    ['heading'] = 355.38,
                    ['lodDistance'] = nil,
                    ['soundOffset'] = nil,
                    ['distanceOffset'] = nil,
                    ['maxDistance'] = 100.0,
                    ['refDistance'] = 50.0,
                    ['rolloffFactor'] = 1.25,
                    ['coneInnerAngle'] = 90,
                    ['coneOuterAngle'] = 180,
                    ['coneOuterGain'] = 0.5,
                    ['fadeDurationMs'] = 250,
                    ['volumeMultiplier'] = 1.0,
                    ['lowPassGainReductionPercent'] = 15
                },

                {
                    ['hash'] = 'ba_prop_battle_club_speaker_large',
                    ['visible'] = false,
                    ['position'] = vector3(1905.63, 60.88, 188.56),
                    ['rotation'] = nil,
                    ['heading'] = 275.06,
                    ['lodDistance'] = nil,
                    ['soundOffset'] = nil,
                    ['distanceOffset'] = nil,
                    ['maxDistance'] = 100.0,
                    ['refDistance'] = 50.0,
                    ['rolloffFactor'] = 1.25,
                    ['coneInnerAngle'] = 90,
                    ['coneOuterAngle'] = 180,
                    ['coneOuterGain'] = 0.5,
                    ['fadeDurationMs'] = 250,
                    ['volumeMultiplier'] = 1.0,
                    ['lowPassGainReductionPercent'] = 15
                },

                {
                    ['hash'] = 'ba_prop_battle_club_speaker_large',
                    ['visible'] = false,
                    ['position'] = vector3(1873.05, 28.30, 188.56),
                    ['rotation'] = nil,
                    ['heading'] = 174.93,
                    ['lodDistance'] = nil,
                    ['soundOffset'] = nil,
                    ['distanceOffset'] = nil,
                    ['maxDistance'] = 100.0,
                    ['refDistance'] = 50.0,
                    ['rolloffFactor'] = 1.25,
                    ['coneInnerAngle'] = 90,
                    ['coneOuterAngle'] = 180,
                    ['coneOuterGain'] = 0.5,
                    ['fadeDurationMs'] = 250,
                    ['volumeMultiplier'] = 1.0,
                    ['lowPassGainReductionPercent'] = 15
                },

                {
                    ['hash'] = 'ba_prop_battle_club_speaker_large',
                    ['visible'] = false,
                    ['position'] = vector3(1854.59, 46.13, 188.56),
                    ['rotation'] = nil,
                    ['heading'] = 100.80,
                    ['lodDistance'] = nil,
                    ['soundOffset'] = nil,
                    ['distanceOffset'] = nil,
                    ['maxDistance'] = 100.0,
                    ['refDistance'] = 50.0,
                    ['rolloffFactor'] = 1.25,
                    ['coneInnerAngle'] = 90,
                    ['coneOuterAngle'] = 180,
                    ['coneOuterGain'] = 0.5,
                    ['fadeDurationMs'] = 250,
                    ['volumeMultiplier'] = 1.0,
                    ['lowPassGainReductionPercent'] = 15
                },
            } 
        },

        ['CasaTropical'] = {
            ['enabled'] = true,
            ['autoAdjustTime'] = false,
            -- ['perm'] = 'Dj',
            ['idleWallpaperUrl'] = 'https://i.imgur.com/fpdbx9Z.gif',
            ['maxVolumePercent'] = 100,
            ['smokeFxMultiplier'] = 3,
            ['smokeTimeoutMs'] = 5000,
            ['sparklerFxMultiplier'] = 1,
            ['sparklerTimeoutMs'] = 1500,
            ['delayBetweenSmokeChainMs'] = 1500,
            ['delayToTriggerBassEffectsAfterPlayingMs'] = 2500,
            ['featureDelayWithControllerInterfaceClosedMs'] = 500,

            ['bass'] = {
                ['smoke'] = {
                    ['cooldownMs'] = 30000,
                    ['colorWithDynamicSpotlights'] = true
                },

                ['sparklers'] = {
                    ['cooldownMs'] = 30000,
                    ['colorWithDynamicSpotlights'] = true
                }
            },

            ['area'] = {
                ['range'] = 150.0,
                ['center'] = vec3(1430.71, 4681.19, 133.94), -- -695.14, 5790.45, 16.89, 155.27
                ['height'] = nil,

                ['polygons'] = nil,
            },

            ['disableEmitters'] = {
            },
            

            ['scaleform'] = nil,

            ['replacers'] = {
                ['ba_prop_battle_club_screen'] = 'script_rt_club_tv',
                ['h4_prop_battle_club_projector'] = 'script_rt_club_projector',
                ['v_ilev_cin_screen'] = 'script_rt_cinscreen'
                
            },

            ['monitors'] = {
            },

            ['screens'] = {
                {
                    ['hash'] = 'v_ilev_cin_screen',
                    ['position'] = vec3(1383.35, 4677.39, 136.94), -- 1407.89, 4699.29, 134.84, 341.07
                    ['rotation'] = nil,
                    ['heading'] = 136.0,
                    ['lodDistance'] = 100,

                    ['advance'] = {
                        ['durationMs'] = 5000,
                        ['position'] = vec3(1383.35, 4679.39, 136.94-10),
                    }
                },

            },

            ['spotlights'] = {
                
            },

            ['smokers'] = {
        
            },

            ['sparklers'] = {
            },

            ['speakers'] = {
                {
                    ['hash'] = 'ba_prop_battle_club_speaker_large',
                    ['visible'] = false,
                    ['position'] = vec3(1389.10, 4675.44, 134.27),
                    ['rotation'] = nil,
                    ['heading'] = 145.69,
                    ['lodDistance'] = nil,
                    ['soundOffset'] = vector3(0, 0, 1.4),
                    ['distanceOffset'] = nil,
                    ['maxDistance'] = 200.0,
                    ['refDistance'] = 32.0,
                    ['rolloffFactor'] = 1.25,
                    ['coneInnerAngle'] = 90,
                    ['coneOuterAngle'] = 180,
                    ['coneOuterGain'] = 0.5,
                    ['fadeDurationMs'] = 250,
                    ['volumeMultiplier'] = 1.0,
                    ['lowPassGainReductionPercent'] = 15
                },

                {
                    ['hash'] = 'ba_prop_battle_club_speaker_large',
                    ['visible'] = false,
                    ['position'] = vec3(1380.52, 4683.38, 133.93),
                    ['rotation'] = nil,
                    ['heading'] = 109.51,
                    ['lodDistance'] = nil,
                    ['soundOffset'] = vector3(0, 0, 1.4),
                    ['distanceOffset'] = nil,
                    ['maxDistance'] = 200.0,
                    ['refDistance'] = 32.0,
                    ['rolloffFactor'] = 1.25,
                    ['coneInnerAngle'] = 90,
                    ['coneOuterAngle'] = 180,
                    ['coneOuterGain'] = 0.5,
                    ['fadeDurationMs'] = 250,
                    ['volumeMultiplier'] = 1.0,
                    ['lowPassGainReductionPercent'] = 15
                },
            }
        },

        ['CasaPlayboy'] = {
            ['enabled'] = true,
            ['autoAdjustTime'] = false,
            -- ['perm'] = 'Dj',
            ['idleWallpaperUrl'] = 'https://i.imgur.com/fpdbx9Z.gif',
            ['maxVolumePercent'] = 100,
            ['smokeFxMultiplier'] = 3,
            ['smokeTimeoutMs'] = 5000,
            ['sparklerFxMultiplier'] = 1,
            ['sparklerTimeoutMs'] = 1500,
            ['delayBetweenSmokeChainMs'] = 1500,
            ['delayToTriggerBassEffectsAfterPlayingMs'] = 2500,
            ['featureDelayWithControllerInterfaceClosedMs'] = 500,

            ['bass'] = {
                ['smoke'] = {
                    ['cooldownMs'] = 30000,
                    ['colorWithDynamicSpotlights'] = true
                },

                ['sparklers'] = {
                    ['cooldownMs'] = 30000,
                    ['colorWithDynamicSpotlights'] = true
                }
            },

            ['area'] = {
                ['range'] = 80.0,
                ['center'] = vec3(-1444.90, 225.55, 58.73),
                ['height'] = nil,

                ['polygons'] = nil,
            },

            ['disableEmitters'] = {
            },
            

            ['scaleform'] = nil,

            ['replacers'] = {
                ['ba_prop_battle_club_screen'] = 'script_rt_club_tv',
                ['h4_prop_battle_club_projector'] = 'script_rt_club_projector',
                ['v_ilev_cin_screen'] = 'script_rt_cinscreen'
                
            },

            ['monitors'] = {
            },

            ['screens'] = {
                {
                    ['hash'] = 'v_ilev_cin_screen',
                    ['position'] = vec3(-1444.90, 225.55, 61.23),
                    ['rotation'] = nil,
                    ['heading'] = 310.13,
                    ['lodDistance'] = 100,

                    ['advance'] = {
                        ['durationMs'] = 5000,
                        ['position'] = vec3(-1444.90, 225.55, 61.23-10),
                    }
                },

            },

            ['spotlights'] = {
                
            },

            ['smokers'] = {
        
            },

            ['sparklers'] = {
            },

            ['speakers'] = {
                {
                    ['hash'] = 'ba_prop_battle_club_speaker_large',
                    ['visible'] = false,
                    ['position'] = vec3(-1456.23, 238.69, 59.72),
                    ['rotation'] = nil,
                    ['heading'] = 324.36,
                    ['lodDistance'] = nil,
                    ['soundOffset'] = vector3(0, 0, 1.4),
                    ['distanceOffset'] = nil,
                    ['maxDistance'] = 100.0,
                    ['refDistance'] = 50.0,
                    ['rolloffFactor'] = 1.25,
                    ['coneInnerAngle'] = 90,
                    ['coneOuterAngle'] = 180,
                    ['coneOuterGain'] = 0.5,
                    ['fadeDurationMs'] = 250,
                    ['volumeMultiplier'] = 1.0,
                    ['lowPassGainReductionPercent'] = 15
                },

                {
                    ['hash'] = 'ba_prop_battle_club_speaker_large',
                    ['visible'] = false,
                    ['position'] = vec3(-1430.88, 222.73, 58.97),
                    ['rotation'] = nil,
                    ['heading'] = 324.36,
                    ['lodDistance'] = nil,
                    ['soundOffset'] = vector3(0, 0, 1.4),
                    ['distanceOffset'] = nil,
                    ['maxDistance'] = 100.0,
                    ['refDistance'] = 50.0,
                    ['rolloffFactor'] = 1.25,
                    ['coneInnerAngle'] = 90,
                    ['coneOuterAngle'] = 180,
                    ['coneOuterGain'] = 0.5,
                    ['fadeDurationMs'] = 250,
                    ['volumeMultiplier'] = 1.0,
                    ['lowPassGainReductionPercent'] = 15
                },

                {
                    ['hash'] = 'ba_prop_battle_club_speaker_large',
                    ['visible'] = false,
                    ['position'] = vec3(-1489.14, 194.56, 56.67),
                    ['rotation'] = nil,
                    ['heading'] = 119.47,
                    ['lodDistance'] = nil,
                    ['soundOffset'] = vector3(0, 0, 1.4),
                    ['distanceOffset'] = nil,
                    ['maxDistance'] = 100.0,
                    ['refDistance'] = 50.0,
                    ['rolloffFactor'] = 1.25,
                    ['coneInnerAngle'] = 90,
                    ['coneOuterAngle'] = 180,
                    ['coneOuterGain'] = 0.5,
                    ['fadeDurationMs'] = 250,
                    ['volumeMultiplier'] = 1.0,
                    ['lowPassGainReductionPercent'] = 15
                },

                {
                    ['hash'] = 'ba_prop_battle_club_speaker_large',
                    ['visible'] = false,
                    ['position'] = vec3(-1467.09, 158.75, 55.52),
                    ['rotation'] = nil,
                    ['heading'] = 176.69,
                    ['lodDistance'] = nil,
                    ['soundOffset'] = vector3(0, 0, 1.4),
                    ['distanceOffset'] = nil,
                    ['maxDistance'] = 100.0,
                    ['refDistance'] = 50.0,
                    ['rolloffFactor'] = 1.25,
                    ['coneInnerAngle'] = 90,
                    ['coneOuterAngle'] = 180,
                    ['coneOuterGain'] = 0.5,
                    ['fadeDurationMs'] = 250,
                    ['volumeMultiplier'] = 1.0,
                    ['lowPassGainReductionPercent'] = 15
                },
            }
        },

        ['Casino'] = {
            ['enabled'] = true,
            ['autoAdjustTime'] = false,
            -- ['perm'] = 'Dj',
            ['idleWallpaperUrl'] = 'https://i.imgur.com/fpdbx9Z.gif',
            ['maxVolumePercent'] = 100,
            ['smokeFxMultiplier'] = 3,
            ['smokeTimeoutMs'] = 5000,
            ['sparklerFxMultiplier'] = 1,
            ['sparklerTimeoutMs'] = 1500,
            ['delayBetweenSmokeChainMs'] = 1500,
            ['delayToTriggerBassEffectsAfterPlayingMs'] = 2500,
            ['featureDelayWithControllerInterfaceClosedMs'] = 500,

            ['bass'] = {
                ['smoke'] = {
                    ['cooldownMs'] = 30000,
                    ['colorWithDynamicSpotlights'] = true
                },

                ['sparklers'] = {
                    ['cooldownMs'] = 30000,
                    ['colorWithDynamicSpotlights'] = true
                }
            },

            ['area'] = {
                ['range'] = 180.0,
                ['center'] = vec3(960.32, 46.83, 71.43),
                ['height'] = nil,

                ['polygons'] = nil,
            },

            ['disableEmitters'] = {
            },
            

            ['scaleform'] = nil,

            ['replacers'] = {
                ['ba_prop_battle_club_screen'] = 'script_rt_club_tv',
                ['h4_prop_battle_club_projector'] = 'script_rt_club_projector',
                ['v_ilev_cin_screen'] = 'script_rt_cinscreen',
                ['ex_prop_ex_tv_flat_01'] = 'script_rt_ex_tvscreen',
                
            },

            ['monitors'] = {
            },

            ['screens'] = {
                {
                    ['hash'] = 'ex_prop_ex_tv_flat_01', -- bar
                    ['position'] = vec3(939.0, 26.60, 73.56),
                    ['rotation'] = nil,
                    ['heading'] = 180.13,
                    ['lodDistance'] = 100,

                    ['advance'] = {
                        ['durationMs'] = 5000,
                        ['position'] = vec3(938.7, 27.09, 72.86),
                    }
                },

                {
                    ['hash'] = 'ex_prop_ex_tv_flat_01', --sala privativa 1
                    ['position'] = vec3(972.35, 51.35, 72.35),
                    ['rotation'] = nil,
                    ['heading'] = 189.32,
                    ['lodDistance'] = 100,

                    ['advance'] = {
                        ['durationMs'] = 5000,
                        ['position'] = vec3(972.45, 51.41, 72.35),
                    }
                },

                {
                    ['hash'] = 'ex_prop_ex_tv_flat_01', --sala privativa 2
                    ['position'] = vec3(973.03, 48.10, 72.35),
                    ['rotation'] = nil,
                    ['heading'] = 372.50,
                    ['lodDistance'] = 100,

                    ['advance'] = {
                        ['durationMs'] = 5000,
                        ['position'] = vec3(973.03, 48.10, 72.35),
                    }
                },

                {
                    ['hash'] = 'ex_prop_ex_tv_flat_01',
                    ['position'] = vec3(988.05, 67.55, 71.13), -- poker 1
                    ['rotation'] = nil,
                    ['heading'] = 331.54,
                    ['lodDistance'] = 100,

                    ['advance'] = {
                        ['durationMs'] = 5000,
                        ['position'] = vec3(988.05, 67.55, 71.13),
                    }
                },

                {
                    ['hash'] = 'ex_prop_ex_tv_flat_01',
                    ['position'] = vec3(982.86, 59.52, 71.13), -- poker 1
                    ['rotation'] = nil,
                    ['heading'] = 144.13,
                    ['lodDistance'] = 100,

                    ['advance'] = {
                        ['durationMs'] = 5000,
                        ['position'] = vec3(982.86, 59.52, 71.13),
                    }
                },

                {
                    ['hash'] = 'ex_prop_ex_tv_flat_01',
                    ['position'] = vec3(994.53, 40.16, 71.13), -- poker 2
                    ['rotation'] = nil,
                    ['heading'] = 235.70,
                    ['lodDistance'] = 100,

                    ['advance'] = {
                        ['durationMs'] = 5000,
                        ['position'] = vec3(994.53, 40.16, 71.13),
                    }
                },

                                {
                    ['hash'] = 'ex_prop_ex_tv_flat_01',
                    ['position'] = vec3(985.90, 45.58, 71.13), -- poker 2
                    ['rotation'] = nil,
                    ['heading'] = 54.16,
                    ['lodDistance'] = 100,

                    ['advance'] = {
                        ['durationMs'] = 5000,
                        ['position'] = vec3(994.23, 40.26, 71.13),
                    }
                },

                {
                    ['hash'] = 'ex_prop_ex_tv_flat_01',
                    ['position'] = vec3(1007.35, 53.85, 70.93), -- mesas
                    ['rotation'] = nil,
                    ['heading'] = 255.50,
                    ['lodDistance'] = 100,

                    ['advance'] = {
                        ['durationMs'] = 5000,
                        ['position'] = vec3(1006.15, 54.08, 70.93),
                    }
                },

                {
                    ['hash'] = 'ex_prop_ex_tv_flat_01', 
                    ['position'] = vec3(1005.55, 61.17, 70.93), -- mesas
                    ['rotation'] = nil,
                    ['heading'] = 306.61,
                    ['lodDistance'] = 100,

                    ['advance'] = {
                        ['durationMs'] = 5000,
                        ['position'] = vec3(1005.55, 61.17, 70.93),
                    }
                },

            },

            ['spotlights'] = {
                
            },

            ['smokers'] = {
        
            },

            ['sparklers'] = {
            },

            ['speakers'] = {
                {
                    ['hash'] = 'ba_prop_battle_club_speaker_large',
                    ['visible'] = false,
                    ['position'] = vec3(956.17, 35.84, 71.43),
                    ['rotation'] = nil,
                    ['heading'] = 229.28,
                    ['lodDistance'] = nil,
                    ['soundOffset'] = vector3(0, 0, 1.4),
                    ['distanceOffset'] = nil,
                    ['maxDistance'] = 80.0,
                    ['refDistance'] = 50.0,
                    ['rolloffFactor'] = 1.25,
                    ['coneInnerAngle'] = 90,
                    ['coneOuterAngle'] = 180,
                    ['coneOuterGain'] = 0.5,
                    ['fadeDurationMs'] = 250,
                    ['volumeMultiplier'] = 1.0,
                    ['lowPassGainReductionPercent'] = 15
                },

                {
                    ['hash'] = 'ba_prop_battle_club_speaker_large',
                    ['visible'] = false,
                    ['position'] = vec3(931.50, 18.59, 71.83),
                    ['rotation'] = nil,
                    ['heading'] = 157.25,
                    ['lodDistance'] = nil,
                    ['soundOffset'] = vector3(0, 0, 1.4),
                    ['distanceOffset'] = nil,
                    ['maxDistance'] = 80.0,
                    ['refDistance'] = 50.0,
                    ['rolloffFactor'] = 1.25,
                    ['coneInnerAngle'] = 90,
                    ['coneOuterAngle'] = 180,
                    ['coneOuterGain'] = 0.5,
                    ['fadeDurationMs'] = 250,
                    ['volumeMultiplier'] = 1.0,
                    ['lowPassGainReductionPercent'] = 15
                },

                {
                    ['hash'] = 'ba_prop_battle_club_speaker_large',
                    ['visible'] = false,
                    ['position'] = vec3(972.45, 51.41, 72.05),
                    ['rotation'] = nil,
                    ['heading'] = 187.32,
                    ['lodDistance'] = nil,
                    ['soundOffset'] = vector3(0, 0, 1.4),
                    ['distanceOffset'] = nil,
                    ['maxDistance'] = 80.0,
                    ['refDistance'] = 50.0,
                    ['rolloffFactor'] = 1.25,
                    ['coneInnerAngle'] = 90,
                    ['coneOuterAngle'] = 180,
                    ['coneOuterGain'] = 0.5,
                    ['fadeDurationMs'] = 250,
                    ['volumeMultiplier'] = 1.0,
                    ['lowPassGainReductionPercent'] = 15
                },

                {
                    ['hash'] = 'ba_prop_battle_club_speaker_large',
                    ['visible'] = false,
                    ['position'] = vec3(973.03, 48.10, 72.05),
                    ['rotation'] = nil,
                    ['heading'] = 306.61,
                    ['lodDistance'] = nil,
                    ['soundOffset'] = vector3(0, 0, 1.4),
                    ['distanceOffset'] = nil,
                    ['maxDistance'] = 80.0,
                    ['refDistance'] = 50.0,
                    ['rolloffFactor'] = 1.25,
                    ['coneInnerAngle'] = 90,
                    ['coneOuterAngle'] = 180,
                    ['coneOuterGain'] = 0.5,
                    ['fadeDurationMs'] = 250,
                    ['volumeMultiplier'] = 1.0,
                    ['lowPassGainReductionPercent'] = 15
                },

                {
                    ['hash'] = 'ba_prop_battle_club_speaker_large',
                    ['visible'] = false,
                    ['position'] = vec3(1006.15, 54.08, 69.43),
                    ['rotation'] = nil,
                    ['heading'] = 249.50,
                    ['lodDistance'] = nil,
                    ['soundOffset'] = vector3(0, 0, 1.4),
                    ['distanceOffset'] = nil,
                    ['maxDistance'] = 80.0,
                    ['refDistance'] = 50.0,
                    ['rolloffFactor'] = 1.25,
                    ['coneInnerAngle'] = 90,
                    ['coneOuterAngle'] = 180,
                    ['coneOuterGain'] = 0.5,
                    ['fadeDurationMs'] = 250,
                    ['volumeMultiplier'] = 1.0,
                    ['lowPassGainReductionPercent'] = 15
                },

                {
                    ['hash'] = 'ba_prop_battle_club_speaker_large',
                    ['visible'] = false,
                    ['position'] = vec3(1004.71, 60.50, 69.43),
                    ['rotation'] = nil,
                    ['heading'] = 306.61,
                    ['lodDistance'] = nil,
                    ['soundOffset'] = vector3(0, 0, 1.4),
                    ['distanceOffset'] = nil,
                    ['maxDistance'] = 80.0,
                    ['refDistance'] = 50.0,
                    ['rolloffFactor'] = 1.25,
                    ['coneInnerAngle'] = 90,
                    ['coneOuterAngle'] = 180,
                    ['coneOuterGain'] = 0.5,
                    ['fadeDurationMs'] = 250,
                    ['volumeMultiplier'] = 1.0,
                    ['lowPassGainReductionPercent'] = 15
                },

                {
                    ['hash'] = 'ba_prop_battle_club_speaker_large',
                    ['visible'] = false,
                    ['position'] = vec3(988.05, 67.55, 70.23),
                    ['rotation'] = nil,
                    ['heading'] = 331.54,
                    ['lodDistance'] = nil,
                    ['soundOffset'] = vector3(0, 0, 1.4),
                    ['distanceOffset'] = nil,
                    ['maxDistance'] = 80.0,
                    ['refDistance'] = 50.0,
                    ['rolloffFactor'] = 1.25,
                    ['coneInnerAngle'] = 90,
                    ['coneOuterAngle'] = 180,
                    ['coneOuterGain'] = 0.5,
                    ['fadeDurationMs'] = 250,
                    ['volumeMultiplier'] = 1.0,
                    ['lowPassGainReductionPercent'] = 15
                },

                {
                    ['hash'] = 'ba_prop_battle_club_speaker_large',
                    ['visible'] = false,
                    ['position'] = vec3(982.86, 59.52, 70.23),
                    ['rotation'] = nil,
                    ['heading'] = 144.13,
                    ['lodDistance'] = nil,
                    ['soundOffset'] = vector3(0, 0, 1.4),
                    ['distanceOffset'] = nil,
                    ['maxDistance'] = 80.0,
                    ['refDistance'] = 50.0,
                    ['rolloffFactor'] = 1.25,
                    ['coneInnerAngle'] = 90,
                    ['coneOuterAngle'] = 180,
                    ['coneOuterGain'] = 0.5,
                    ['fadeDurationMs'] = 250,
                    ['volumeMultiplier'] = 1.0,
                    ['lowPassGainReductionPercent'] = 15
                },

            }
        },

        ['vanilla_unicorn'] = {
            ['enabled'] = true,
            ['autoAdjustTime'] = false,
            ['idleWallpaperUrl'] = 'https://cfx-nui-' .. GetCurrentResourceName() .. '/client/dui/images/wallpaper.png',
            ['maxVolumePercent'] = 100,
            ['smokeFxMultiplier'] = 3,
            ['smokeTimeoutMs'] = 5000,
            ['sparklerFxMultiplier'] = 1,
            ['sparklerTimeoutMs'] = 1500,
            ['delayBetweenSmokeChainMs'] = 1500,
            ['delayToTriggerBassEffectsAfterPlayingMs'] = 2500,
            ['featureDelayWithControllerInterfaceClosedMs'] = 500,

            ['bass'] = {
                ['smoke'] = {
                    ['cooldownMs'] = 30000,
                    ['colorWithDynamicSpotlights'] = true
                },

                ['sparklers'] = {
                    ['cooldownMs'] = 30000,
                    ['colorWithDynamicSpotlights'] = true
                }
            },

            ['area'] = {
                ['range'] = 128.0,
                ['center'] = vector3(103.64, -1292.14, 29.2),
                ['height'] = nil,

                ['polygons'] = {
                    ['applyLowPassFilterOutside'] = true,
                    ['invertLowPassApplication'] = false,
                    ['hideReplacersOutside'] = true,

                    ['entries'] = {
                        {
                            ['height'] = {
                                ['min'] = 27.0,
                                ['max'] = 32.0
                            },
        
                            ['points'] = {
                                vector2(119.42, -1299.34),
                                vector2(116.07, -1294.06),
                                vector2(114.62, -1292.96),
                                vector2(104.46, -1299.08),
                                vector2(97.68, -1287.27),
                                vector2(107.61, -1281.02),
                                vector2(119.01, -1279.61),
                                vector2(125.75, -1277.27),
                                vector2(128.81, -1276.93),
                                vector2(134.08, -1287.12),
                                vector2(130.99, -1289.47),
                                vector2(132.76, -1292.06),
                                vector2(134.37, -1294.44),
                                vector2(128.49, -1298.07),
                                vector2(124.62, -1300.01),
                                vector2(122.72, -1297.48)
                            }
                        }
                    }
                }
            },

            ['disableEmitters'] = {
                'LOS_SANTOS_VANILLA_UNICORN_01_STAGE',
                'LOS_SANTOS_VANILLA_UNICORN_02_MAIN_ROOM',
                'LOS_SANTOS_VANILLA_UNICORN_03_BACK_ROOM'
            },

            ['scaleform'] = nil,

            ['replacers'] = {
                ['ba_prop_battle_club_screen'] = 'script_rt_club_tv',
                ['h4_prop_battle_club_projector'] = 'script_rt_club_projector'
            },

            ['monitors'] = {
                {
                    ['hash'] = 'ba_prop_battle_club_screen_02',
                    ['position'] = vector3(122.83245849609, -1282.1744384766, 30.500564575195),
                    ['rotation'] = nil,
                    ['heading'] = 209.32180786133,
                    ['lodDistance'] = nil
                }
            },

            ['screens'] = {
                {
                    ['hash'] = 'h4_prop_battle_club_screen',
                    ['position'] = vector3(103.27879333496, -1292.5457763672, 33.85863571167),
                    ['rotation'] = nil,
                    ['heading'] = 120.0,
                    ['lodDistance'] = nil,

                    ['advance'] = {
                        ['durationMs'] = 15000,
                        ['position'] = vector3(103.27879333496, -1292.5457763672, 31.71610946655)
                    }
                }
            },

            ['spotlights'] = {
                {
                    ['soundSyncType'] = SOUND_SYNC_TYPE.BASS,
                    ['hash'] = 'cs_prop_hall_spotlight',
                    ['position'] = vector3(104.79130554199, -1291.6781005859, 32.583999633789),
                    ['rotation'] = nil,
                    ['heading'] = 120.0,
                    ['lodDistance'] = nil,
                    ['color'] = {255, 1, 1}
                },

                {
                    ['soundSyncType'] = SOUND_SYNC_TYPE.MID,
                    ['hash'] = 'cs_prop_hall_spotlight',
                    ['position'] = vector3(108.38147735596, -1296.1878662109, 32.080726623535),
                    ['rotation'] = nil,
                    ['heading'] = 210.0,
                    ['lodDistance'] = nil,
                    ['color'] = {255, 255, 0}
                },

                {
                    ['soundSyncType'] = SOUND_SYNC_TYPE.TREBLE,
                    ['hash'] = 'cs_prop_hall_spotlight',
                    ['position'] = vector3(110.11848449707, -1295.0183105469, 32.080333709717),
                    ['rotation'] = nil,
                    ['heading'] = 210.0,
                    ['lodDistance'] = nil,
                    ['color'] = {3, 83, 255}
                },

                {
                    ['soundSyncType'] = SOUND_SYNC_TYPE.LOW_MID,
                    ['hash'] = 'cs_prop_hall_spotlight',
                    ['position'] = vector3(102.0936050415, -1285.4376220703, 32.090923309326),
                    ['rotation'] = nil,
                    ['heading'] = 30.0,
                    ['lodDistance'] = nil,
                    ['color'] = {15, 3, 255}
                },

                {
                    ['soundSyncType'] = SOUND_SYNC_TYPE.HIGH_MID,
                    ['hash'] = 'cs_prop_hall_spotlight',
                    ['position'] = vector3(104.02025604248, -1284.3253173828, 32.090923309326),
                    ['rotation'] = nil,
                    ['heading'] = 30.0,
                    ['lodDistance'] = nil,
                    ['color'] = {255, 5, 190}
                }
            },

            ['smokers'] = {
                {
                    ['hash'] = 'ba_prop_club_smoke_machine',
                    ['visible'] = true,
    
                    ['fx'] = {
                        ['library'] = 'scr_ba_club',
                        ['effect'] = 'scr_ba_club_smoke_machine',
                    },

                    ['position'] = vector3(98.421371459961, -1287.4619140625, 27.24342918396),
                    ['rotation'] = nil,
                    ['heading'] = 76.0,
                    ['lodDistance'] = nil,
                    ['color'] = {175, 0, 175}
                },

                {
                    ['hash'] = 'ba_prop_club_smoke_machine',
                    ['visible'] = true,
    
                    ['fx'] = {
                        ['library'] = 'scr_ba_club',
                        ['effect'] = 'scr_ba_club_smoke_machine',
                    },

                    ['position'] = vector3(104.74859619141, -1298.3879394531, 27.24342918396),
                    ['rotation'] = nil,
                    ['heading'] = 165.0,
                    ['lodDistance'] = nil,
                    ['color'] = {175, 0, 175}
                }
            },

            ['sparklers'] = {
                {
                    ['hash'] = 'prop_cs_pour_tube',
                    ['visible'] = true,
    
                    ['fx'] = {
                        ['library'] = 'scr_ih_club',
                        ['effect'] = 'scr_ih_club_sparkler',
                    },

                    ['position'] = vector3(105.01, -1289.6500244141, 28.270687103271),
                    ['rotation'] = nil,
                    ['heading'] = 0.0,
                    ['lodDistance'] = nil,
                    ['color'] = {175, 0, 175}
                },

                {
                    ['hash'] = 'prop_cs_pour_tube',
                    ['visible'] = true,
    
                    ['fx'] = {
                        ['library'] = 'scr_ih_club',
                        ['effect'] = 'scr_ih_club_sparkler',
                    },

                    ['position'] = vector3(106.60453033447, -1292.4583740234, 28.270687103271),
                    ['rotation'] = nil,
                    ['heading'] = 0.0,
                    ['lodDistance'] = nil,
                    ['color'] = {175, 0, 175}
                }
            },

            ['speakers'] = {
                {
                    ['hash'] = 'ba_prop_battle_club_speaker_large',
                    ['visible'] = true,
                    ['position'] = vector3(103.99552154541, -1296.3807373047, 28.256807327271),
                    ['rotation'] = nil,
                    ['heading'] = 130.0,
                    ['lodDistance'] = nil,
                    ['soundOffset'] = vector3(0.0, 0.0, 1.4),
                    ['directionOffset'] = nil,
                    ['maxDistance'] = 32.0,
                    ['refDistance'] = 16.0,
                    ['rolloffFactor'] = 1.25,
                    ['coneInnerAngle'] = 90,
                    ['coneOuterAngle'] = 180,
                    ['coneOuterGain'] = 0.5,
                    ['fadeDurationMs'] = 250,
                    ['volumeMultiplier'] = 1.0,
                    ['lowPassGainReductionPercent'] = 15
                },

                {
                    ['hash'] = 'ba_prop_battle_club_speaker_large',
                    ['visible'] = true,
                    ['position'] = vector3(100.32069396973, -1289.9753417969, 28.256807327271),
                    ['rotation'] = nil,
                    ['heading'] = 115.0,
                    ['lodDistance'] = nil,
                    ['soundOffset'] = vector3(0.0, 0.0, 1.4),
                    ['directionOffset'] = nil,
                    ['maxDistance'] = 32.0,
                    ['refDistance'] = 16.0,
                    ['rolloffFactor'] = 1.25,
                    ['coneInnerAngle'] = 90,
                    ['coneOuterAngle'] = 180,
                    ['coneOuterGain'] = 0.5,
                    ['fadeDurationMs'] = 250,
                    ['volumeMultiplier'] = 1.0,
                    ['lowPassGainReductionPercent'] = 15
                }
            }
        },

        ['tjsp'] = { 
            ['enabled'] = true,
            ['autoAdjustTime'] = false,
            ['idleWallpaperUrl'] = 'https://r2.fivemanage.com/bJIDVmxrhBmS3uUYaSpdv/1920x1080.png',
            ['maxVolumePercent'] = 100,
            ['smokeFxMultiplier'] = 7,
            ['smokeTimeoutMs'] = 5000,
            ['sparklerFxMultiplier'] = 1,
            ['sparklerTimeoutMs'] = 1500,
            ['delayBetweenSmokeChainMs'] = 1500,
            ['delayToTriggerBassEffectsAfterPlayingMs'] = 2500,
            ['featureDelayWithControllerInterfaceClosedMs'] = 500,
        
            ['bass'] = {
                ['smoke'] = {
                    ['cooldownMs'] = 30000,
                    ['colorWithDynamicSpotlights'] = true
                },
            
                ['sparklers'] = {
                    ['cooldownMs'] = 30000,
                    ['colorWithDynamicSpotlights'] = true
                }
            },
        
            ['area'] = {
                ['range'] = 120.0,
                ['center'] = vec3(-450.50, 1154.78, 331.71),
                ['height'] = nil,
            
                ['polygons'] = nil,
            },
        
            ['disableEmitters'] = {
            },
        
        
            ['scaleform'] = nil,
        
            ['replacers'] = {
                ['ba_prop_battle_club_screen'] = 'script_rt_club_tv',
                ['h4_prop_battle_club_projector'] = 'script_rt_club_projector',
                ['v_ilev_cin_screen'] = 'script_rt_cinscreen'
            
            },
        
            ['monitors'] = {
            },
        
            ['screens'] = {
                {
                    ['hash'] = 'h4_prop_battle_club_screen',
                    ['position'] = vec3(-450.10, 1154.59, 333.5), -- -1031.54, 174.11, 61.65, 99.03
                    ['rotation'] = nil,
                    ['heading'] = -105.00,
                    ['lodDistance'] = 100,
                
                    ['advance'] = {
                        ['durationMs'] = 3000,
                        ['position'] = vec3(-449.81, 1154.51, 333.5-1)
                    }
                },
            
            },
        
            ['spotlights'] = {
            
            },
        
            ['smokers'] = {
            
            },
        
            ['sparklers'] = {
            },
        
            ['speakers'] = {
                {
                    ['hash'] = 'h4_prop_h4_isl_speaker_01a',
                    ['visible'] = true,
                    ['position'] = vec3(-451.73, 1148.51, 333.28),
                    ['rotation'] = nil,
                    ['heading'] = -150.00,
                    ['lodDistance'] = nil,
                    ['soundOffset'] = vector3(0, 0, 1.4),
                    ['distanceOffset'] = nil,
                    ['maxDistance'] = 64.0,
                    ['refDistance'] = 32.0,
                    ['rolloffFactor'] = 1.25,
                    ['coneInnerAngle'] = 90,
                    ['coneOuterAngle'] = 180,
                    ['coneOuterGain'] = 0.5,
                    ['fadeDurationMs'] = 250,
                    ['volumeMultiplier'] = 1.0,
                    ['lowPassGainReductionPercent'] = 15
                },
            
                {
                    ['hash'] = 'h4_prop_h4_isl_speaker_01a',
                    ['visible'] = true,
                    ['position'] = vec3(-449.06, 1158.19, 333.28),
                    ['rotation'] = nil,
                    ['heading'] = -60.00,
                    ['lodDistance'] = nil,
                    ['soundOffset'] = vector3(0, 0, 1.4),
                    ['distanceOffset'] = nil,
                    ['maxDistance'] = 64.0,
                    ['refDistance'] = 32.0,
                    ['rolloffFactor'] = 1.25,
                    ['coneInnerAngle'] = 90,
                    ['coneOuterAngle'] = 180,
                    ['coneOuterGain'] = 0.5,
                    ['fadeDurationMs'] = 250,
                    ['volumeMultiplier'] = 1.0,
                    ['lowPassGainReductionPercent'] = 15
                },
            
            },
        },

        ['fiv3devs_asgard'] = {
            ['enabled'] = true,
            ['autoAdjustTime'] = false,
            ['idleWallpaperUrl'] = 'https://cfx-nui-' .. GetCurrentResourceName() .. '/client/dui/images/wallpaper.png',
            ['maxVolumePercent'] = 100,
            ['smokeFxMultiplier'] = 3,
            ['smokeTimeoutMs'] = 5000,
            ['sparklerFxMultiplier'] = 1,
            ['sparklerTimeoutMs'] = 1500,
            ['delayBetweenSmokeChainMs'] = 1500,
            ['delayToTriggerBassEffectsAfterPlayingMs'] = 2500,
            ['featureDelayWithControllerInterfaceClosedMs'] = 500,

            ['bass'] = {
                ['smoke'] = {
                    ['cooldownMs'] = 30000,
                    ['colorWithDynamicSpotlights'] = true
                },

                ['sparklers'] = {
                    ['cooldownMs'] = 30000,
                    ['colorWithDynamicSpotlights'] = true
                }
            },

            ['area'] = {
                ['range'] = 128.0,
                ['center'] = vector3(-1733.92, -822.03, 10.24),
                ['height'] = nil,
                ['polygons'] = nil
            },

            ['disableEmitters'] = nil,
            ['scaleform'] = nil,
			
			['replacers'] = {
                ['h4_prop_battle_club_projector'] = 'script_rt_club_projector',
				['prop_tv_flat_01'] = 'script_rt_tvscreen'
            },

            ['monitors'] = {
                {
                    ['hash'] = 'prop_tv_flat_01',
                    ['position'] = vector3(-1701.12, -790.2, 15.17),
                    ['rotation'] = nil,
                    ['heading'] = 319.71,
                    ['lodDistance'] = 64
                },

                {
                    ['hash'] = '5d_asgard_schermopalco_hall',
                    ['interior'] = true,
                    ['position'] = vector3(-1743.21, -836.171, 12.43873),
                    ['rotation'] = nil,
                    ['heading'] = 49.0,
                    ['lodDistance'] = nil
                }
            },

            ['screens'] = nil,

            ['spotlights'] = {
                {
                    ['soundSyncType'] = SOUND_SYNC_TYPE.LOW_MID,
                    ['hash'] = 'cs_prop_hall_spotlight',
                    ['position'] = vector3(-1746.54300000, -831.39490000, 15.25240000),
                    ['rotation'] = vector3(0.0, 0.0, 139.0),
                    ['heading'] = 0.0,
                    ['lodDistance'] = nil,
                    ['color'] = {15, 3, 255}
                },

                {
                    ['soundSyncType'] = SOUND_SYNC_TYPE.MID,
                    ['hash'] = 'cs_prop_hall_spotlight',
                    ['position'] = vector3(-1745.83700000, -832.00920000, 15.25240000),
                    ['rotation'] = vector3(0.0, 0.0, 120.0),
                    ['heading'] = 0.0,
                    ['lodDistance'] = nil,
                    ['color'] = {255, 255, 0}
                },

                {
                    ['soundSyncType'] = SOUND_SYNC_TYPE.BASS,
                    ['hash'] = 'cs_prop_hall_spotlight',
                    ['position'] = vector3(-1745.05900000, -832.68550000, 15.25240000),
                    ['rotation'] = vector3(35.0, 0.0, 190.0),
                    ['heading'] = 0.0,
                    ['lodDistance'] = nil,
                    ['color'] = {255, 1, 1}
                },

                {
                    ['soundSyncType'] = SOUND_SYNC_TYPE.BASS,
                    ['hash'] = 'cs_prop_hall_spotlight',
                    ['position'] = vector3(-1740.03600000, -837.05960000, 15.25240000),
                    ['rotation'] = vector3(30.0, 0.0, 40.0),
                    ['heading'] = 52.0,
                    ['lodDistance'] = nil,
                    ['color'] = {255, 1, 1}
                },

                {
                    ['soundSyncType'] = SOUND_SYNC_TYPE.TREBLE,
                    ['hash'] = 'cs_prop_hall_spotlight',
                    ['position'] = vector3(-1739.25800000, -837.73610000, 15.25240000),
                    ['rotation'] = vector3(0.0, 0.0, 160.0),
                    ['heading'] = 118.0,
                    ['lodDistance'] = nil,
                    ['color'] = {3, 83, 255}
                },

                {
                    ['soundSyncType'] = SOUND_SYNC_TYPE.HIGH_MID,
                    ['hash'] = 'cs_prop_hall_spotlight',
                    ['position'] = vector3(-1738.37200000, -838.50680000, 15.25240000),
                    ['rotation'] = vector3(0.0, 0.0, 139.0),
                    ['heading'] = 270.0,
                    ['lodDistance'] = nil,
                    ['color'] = {255, 5, 190}
                }
            },

            ['smokers'] = {
                {
                    ['hash'] = 'ba_prop_club_smoke_machine',
                    ['visible'] = true,
    
                    ['fx'] = {
                        ['library'] = 'scr_ba_club',
                        ['effect'] = 'scr_ba_club_smoke_machine',
                    },

                    ['position'] = vector3(-1743.154, -831.4737, 10.05084),
                    ['rotation'] = nil,
                    ['heading'] = 139.0,
                    ['lodDistance'] = nil,
                    ['color'] = {255, 255, 255}
                },

                {
                    ['hash'] = 'ba_prop_club_smoke_machine',
                    ['visible'] = true,
    
                    ['fx'] = {
                        ['library'] = 'scr_ba_club',
                        ['effect'] = 'scr_ba_club_smoke_machine',
                    },

                    ['position'] = vector3(-1738.71, -835.3363, 10.05084),
                    ['rotation'] = nil,
                    ['heading'] = 139.0,
                    ['lodDistance'] = nil,
                    ['color'] = {255, 255, 255}
                }
            },

            ['sparklers'] = {
                {
                    ['hash'] = 'bkr_prop_coke_tube_03',
                    ['visible'] = true,
    
                    ['fx'] = {
                        ['library'] = 'scr_ih_club',
                        ['effect'] = 'scr_ih_club_sparkler',
                    },

                    ['position'] = vector3(-1742.3, -841.08, 10.0535641),
                    ['rotation'] = nil,
                    ['heading'] = 0.0,
                    ['lodDistance'] = nil,
                    ['color'] = {255, 255, 255}
                },

                {
                    ['hash'] = 'bkr_prop_coke_tube_03',
                    ['visible'] = true,
    
                    ['fx'] = {
                        ['library'] = 'scr_ih_club',
                        ['effect'] = 'scr_ih_club_sparkler',
                    },

                    ['position'] = vector3(-1748.5, -835.87, 10.0535641),
                    ['rotation'] = nil,
                    ['heading'] = 0.0,
                    ['lodDistance'] = nil,
                    ['color'] = {255, 255, 255}
                },
				
				{
                    ['hash'] = 'bkr_prop_coke_tube_03',
                    ['visible'] = true,
    
                    ['fx'] = {
                        ['library'] = 'scr_ih_club',
                        ['effect'] = 'scr_ih_club_sparkler',
                    },

                    ['position'] = vector3(-1749.44, -835.1, 10.0535641),
                    ['rotation'] = nil,
                    ['heading'] = 0.0,
                    ['lodDistance'] = nil,
                    ['color'] = {255, 255, 255}
                },
				
				{
                    ['hash'] = 'bkr_prop_coke_tube_03',
                    ['visible'] = true,
    
                    ['fx'] = {
                        ['library'] = 'scr_ih_club',
                        ['effect'] = 'scr_ih_club_sparkler',
                    },

                    ['position'] = vector3(-1750.39, -834.22, 10.0535641),
                    ['rotation'] = nil,
                    ['heading'] = 0.0,
                    ['lodDistance'] = nil,
                    ['color'] = {255, 255, 255}
                },

				{
                    ['hash'] = 'bkr_prop_coke_tube_03',
                    ['visible'] = true,
    
                    ['fx'] = {
                        ['library'] = 'scr_ih_club',
                        ['effect'] = 'scr_ih_club_sparkler',
                    },

                    ['position'] = vector3(-1741.26, -842.04, 10.0535641),
                    ['rotation'] = nil,
                    ['heading'] = 0.0,
                    ['lodDistance'] = nil,
                    ['color'] = {255, 255, 255}
                },

				{
                    ['hash'] = 'bkr_prop_coke_tube_03',
                    ['visible'] = true,
    
                    ['fx'] = {
                        ['library'] = 'scr_ih_club',
                        ['effect'] = 'scr_ih_club_sparkler',
                    },

                    ['position'] = vector3(-1740.15, -843.05, 10.0535641),
                    ['rotation'] = nil,
                    ['heading'] = 0.0,
                    ['lodDistance'] = nil,
                    ['color'] = {255, 255, 255}
                }
            },

			['speakers'] = {
				{
                    ['hash'] = 'ba_prop_battle_club_speaker_array',
                    ['visible'] = true,
                    ['position'] = vector3(-1702.556, -791.5062, 13.56454),
                    ['heading'] = 0.0,
                    ['soundOffset'] = vector3(0.0, 0.0, 0.5),
                    ['maxDistance'] = 16.0,
                    ['refDistance'] = 8.0
                },

				{
                    ['hash'] = 'sf_prop_sf_speaker_stand_01a',
                    ['visible'] = true,
                    ['position'] = vector3(-1738.64, -842.54, 10.05467),
                    ['heading'] = 186.11,
                    ['soundOffset'] = vector3(0.0, 0.0, 2.0),
                    ['maxDistance'] = 48.0,
                    ['refDistance'] = 24.0,
                    ['volumeMultiplier'] = 0.75
                },

                {
                    ['hash'] = 'sf_prop_sf_speaker_stand_01a',
                    ['visible'] = true,
                    ['position'] = vector3(-1750.09, -832.6, 10.05467),
                    ['heading'] = 90.58,
                    ['soundOffset'] = vector3(0.0, 0.0, 2.0),
                    ['maxDistance'] = 48.0,
                    ['refDistance'] = 24.0,
                    ['volumeMultiplier'] = 0.75
                }
            }
        },
        
        -- ['boatevitrine'] = {
        --     ['enabled'] = true,
        --     ['autoAdjustTime'] = false,
        --     ['idleWallpaperUrl'] = '',
        --     ['maxVolumePercent'] = 100,
        --     ['smokeFxMultiplier'] = 4,
        --     ['smokeTimeoutMs'] = 3000,
        --     ['sparklerFxMultiplier'] = 5,
        --     ['sparklerTimeoutMs'] = 1500,
        --     ['delayBetweenSmokeChainMs'] = 1500,
        --     ['delayToTriggerBassEffectsAfterPlayingMs'] = 2500,
        --     ['featureDelayWithControllerInterfaceClosedMs'] = 500,

        --     ['bass'] = {
        --         ['smoke'] = {
        --             ['cooldownMs'] = 30000,
        --             ['colorWithDynamicSpotlights'] = true
        --         },

        --         ['sparklers'] = {
        --             ['cooldownMs'] = 30000,
        --             ['colorWithDynamicSpotlights'] = true
        --         }
        --     },

        --     ['area'] = {
        --         ['range'] = 200.0,
        --         ['center'] = vector3(-778.77,-797.69,12.11),
        --         ['height'] = nil,

        --         ['polygons'] = {
        --             ['applyLowPassFilterOutside'] = false,
        --             ['invertLowPassApplication'] = false,
        --             ['hideReplacersOutside'] = false,

        --             ['entries'] = {
        --                 {
        --                     ['height'] = {
        --                         ['min'] = 20.0,
        --                         ['max'] = 25.0
        --                     },
        
        --                     ['points'] = {
        --                         vector2(-586.23, -1068.54),
        --                         vector2(-572.81, -1067.93),
        --                         vector2(-571.14, -1056.76),
        --                         vector2(-571.86, -1049.05),
        --                         vector2(-583.64, -1049.05),
        --                         vector2(-584.47, -1051.86),
        --                         vector2(-586.84, -1051.89),
        --                         vector2(-586.82, -1057.17),
        --                         vector2(-586.05, -1066.10),
        --                     }
        --                 }
        --             }
        --         }
        --     },

        --     ['disableEmitters'] = nil,
        --     ['scaleform'] = nil,

        --     ['replacers'] = {
        --         ['h4_prop_battle_club_projector'] = 'script_rt_club_projector',
        --         ['prop_tv_flat_01'] = 'script_rt_tvscreen',
        --         ['big_screens'] = 'script_rt_big_disp',


        --     },

        --     ['monitors'] = {
        --         {
        --             ['hash'] = 'h4_prop_battle_club_screen',
        --             ['position'] = vector3(-808.64306640625, -797.7296752929688, 15.69593524932861),
        --             ['rotation'] = vector3(0, 0, 88.25507354736328),
        --             ['heading'] = nil,
        --             ['lodDistance'] = nil
        --         },
        --         {
        --             ['hash'] = 'h4_prop_battle_club_screen',
        --             ['position'] = vector3(-778.9755859375, -789.6004638671875, 15.53814792633056),
        --             ['rotation'] = vector3(0, 0, -89.27714538574219),
        --             ['heading'] = nil,
        --             ['lodDistance'] = nil
        --         },
        --         {
        --             ['hash'] = 'h4_prop_battle_club_screen',
        --             ['position'] = vector3(-778.980712890625, -803.7715454101562, 15.4394245147705),
        --             ['rotation'] = vector3(0, 0, -91.1868667602539),
        --             ['heading'] = nil,
        --             ['lodDistance'] = nil
        --         },
        --         {
        --             ['hash'] = 'h4_prop_battle_club_screen',
        --             ['position'] = vector3(-778.8126831054688, -806.2113647460938, 14.1468448638916),
        --             ['rotation'] = vector3(0, 0, 88.37095642089844),
        --             ['heading'] = nil,
        --             ['lodDistance'] = nil
        --         },
        --     },

        --     ['screens'] = {
        --         {
        --             ['hash'] = 'prop_huge_display_02',
        --             ['position'] = vector3(-771.926025390625, -785.6976318359375, 14.20609664916992),
        --             ['rotation'] = vector3(0, 0, 0),
        --             ['heading'] = nil,
        --             ['lodDistance'] = nil,
        
        --             ['advance'] = {
        --                 ['durationMs'] = 10000,
        --                 ['position'] = vector3(-771.926025390625, -785.6976318359375, 7.42176961898803)
        --             }
        --         },
        --     },

        --     ['spotlights'] = {
        --         {  --1
        --             ['soundSyncType'] = SOUND_SYNC_TYPE.BASS,
        --             ['hash'] = 'cs_prop_hall_spotlight',
        --             ['position'] = vector3(-774.884033203125, -792.6272583007812, 15.70460414886474),
        --             ['rotation'] = vector3(0, 0, 0),
        --             ['lodDistance'] = nil,
        --             ['color'] = {255, 1, 1}
        --         },
        --         {  ---2
        --             ['soundSyncType'] = SOUND_SYNC_TYPE.MID,
        --             ['hash'] = 'cs_prop_hall_spotlight',
        --             ['position'] = vector3(-772.7408447265625, -793.2611083984375, 15.53086376190185),
        --             ['rotation'] = vector3(0, 0, 0),
        --             ['lodDistance'] = nil,
        --             ['color'] = {255, 1, 1}
        --         },
        --         { ---3
        --             ['soundSyncType'] = SOUND_SYNC_TYPE.TREBLE,
        --             ['hash'] = 'cs_prop_hall_spotlight',
        --             ['position'] = vector3(-765.7067260742188, -793.1444702148438, 15.43272018432617),
        --             ['rotation'] = vector3(0, 0, 0),
        --             ['lodDistance'] = nil,
        --             ['color'] = {255, 1, 1}
        --         },
        --         -- {
        --         --     ['soundSyncType'] = SOUND_SYNC_TYPE.BASS,
        --         --     ['hash'] = 'stg_strobe_hdgh',
        --         --     ['position'] = vector3(-766.9535522460938, -793.0077514648438, 15.61659145355224),
        --         --     ['rotation'] = vector3(0, 0, 0),
        --         --     ['lodDistance'] = nil,
        --         --     ['color'] = {255, 1, 1}
        --         -- },
        --         -- {
        --         --     ['soundSyncType'] = SOUND_SYNC_TYPE.BASS,
        --         --     ['hash'] = 'stg_strobe_hdgh',
        --         --     ['position'] = vector3(-777.0781860351562, -792.7462158203125, 15.6479787826538),
        --         --     ['rotation'] = vector3(0, 0, 0),
        --         --     ['lodDistance'] = nil,
        --         --     ['color'] = {255, 1, 1}
        --         -- },
                    
        --     },
        --     ['smokers'] = {
        --         {--1
        --             ['hash'] = 'ba_prop_club_smoke_machine',
        --             ['visible'] = false,
        
        --             ['fx'] = {
        --                 ['library'] = 'scr_ba_club',
        --                 ['effect'] = 'scr_ba_club_smoke_machine',
        --             },
        
        --             ['position'] = vector3(-778.5438232421875, -789.8346557617188, 11.67296886444091),
        --             ['rotation'] = vector3(0, 0, 39.34386444091797),
        --             ['color'] = {242, 223, 7}
        --         },
        --         {--2
        --             ['hash'] = 'ba_prop_club_smoke_machine',
        --             ['visible'] = false,
        
        --             ['fx'] = {
        --                 ['library'] = 'scr_ba_club',
        --                 ['effect'] = 'scr_ba_club_smoke_machine',
        --             },
        
        --             ['position'] = vector3(-765.6807250976562, -787.6138916015625, 11.74573707580566),
        --             ['rotation'] = vector3(0, 0, -51.57386016845703),
        --             ['color'] = {242, 7, 7}
        --         },
                        
        --     },
        --     ['sparklers'] = {
        --         { --1
        --             ['hash'] = 'prop_cs_pour_tube',
        --             ['visible'] = true,
        
        --             ['fx'] = {
        --                 ['library'] = 'scr_ih_club',
        --                 ['effect'] = 'scr_ih_club_sparkler',
        --             },
        
        --             ['position'] = vector3(-17-766.9610595703125, -792.65283203125, 11.62600994110107),
        --             ['rotation'] = vector3(0, 0, 0),
        --             ['heading'] = nil,
        --             ['lodDistance'] = nil,
        --             ['color'] = {242, 7, 7}
        --         },
        --         { --2
        --             ['hash'] = 'prop_cs_pour_tube',
        --             ['visible'] = true,
        
        --             ['fx'] = {
        --                 ['library'] = 'scr_ih_club',
        --                 ['effect'] = 'scr_ih_club_sparkler',
        --             },
        
        --             ['position'] = vector3(-777.276123046875, -792.779052734375, 11.61583805084228),
        --             ['rotation'] = vector3(0, 0, 0),
        --             ['heading'] = nil,
        --             ['lodDistance'] = nil,
        --             ['color'] = {242, 195, 7}
        --         },
        --         { --3
        --             ['hash'] = 'prop_cs_pour_tube',
        --             ['visible'] = true,
        
        --             ['fx'] = {
        --                 ['library'] = 'scr_ih_club',
        --                 ['effect'] = 'scr_ih_club_sparkler',
        --             },
        
        --             ['position'] = vector3(-784.9722290039062, -794.7619018554688, 11.94190025329589),
        --             ['rotation'] = vector3(0, 0, 0),
        --             ['heading'] = 0.0,
        --             ['lodDistance'] = nil,
        --             ['color'] = {242, 195, 7}
        --         },
                
        --     },
        --     ['speakers'] = {
        --         {
        --             ['hash'] = 'ba_prop_battle_club_speaker_large',
        --             ['visible'] = false,
        --             ['position'] = vector3(-784.423, -804.245, 11.050),
        --             ['rotation'] = nil,
        --             ['heading'] = 201.74774169922,
        --             ['lodDistance'] = nil,
        --             ['soundOffset'] = vector3(0, 0, 1.4),
        --             ['distanceOffset'] = nil,
        --             ['maxDistance'] = 150.0,
        --             ['refDistance'] = 16.0,
        --             ['rolloffFactor'] = 1.25,
        --             ['coneInnerAngle'] = 90,
        --             ['coneOuterAngle'] = 180,
        --             ['coneOuterGain'] = 0.5,
        --             ['fadeDurationMs'] = 250,
        --             ['volumeMultiplier'] = 1.0,
        --             ['lowPassGainReductionPercent'] = 15
        --         },

        --         {
        --             ['hash'] = 'ba_prop_battle_club_speaker_large',
        --             ['visible'] = false,
        --             ['position'] = vector3(-784.423, -790.939, 11.050),
        --             ['rotation'] = nil,
        --             ['heading'] = 268.927734375,
        --             ['lodDistance'] = nil,
        --             ['soundOffset'] = vector3(0, 0, 1.4),
        --             ['distanceOffset'] = nil,
        --             ['maxDistance'] = 150.0,
        --             ['refDistance'] = 16.0,
        --             ['rolloffFactor'] = 1.25,
        --             ['coneInnerAngle'] = 90,
        --             ['coneOuterAngle'] = 180,
        --             ['coneOuterGain'] = 0.5,
        --             ['fadeDurationMs'] = 250,
        --             ['volumeMultiplier'] = 1.0,
        --             ['lowPassGainReductionPercent'] = 15
        --         },

        --         {
        --             ['hash'] = 'ba_prop_battle_club_speaker_large',
        --             ['visible'] = false,
        --             ['position'] = vector3(-798.280, -790.939, 11.050),
        --             ['rotation'] = nil,
        --             ['heading'] = 321.2568359375,
        --             ['lodDistance'] = nil,
        --             ['soundOffset'] = vector3(0, 0, 1.4),
        --             ['distanceOffset'] = nil,
        --             ['maxDistance'] = 150.0,
        --             ['refDistance'] = 16.0,
        --             ['rolloffFactor'] = 1.25,
        --             ['coneInnerAngle'] = 90,
        --             ['coneOuterAngle'] = 180,
        --             ['coneOuterGain'] = 0.5,
        --             ['fadeDurationMs'] = 250,
        --             ['volumeMultiplier'] = 1.0,
        --             ['lowPassGainReductionPercent'] = 15
        --         },

        --     {
        --         ['hash'] = 'ba_prop_battle_club_speaker_large',
        --         ['visible'] = false,
        --         ['position'] = vector3(-798.280, -804.280, 11.050),
        --         ['rotation'] = nil,
        --         ['heading'] = 138.7896270752,
        --         ['lodDistance'] = nil,
        --         ['soundOffset'] = vector3(0, 0, 1.4),
        --         ['distanceOffset'] = nil,
        --         ['maxDistance'] = 150.0,
        --         ['refDistance'] = 16.0,
        --         ['rolloffFactor'] = 1.25,
        --         ['coneInnerAngle'] = 90,
        --         ['coneOuterAngle'] = 180,
        --         ['coneOuterGain'] = 0.5,
        --         ['fadeDurationMs'] = 250,
        --         ['volumeMultiplier'] = 1.0,
        --         ['lowPassGainReductionPercent'] = 15
        --     },
        --     {
        --         ['hash'] = 'ba_prop_battle_club_speaker_large',
        --         ['visible'] = false,
        --         ['position'] = vector3(-803.679, -812.045, 11.247),
        --         ['rotation'] = nil,
        --         ['heading'] = 138.7896270752,
        --         ['lodDistance'] = nil,
        --         ['soundOffset'] = vector3(0, 0, 1.4),
        --         ['distanceOffset'] = nil,
        --         ['maxDistance'] = 150.0,
        --         ['refDistance'] = 16.0,
        --         ['rolloffFactor'] = 1.25,
        --         ['coneInnerAngle'] = 90,
        --         ['coneOuterAngle'] = 180,
        --         ['coneOuterGain'] = 0.5,
        --         ['fadeDurationMs'] = 250,
        --         ['volumeMultiplier'] = 1.0,
        --         ['lowPassGainReductionPercent'] = 15
        --     },
        --     {
        --         ['hash'] = 'ba_prop_battle_club_speaker_large',
        --         ['visible'] = false,
        --         ['position'] = vector3(-803.679, -816.123, 11.247),
        --         ['rotation'] = nil,
        --         ['heading'] = 138.7896270752,
        --         ['lodDistance'] = nil,
        --         ['soundOffset'] = vector3(0, 0, 1.4),
        --         ['distanceOffset'] = nil,
        --         ['maxDistance'] = 150.0,
        --         ['refDistance'] = 16.0,
        --         ['rolloffFactor'] = 1.25,
        --         ['coneInnerAngle'] = 90,
        --         ['coneOuterAngle'] = 180,
        --         ['coneOuterGain'] = 0.5,
        --         ['fadeDurationMs'] = 250,
        --         ['volumeMultiplier'] = 1.0,
        --         ['lowPassGainReductionPercent'] = 15
        --     },           
        --     {
        --         ['hash'] = 'ba_prop_battle_club_speaker_large',
        --         ['visible'] = false,
        --         ['position'] = vector3(-803.679, -820.656, 11.247),
        --         ['rotation'] = nil,
        --         ['heading'] = 138.7896270752,
        --         ['lodDistance'] = nil,
        --         ['soundOffset'] = vector3(0, 0, 1.4),
        --         ['distanceOffset'] = nil,
        --         ['maxDistance'] = 150.0,
        --         ['refDistance'] = 16.0,
        --         ['rolloffFactor'] = 1.25,
        --         ['coneInnerAngle'] = 90,
        --         ['coneOuterAngle'] = 180,
        --         ['coneOuterGain'] = 0.5,
        --         ['fadeDurationMs'] = 250,
        --         ['volumeMultiplier'] = 1.0,
        --         ['lowPassGainReductionPercent'] = 15
        --     },          
        --      {
        --         ['hash'] = 'ba_prop_battle_club_speaker_large',
        --         ['visible'] = false,
        --         ['position'] = vector3(-803.679, -824.574, 11.247),
        --         ['rotation'] = nil,
        --         ['heading'] = 138.7896270752,
        --         ['lodDistance'] = nil,
        --         ['soundOffset'] = vector3(0, 0, 1.4),
        --         ['distanceOffset'] = nil,
        --         ['maxDistance'] = 150.0,
        --         ['refDistance'] = 16.0,
        --         ['rolloffFactor'] = 1.25,
        --         ['coneInnerAngle'] = 90,
        --         ['coneOuterAngle'] = 180,
        --         ['coneOuterGain'] = 0.5,
        --         ['fadeDurationMs'] = 250,
        --         ['volumeMultiplier'] = 1.0,
        --         ['lowPassGainReductionPercent'] = 15
        --     },
        --     {
        --         ['hash'] = 'ba_prop_battle_club_speaker_large',
        --         ['visible'] = false,
        --         ['position'] = vector3(-778.135, -785.235, 11.664),
        --         ['rotation'] = nil,
        --         ['heading'] = 138.7896270752,
        --         ['lodDistance'] = nil,
        --         ['soundOffset'] = vector3(0, 0, 1.4),
        --         ['distanceOffset'] = nil,
        --         ['maxDistance'] = 150.0,
        --         ['refDistance'] = 16.0,
        --         ['rolloffFactor'] = 1.25,
        --         ['coneInnerAngle'] = 90,
        --         ['coneOuterAngle'] = 180,
        --         ['coneOuterGain'] = 0.5,
        --         ['fadeDurationMs'] = 250,
        --         ['volumeMultiplier'] = 3.0,
        --         ['lowPassGainReductionPercent'] = 15
        --     },
        --     {
        --         ['hash'] = 'ba_prop_battle_club_speaker_large',
        --         ['visible'] = false,
        --         ['position'] = vector3(-765.936, -785.235, 11.664),
        --         ['rotation'] = nil,
        --         ['heading'] = 138.7896270752,
        --         ['lodDistance'] = nil,
        --         ['soundOffset'] = vector3(0, 0, 1.4),
        --         ['distanceOffset'] = nil,
        --         ['maxDistance'] = 150.0,
        --         ['refDistance'] = 16.0,
        --         ['rolloffFactor'] = 1.25,
        --         ['coneInnerAngle'] = 90,
        --         ['coneOuterAngle'] = 180,
        --         ['coneOuterGain'] = 0.5,
        --         ['fadeDurationMs'] = 250,
        --         ['volumeMultiplier'] = 3.0,
        --         ['lowPassGainReductionPercent'] = 15
        --     }
        --     }  
        -- },

    }
}
