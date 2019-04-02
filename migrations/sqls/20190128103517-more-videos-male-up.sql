INSERT INTO videos (name, male_video_uri, male_thumbnail_uri) VALUES ('Barbell curl overhand grip', 'https://www.dropbox.com/sh/eu0jqrwe3a3djra/AACKIiVj49oKZDFCzvZdiS4Va/Male/Barbell%20Exercises/Barbell%20curl%20overhand%20grip.mp4?raw=1', 'https://ucfab0aafa90c55dfbb47526904c.previews.dropboxusercontent.com/p/thumb/AAUACZkEPc7mM10RJi6q9UssAyN6FEl0TriEZix1kpLTUhewbD0V_CGBc3w384eLNDVutcsAf1WWH8c6DD5JzLoynrlk3c3iTor-EDf7dUqhDMvh-TTrKdW8rYGdwdcKHFIdRZqcRv-4_hD2z8CHkORmVTgyGG-gR0UlLrmbvcQUwsbf5hZdLbShMsiO5SrkSFu-wt_hMYulKFgPob9uj0EDb6YAaWQjdEzhZE9ehh6dMFKE9ml8tRZWmFrb_zZIZsbLWk4UWAIFmmHtOycw6UYZ62Uzn0EpiVoeJ84axKu2fadudPHOzD79U-ErEGfCyLgQU7gEXzfhHqmSH2xTbluUKJsQAJsaTRQTJ6A6mc3reH_V4TBOIp5ZPkARZ3m94Jxizt4c6VfjNsVsUir64NW_SVmyVjZ854FU5CJmHJEAUZMoGyh2et_yjtjWEmfbQXgKmIKwTVJQlpasoBHWkY3APFmAkhEpv2oocV_oxwr0x8cq5G_xaKalXK3K80-rx7gCJj8Tb2aI60rd5wnpp_kp103FkovTrfPoed17-chCCtcSKMylvfXtAgfPQpK_sBbNARVjO0tqNjmY4PjhuK93W87p2YQyHF3HXjd-3RaL1GYO8HV0sWChe3UKZj2K4DjHBEOayetEfy6qt0A06aVvoZZ4YHmTF-kafdX4K2gCvDZfBh-BzKpLHwT66bW1p0cxZ4a4Wn5HeftRoGDPZAiGl2jS6q1OBLTLsHl1YJExMlDIP3G72hFKS2LyGLcChyYaOMt1WCzte32lvb7ADgpGvnWxv6vJgANjRhrts9Sk4PHMf1PdQemweZsNVyWSlfYA5VrzQXbMgM7pXEgY36tffd2rlsBi29haRtaQxZCSjA/p.jpeg?size=178x178&size_mode=1');

        INSERT INTO exercises (name, video_id)
        VALUES
         (
         'Barbell curl overhand grip',
         (select id from videos where name='Barbell curl overhand grip' LIMIT 1)
         ) 
        ON CONFLICT (name) 
        DO
         UPDATE
           SET video_id = (select id from videos where name='Barbell curl overhand grip' LIMIT 1);
        
INSERT INTO videos (name, male_video_uri, male_thumbnail_uri) VALUES ('Barbell Curls', 'https://www.dropbox.com/sh/eu0jqrwe3a3djra/AABFoU92wzWJoB5DWDxGdTwKa/Male/Barbell%20Exercises/Barbell%20Curls.mp4?raw=1', 'https://uc99745508a4bfe06ba6a7ff732f.previews.dropboxusercontent.com/p/thumb/AAXR-LMScfUHh1REZKDwNNu0sOh9_vfbAeZxKwdAsd3H3u7VqT3GoMe_x1SqK1qGCyiI1iBscJv1qPaobtpiHhj5AdpOHl2KVr5jRCwnLpXK1iEKXgEfQeO_n_ys12v6EQEq_5VkaKK74MW2X3ivH2OavffXxfoiYhM4DqLuc-G1XHQObWLLu2zChX2YK36EQcZu72dFT3rs6CJXhZDpqWscttdXY72z8Efn5u6PbHGQujuePcBryXp4SfX05HmbGStZVxqJ2bI32hulY_bIztZYVQMuZrg1BwqAkv-Ft6P2p1xC5KGAexL4Jlyi6g5hcd1PEFOaGY9GJVl8uVxtLv2Ma7RCyP5LSSkSkLrMaVc7ds4uHVge9RcHQPyjwDfPOvb9qYVpO-w7JgpA6Pu1Ikgr8FUZEsrGBQ8y5AbeX2NvDA6YQrYIISrmumz-LEosvvvRHheNEJyOnpuIx2RI2N_fDl40695MktjvgWIkyGIgjMWgLte7kbaBhOQWhA3ljGtO5GULcJAYodK5xc5B15ew7ZWINei2sJ5iiqGtbMFKv8xOket0vzId5OvIr_TxN2E97LuSM2w3R5vSYRJb0FHVxhrc9hfV1Nk43hSb7_UZJp43I7w6TeEwsPBmmlZrnpfx_7WAE9N-eERFz7yGHlDSyb-HBeUtPPt3Ewxw724nzpieyvgAxBTg9FR0D4yPpEqNqNiULATnM-2jKGOON-KT_imTvMmMwTgftc--jWJUpOdIxiGpNHJ-vIQE0kV9nYMlBCQPVHj0amjl64O4ur7sjhf1cxBTO5mHz9lovxFpRRlPz4qN1Ne4V8WHkMOObktuJOsk3JpmxtM3Hhb2PJSZ1sMKvWnQ4YmIwlLUEAAq_2e3srt_-0hqEnb1rNZxOvfa0oHCwVlVI5EbDuTXEnN0tEEz3suZ7UTH9x1nGzCkneDlFMq1dRKE8qvx-824BF-xJgq3ge1I7Y6DeeVvg-dThFZ2lmkqk2PaMkKHEP6YmRCvFc6ycO2gQcR8hSX7VdSlOrgxg-fhvUpiS3E3jUEF/p.jpeg?size=178x178&size_mode=1');

        INSERT INTO exercises (name, video_id)
        VALUES
         (
         'Barbell Curls',
         (select id from videos where name='Barbell Curls' LIMIT 1)
         ) 
        ON CONFLICT (name) 
        DO
         UPDATE
           SET video_id = (select id from videos where name='Barbell Curls' LIMIT 1);
        
INSERT INTO videos (name, male_video_uri, male_thumbnail_uri) VALUES ('Barbell Deadlift (Touch …o)', 'https://www.dropbox.com/sh/eu0jqrwe3a3djra/AAAM1H2L5X-oGRoJp5kP4bmYa/Male/Barbell%20Exercises/Barbell%20Deadlift%20%28Touch%20and%20Go%29.mp4?raw=1', 'https://uc6abc1f7520cc590f7107731d54.previews.dropboxusercontent.com/p/thumb/AAW0_cZ7y_ZPqrn19NwTouXaJJ-HRZ_kzwSMDhQe_xkg04qnz0QGWV44yuo9UEjLevSZ2qzMwnhgWSM36oG-rtuQ_3yzBDGIwGsMEpetNJ39xzPF_aActjJneHs6rw6ci7kToihArUeav-gHCo8oubOdP0h1nne4_TsdKJk82loKebuzWAG5DDt_I2ezZkFom6VqSB-rYauafpyxClS_AfBNnMhf1LDfGtMc6Qgw2X4VAzvm-rHQy1pMLBkI299S5MpJb_Ka3RUtW6D-1XFdR5AC-olo9Yx-n_neY5EHYhoywBbiz8wt3ndPX0EUpYPsUGHMKotT475Tszchn_mrgbiyqNLW0Q-ao5SdnAbz26M8b4Tp8Bbfb2IK-fr7_GUK0g5xujo8LySAG_ENamyibNHqv-5GYELgbj73lk02C_sm4DVAkSuiq9csT9ZZ6Yh9IRXLNKbpMVKGQe4lLj-olFifVdT7wGjNs3uljRkzqbuJEbqGjPwSoE3D7jMycygqS4G8Dc_PMlXTnmDxZr3XT4DintGxzxB0EC41bH2UU8OKhBtdkmk2WAkaKn86lWpiaIFTeE-_VJuo728M49umguRfsqJGzGN8G-alZq2FdGJHRmYhXGeKebXwUhSnT5f126plyPWzHOnhRYsAhN6D0TEEaSgDoGm8872D-iGv9TUe_2q8Rb73M94ap9uRu1Dxo_kR93wkLfJWiTVCIixtZmtG42hP_MbYLIuCV-3MnDRuJYk5UMEkct05nHq92DvcIZEjDAdzOUmctfLfvW8lVG95_8M8pg4HO2ZGa03eMwRrF7AfRkXRMIbUMsEUCBlhPqy15OaWKOm9LFKQv_PFsGFODMpF8EzyZnKRR3-bHmkA_zj5tow5ZQymOoFzyQCjDwUEXeh3fDbcss7mXCqlZOA6Ju94T7UY6j3cnICBZi9QGjlqAbu-ig39Cz5504SbM9OAcU8F9kgVinD6Jo9oWFrAYqg-FsONvS6AUVFqZvD4yRv-mHTxDIz7B7d0E7vCCqP2pbqJQYX0-IdLNEDzK9p8dc8Rl43ogGs5PWzDdCmD-Q/p.jpeg?size=178x178&size_mode=1');

        INSERT INTO exercises (name, video_id)
        VALUES
         (
         'Barbell Deadlift (Touch …o)',
         (select id from videos where name='Barbell Deadlift (Touch …o)' LIMIT 1)
         ) 
        ON CONFLICT (name) 
        DO
         UPDATE
           SET video_id = (select id from videos where name='Barbell Deadlift (Touch …o)' LIMIT 1);
        
INSERT INTO videos (name, male_video_uri, male_thumbnail_uri) VALUES ('Barbell Deadlift', 'https://www.dropbox.com/sh/eu0jqrwe3a3djra/AAAcY9tRKMNSYgXTV0s8MgrIa/Male/Barbell%20Exercises/Barbell%20Deadlift.mp4?raw=1', 'https://uc4299df82f815019361efbb9809.previews.dropboxusercontent.com/p/thumb/AAWcjRAqNQWnBQU7ZucVo4XpS2k6By1bekH5xaGbM0Bf7i0sHDvcJJeIQws_aXdYucxg-VCuRskW_QWYF6OzU-09s5lk3lOd15JtDwRyedZ_ds8vvLe_K9L58m1JUAhA1DFHXwWmknQLLsinx9LMLEUDW2bnl2eiD7JMr9LBKmdlQyRNyXM_BKUBl9smQvpkMFF7hcAKU8cOxIjzbzUNvvrffV27VZoWSXXYGiK8pgXvp9iyPd7xSz1Qv0Td9-hwVr5Q1tnPF89FhziCW9TF-RVYszWZ2Z3jbUAGE270WGE0Klp-JK1dws3V8j38Fdyu1kxpep89E3Enk0cftF3sKpKdJwcFB5c4ysJPNMLtlyv6ucj_riPTgbQi37tKdYXcqu2glcz-4iJR0NA3xxsgp9uzEUb8dhDJV8sdVOrXkKP7JIwrkvZFsjrP4XvwlIL1MraqCtNpAACGbKpLOcttKtTeyaMGqck4PTxw7xDAAQg6itweG5JHo501L7Tv7RgNgelnVMvlY2SWNKTQ6FF1_RpF8F22YGHT16U3vh6OPlxgTBf3rpuRPLfLNtBd8RLyl1_BUxrDXPCHq1McqsfK6vAXUv-jVXLjq0yMa3KcHSJxj1K_ZtGI0HTKobp7-DFqNYhlgtF9NpcV_lNoCCDbIMHqfni9ZZP5rHodWpJqATYwj8NoaGbU7PPJsaw65feyr7hqGXfPwTYevHIUqBqxDk225cpc77GZ1flrKiSDDYpO3bbBEEQax1c4M3iH3Rzo82634H5LJ23-v82DpEVAvUzIbbgziZo_01l-ESV7OSKbSYKZso5xLhemTbiwn8Rq6vNI3HjlNmUNi69Nk6g2wMhoWu34E2ec9SQOBGnyNZQmi3BswqKu1u3UYoiQYUdUpbwqJWngbhMIB2XvLvzWNW_F1KPX14in_EZJcRWOgr-lJiQvB1qwFhDHpYmSi-3Vci5PZalP25u4AFWVE_3KfQD7-bD2wcbS-VYylQ2wRCQH0jLCSnOG534LuXVHGfrJ93an2s9a2fhj4Fka43_QYDLv4w7sQLg6KcdeVaH1Kd0sRqEYt5vIga_6C6yfFUfUe1z_6PBUyJ4hwcXwqwEnJTf9mlyipsBklDulPZKfFR_F6WFWreicwcOTsR5YeICPl8PSlHSQpBC_bySaP1Ak7GDYYSr7ZTz8nw2mbBCLRiXp15dlWxeg5A1UepZbwueTPcdss_6oNC3MQX84kYK6XV8QZV4O-2ENh6RinwvvSS8Nd-4ARkh5Al527iNUPLstsSEd0aPXV_t9zXUj-PeEHj9AMTkxh-uSxEcFkq7YowLcvVoCTbfLm4BsS3Tkuy-j3II9DznAdF9flFou9BU3Qtlp/p.jpeg?size=178x178&size_mode=1');

        INSERT INTO exercises (name, video_id)
        VALUES
         (
         'Barbell Deadlift',
         (select id from videos where name='Barbell Deadlift' LIMIT 1)
         ) 
        ON CONFLICT (name) 
        DO
         UPDATE
           SET video_id = (select id from videos where name='Barbell Deadlift' LIMIT 1);
        
INSERT INTO videos (name, male_video_uri, male_thumbnail_uri) VALUES ('Barbell Overhead Press…ss', 'https://www.dropbox.com/sh/eu0jqrwe3a3djra/AADzoPWowhjk7ygcFMOcoAZ6a/Male/Barbell%20Exercises/Barbell%20Overhead%20Press%20-%20Push%20Press.mp4?raw=1', 'https://uc5e355161fb76dc39fa27e68f50.previews.dropboxusercontent.com/p/thumb/AAUM-vNpqSEW1pTruuSXi8bn2okew9EGqfYcXtKoaDFGSGGP_AJfGUGLbtikJ4Lgze8SFmj1cCb_G9o26WEoBwV00Qz7N6ikzvFQ7Toov5_L58Dyfxrpxd5fBhPgllLAHlDx7C5ANqHk2PCQW_zzbSgKn5Th_lPnzrycMMOYHnnKaMxU4SsHBmDWlRCzXrZq83UShdJQAKoNxs-3HHeubLBp3bHy4nJMsaK6u1ay_4HGAsbx_cDs_74MdLjkwnNkfmUpygEzuQ1SvFyiGhy10jATdmt1ZyoeeTKnskTCnYDecuO-IeEP0Aap1RxmbZ_5HKaa7W2ASmMNltaSWxdKVhQ9Ftqgecw_RkqwC51MFAV720bx2rgI9d5FDHRwG9Dz2tSxWNVEO3-80JWbBXQM6zgZfvZl3EKxSIIFwlWuzP-uPJaTSCP3BH9_APdfRK4VTZK01N2ZXx6ur6i4Iv-KJZW94AsKZvx-o-KmzNUmymXpo5pceylVEmHgSTIjXLNYWypRpc3sjS3-sgmW7VTXrm_Bqpsbeg88x9um5JFFnuGjdR3yyEEWKi3wLPqzn-t_hZD275SfWMOzDi-Xw7Ptknh-AEH8Me1LO5nFS5zpDjZHwGkVwPwZfhcpppUeKeT_gsbvaEGi2WTJ44i3sIGnFH-n4PPxMteq1Ltm0Aul2PfhbJmbezZ5dlnrml7BXWbTc-gS7JenMV2v78x5-AISeLOwQobZIEFl3px6LXv7r0Pqc8iDidx7MqpLoE5brTh6SgxjzVecubyImImU1SjRolETUywWvTeVbS4XXVH_GZwk6jw0RQIG-jowlA9x9sFrnLQ8WaekaplxXQqhjS4tajIWv24fh_5wgCWry3ObiEi8pojeWev8W-CZwmAidJ2KBt3qUW7O8k2xL8KKEpMutTF2oUzWjhsgQydOj5lGhnBBL3gBXIqVs1siMQ8RxmkUJ7FIJMhiOY1QYTuqBmP6-E-ks6OpCLzE1jIAFzHfWpsD-V8tdb_J_TiWYC3xUgmsF3MbC2l7P9mTdB6E_mpaTUh0KTAX37WeVRCKUvnHjZS6AA/p.jpeg?size=178x178&size_mode=1');

        INSERT INTO exercises (name, video_id)
        VALUES
         (
         'Barbell Overhead Press…ss',
         (select id from videos where name='Barbell Overhead Press…ss' LIMIT 1)
         ) 
        ON CONFLICT (name) 
        DO
         UPDATE
           SET video_id = (select id from videos where name='Barbell Overhead Press…ss' LIMIT 1);
        
INSERT INTO videos (name, male_video_uri, male_thumbnail_uri) VALUES ('Barbell Rows', 'https://www.dropbox.com/sh/eu0jqrwe3a3djra/AADXeHutj5Nzo4u9BalpVGFpa/Male/Barbell%20Exercises/Barbell%20Rows.mp4?raw=1', 'https://ucd32a2db2fef516d0449ad5f4f8.previews.dropboxusercontent.com/p/thumb/AAU7ZBH9b5M0pNO0goUiyOmhm_hmK8-RI_i1yKtrx0s5rqQoe5S-cDtIwu45CezKAFjauseJtMmouwEzHDKDyiuTyLTa0zsx3QdvuBgfc0uRRb46ZxQyKtNKoCqXyHjAoKewPoqqQtXoxNuPXk6pRcqjB04DCy-aWtP-9-64QtqsEBFAxS5ThXM9gPbPafD59J1Jm_mGma9LGJrPDu2cCcruVSaliQwy1tXCoZUygdS8sB_L7UWuY-DZOjpMl2bxwqgUAOvf-061IgzoRgO05h0f298dfduYidNFYoG9wQQ_8s95V9q7WBRyBYJxbbytqbAApxgrkja7NE8PKDji5zUPU8JgYDbR7DH1sJVTzhKhgbJIpMHIExBveSfGpyj9lhRBednNvlDKEsFI1_ct7_pmzgV8SOH_aQUhvc-Mx-wnjXgCQsxz05y1FYokfunnh9B3ATXDtLG4Ou2yr3nV3yeQmys_kYjQiyL0vI2PYjJr_6D1JnICAbdN_y_6XIBarAKNH6ocLJ2lrARYhqBWDVMeLTXk59JiJ1nlH3DF-g3naOuMUK7vJOPpH8v8J9wJdsacSVvUBzr7M-T0UcJLn3zdUcr3UA8kUNBg21R1Q8E3vLfFemsvcGACLEVsWupwCxY4RsYH5ZwKvHyA-FVhElTt6xR1r7zB_u-bR9SB6oTnV4kLENXgx6EJ0mx8kxojFfIx-B6tqEdGbheXNdz7RPdlqc5MAjd5G_1t0WGfT5TfM6eLbo866NkFx54dFMztL4Zkv5Vpq57v099dibnXo15eJIdM3hZYec9r6usyh4MkF8rD-64wPFXM_tJ45ZslHrwSi9L3IsUh3OLqQzkAbqnbUGFOk8CokWb4v0DNJiUbu1JDXUnUONJogzFF9t6mBGsaLBb1Vo1_g4BoUfNel_rGBiK5vIeHKJnN832KWbFz1JQD4MUZ9Fuy0Sf3t0TNmW29F2UQLDd4sJJuNyBOzj32MGqbMFAgDuz__bTMqD1VRXfUY_5AX5qJLx53jLOz1-YgT241kQSMyF6QY-zAlcIi/p.jpeg?size=178x178&size_mode=1');

        INSERT INTO exercises (name, video_id)
        VALUES
         (
         'Barbell Rows',
         (select id from videos where name='Barbell Rows' LIMIT 1)
         ) 
        ON CONFLICT (name) 
        DO
         UPDATE
           SET video_id = (select id from videos where name='Barbell Rows' LIMIT 1);
        
INSERT INTO videos (name, male_video_uri, male_thumbnail_uri) VALUES ('Barbell Shrug', 'https://www.dropbox.com/sh/eu0jqrwe3a3djra/AACbUlPkoKZWLHC7CGjmHczla/Male/Barbell%20Exercises/Barbell%20Shrug.mp4?raw=1', 'https://uc846771d775a73b476749ee4140.previews.dropboxusercontent.com/p/thumb/AAUShNZMHb0QHmzeJeGS-BIQosXrzszIbnOGalw0kyiH-l_wk9pv_beE3ZUEr9VoIygJ9kBdxZhWpnct9WuxNMsbKGMNBHMi8_pvd7eq1waAhEIEh2S0nl0Aim7_8RUpIGcw27O8ffXu7o-JYW_XP2s-w9DUqYvmIiwPQFzHynnncA4qr6qOXS3m4bUAl-BbMEJ5lK7l-4xfhmHxJWgM-GJv4t-tDZGq6ILd-sjOE5FmhQQp833ehh1TWo06mSHcetSK52iGWs4_QOpAyByppZbegL9E_LnVTPGPFjRn-u0lqalkotuIBK7cvErGmRyQED0woPmbygkVyo5qVfQEKbCxNtr0NF53RAl1jbqtqvUmN7WntynCN2KtXCK2Pb43OaOY9DGLm4hBCMt0CZwqgE7K_wp4jKp3MwqWqBgo6wMrXlX3p1RVk_DGnqwWJEWxFu7HBhqyvmvGX2i3nzDprf_-2QYDyh5DIWAlums6gBNqwC4aH4jle83dTZ34VpttjvbkxJ5DSvo0ze1yyQFZKVgp9Z51K-VIiTHkyzN_483-ajA2cIVKybRHtCmKz5gKA5PPwRXa8MLyTTWQwQ_veCo6SgMyuPPw1fPukqTH1hm_U5QaAbm8LoW_AfgBKF1IIG72zjpUkyahyvKSjhnwGIdXdkRlK6renJyQGpSDw-xMHb6yqMutuqNszNCspydNKosSLImBVNhx1FSKhuzDynn7noKekofiiDaXMXK5YFTKY0Rutb5-FNcGRMxTAwuRn3Oev4We5YywQQVjDsqBDGmBGnK0xSE9EzruyCPoiyhkiHMyLKnUap5lJemkVK-5Yk3R4J9IPU18p_O-yustkvgaCXi-oOP9F1VUjrLj7uqlJjt78x1h956vL2ijDlJPA7GUxfiC4MoOZyGaXFnhMcAyY_0hh7StFtHOm7pv-NKZZcSRrd4ELR-w5m162EG17n9KuAqCVdKk-HVzslyY8P5GcKaRWVqU5dVQwPe2lDlC6A/p.jpeg?size=178x178&size_mode=1');

        INSERT INTO exercises (name, video_id)
        VALUES
         (
         'Barbell Shrug',
         (select id from videos where name='Barbell Shrug' LIMIT 1)
         ) 
        ON CONFLICT (name) 
        DO
         UPDATE
           SET video_id = (select id from videos where name='Barbell Shrug' LIMIT 1);
        
INSERT INTO videos (name, male_video_uri, male_thumbnail_uri) VALUES ('Barbell Skull Crushers', 'https://www.dropbox.com/sh/eu0jqrwe3a3djra/AABENwsPk_GMUT8VXFlmP8EKa/Male/Barbell%20Exercises/Barbell%20Skull%20Crushers.mp4?raw=1', 'https://uc6a8910b053e12a8968c40ae51c.previews.dropboxusercontent.com/p/thumb/AAUFnwiaELfqMJJ2_QAch22pBWMc2tweGL1IjXW9gkQJnNrWcPFErZ5b1fsc3WCM2xHmz0wdeCVmDxmnfYtGhNXerw-ANX6LhEKchWQLyBtgv84i7OytjwAMfbFDqcOXcyvEvqKCSRyLbRiuO71V3Y2RjshM-skY6bov7oB7mwbsFXM_qaO5Igk2ueUqV33kN-r4mOpu5X6QepO5dRzysvANuPWNTR4MorPNsK3CNwNCO6qZhHvYL-ej75wWkc_vB8j-1VydWUavlWHbBAkQqSLgG-HU9GbiaRVuHmdd1PHQpuqdYjQo2UmGSTgpZADyZUyuyGxOtABK62WsncqL8W_umLeNIITe88m46PrQMVgyPwh3HxPgZUA3coLKNTVaNWwvD4kvkhajRFCOZlpbMAgkKJnO8k08AdbV_f5SULRPTw98K_JXmz-SUkqJ0kwbfIdIe33TYRrth_vgvHhndfq6P1xXyR_SqHQNLXP7MVNDGp075o06qVxkUuwvujR9AnW_lgDYT8WJI-0sKzkxJSW1F13YQvq3OE1U3S2wh0gt1eUiAc0c4aXxzzosNmypTujPbhmIukxxk02JPmSkKtjbTkjOs7g7iqRVd1y0I5u9fhDHCsenB854wvyUKhdixjxjWElqDt-wmtSzUjCGM7hagt9eHjV2lxHg2pCPAs4zBXkKw5RWG38boitm-CqtuhA8GSXjQ5xxrsAM7d_4MtJOddAA0AMf9E-8qSODukvQgj9jx346f7V0E0qs9V_Pv9ksHiWyWb8G7XwRu6lxl7BQGlMcexsCzQH2liBYSMsiBsyg2AdlxPz9bXJJIiRN3PNni9UQgx1iIZ0koEoCsAmxVWyswNTHPiQLD_NgvXECyT5j_14F7fEW7ocF9lvsgfwIygZNHZ9ydZUPeplMcI-RxQiprw_LG7OHlId0kDsP6tGRvoSA52-X_oXlYAhJ6AsmB9je3tMfPi7d-ALyAwsnJ8s50eBjA_bZ9oNBUJDv63NdtuvocbEc7SmNTjEDN9GUsrAoqHAxPOck_lAJgr1dQ9QckDZ9pk1KXbd9hn1Qs81kaTgVEgpw_jzriFXtPTlWaDvkIGi3lx_FcKzFZkyE1KfLv_NnfF0mZqwn-ClIzEPqb9mRrqHHv8QxyhhVlFCzplgiqtBmeWLhZrEJYBgN/p.jpeg?size=178x178&size_mode=1');

        INSERT INTO exercises (name, video_id)
        VALUES
         (
         'Barbell Skull Crushers',
         (select id from videos where name='Barbell Skull Crushers' LIMIT 1)
         ) 
        ON CONFLICT (name) 
        DO
         UPDATE
           SET video_id = (select id from videos where name='Barbell Skull Crushers' LIMIT 1);
        
INSERT INTO videos (name, male_video_uri, male_thumbnail_uri) VALUES ('Barbell Squats', 'https://www.dropbox.com/sh/eu0jqrwe3a3djra/AACyAhmPQeKFY7TQohG9etF5a/Male/Barbell%20Exercises/Barbell%20Squats.mp4?raw=1', 'https://uc28a64c2ffbaae6d21adff08773.previews.dropboxusercontent.com/p/thumb/AAVG2HMxaFMl_a2ZNtehfLJwewP9ZI1TjtOJOrT7TiEU3MJCllZ00Lybhndyi9hbZh1VWzSzIx-Rc7vDq9rghspmZuhoV9VMqigv8SP4K6yPnV_lmcw_bI5TBvfMFisZmkL0uYZryMN3S8Lk1UXn6W2JanbA4uep6lK7ghiF6shPo6VjgXV09765_hkW9tjHpkCx1EtfD_BSiI_DEP0oz4Bys5-36LDQk2-XaY7WbWJp69B4VmS4-4SXKz9uke6kkdSUv_Pz8Q-fCda2NSZZfrA7LBuQZW0YBagDmHjC1Ty1-R5t1EV4nKF0_Ee5YJChh-cgdt5hPmsbrAsZYEL50-vnlXIEO2KUaoZ6QWF4WEnkKHgDG0ZZTu5Nh3HsGjD8lCa7QsbnuvWVEEnjLtbU03jWU6vT3dzFOg0ZA87bKgZ8xS05KTbCS13tcVDmBKLQVpmzWUELMpSCte2h07I8s_ADNSwCW9gJrbgvXTGgY9EkzYDJC69i569k5PBkNUCO_GMqjF1Y3h86uy8KZhkhWQXdBQ88TBXg2ewIUfeIJIfqH5C17dFdO39QhK5o472VIkmgZil5DtXXO4-gfMXv6atgpjDoB7jv6t3TINI3tPjsCWDg0qCP2Lh0dcGxMdh45awRZDk9FNk_4h5u2WEwil1Eha6c80isSxJYR-HKVHPDOLcuLtT5nYGOdSM0lUjZH6laPedVZfA0s8lV0Ydv9NVtTTnKQhnQ0aJlmvue62OVmQqqFaUBdjMvB6xt3fCT_0BcacxWRy6tXDAvuTZdkrktGZCEQLehfTKuZqHu9IzxN2Wp-9zjiHRi_FNOTYoYVcQWrZ7l0nvjk9MfHMXt5eFpLAVL2hE9EEZuHtI-PgDezAq2CQyF9F3rRlmAywIzMPETn1SNSxxMcokWoW0Ke6pxp1CeyZ7eMaEoPKQdpnZZbopj_O9vNGa6DiwqKMVzWh8-o77oI0h_QXYdNSbQzF5rL637gRl5QsOal8XkMqGLpl1eroaul6sNv3a39KQCqbf1quKmn0YEsjT-u27TNsKsEfHtNVkfTbE414PyZ2Dv8UsqAGRrvCnmCovq9OH4KbOLGHmNdvzCP1vSdIFLxTq1/p.jpeg?size=178x178&size_mode=1');

        INSERT INTO exercises (name, video_id)
        VALUES
         (
         'Barbell Squats',
         (select id from videos where name='Barbell Squats' LIMIT 1)
         ) 
        ON CONFLICT (name) 
        DO
         UPDATE
           SET video_id = (select id from videos where name='Barbell Squats' LIMIT 1);
        
INSERT INTO videos (name, male_video_uri, male_thumbnail_uri) VALUES ('Barbell upright rows', 'https://www.dropbox.com/sh/eu0jqrwe3a3djra/AAAN8dOxrlB4j5cyt3KqXU-Ta/Male/Barbell%20Exercises/Barbell%20upright%20rows.mp4?raw=1', 'https://uc475385ab7e8a78cc63024d4ecd.previews.dropboxusercontent.com/p/thumb/AAVsZF-STaEPWk2TsRgqFEV5ssxnGIz0pZHpMijT9B9xff4TiVO48wBJrReySvNIYmgutTeM7Tpwc2-6QMsbXPwdcAFgXckYfOjyO5yTbaEylWBx2A3jzbTsi4A60A3sbS8LombcoWiL4J6dAHv9w-984R4179vOLmW_30RqGAv8AGWF6bE6Vagz-rDb-ufbfeeVYfO_VAzV18LbpvAXZNTBR00gJZROih43Ugb5DBg5sf2blY80WnyP55Ei1QPdb9eHmjS1AlRvvSiKpCeRXXDX7OEjHQ7JV-XnC6wTO77uvcXj7m9-SGnVRlCOCIwaEHYv4inkR9CCvmoW0rBLos3cjnLig9z2D71tYFTeCgB7jMCmNDgQxF9Np8r3cHFcGxRyN6L1FGJVry64tEtwoMdH2eCsUYNZHEGkO3jOB46NCeIXbhLM_qqxOagh2wOlriOGkD5EoXzvBPHWMaeD-0aYRWXPcPvCnW_zVTxaKVL-xstLeQH_kqfDtMTMfyLIM0zsVhhSsOCDJ-hYKO7m1NbNXAsQ7RvxZmDHoBhEv8cM243dQtz2MgUA8_dygymlGiBG54Ej3i0DCO5lb1hVzRwyW5gnhGbA01jzGn5WBM4kcsjsUKUbwPJ1q4GMba7AS0L8StFjveWKduBT7Ue-xNjJ98uwpbZAXX4XTPM07ZD0OoA1AnZNTZ6IMB5RGQ7g-2vm15ABlHLg7RIndHY_FEIfmJlrWeEtYqBNDVsO1XhSFgSNkzuUK0OGr88CaLJCEcul3iaXVEYRBXFfr7HrmaViaEySGpwKO-aFYB-R8kGeIAu7Kha0mnZ8kkls-rMPtv1dY2tJE74kgf-3Kiup4mYUNZi4M84-YLY94ux5QavafU3uCjI49xXEgd-xs0oeeN6ITOwBbOjIO3SxAKP-QFkW1x06Jy8EmZTlOJ8dTtlZQw/p.jpeg?size=178x178&size_mode=1');

        INSERT INTO exercises (name, video_id)
        VALUES
         (
         'Barbell upright rows',
         (select id from videos where name='Barbell upright rows' LIMIT 1)
         ) 
        ON CONFLICT (name) 
        DO
         UPDATE
           SET video_id = (select id from videos where name='Barbell upright rows' LIMIT 1);
        
INSERT INTO videos (name, male_video_uri, male_thumbnail_uri) VALUES ('Bench Press', 'https://www.dropbox.com/sh/eu0jqrwe3a3djra/AADvv_hN9zju95zVZ1IgZg5Ea/Male/Barbell%20Exercises/Bench%20Press.mp4?raw=1', 'https://uc63e4c85db9a8f82e3cb4859e22.previews.dropboxusercontent.com/p/thumb/AAUXKRwNe2oteyqKaJz-Xa4xw_FSiTDysq5ce6LwTFJ-unbaieAiKeW4hI30UlOqkCcwiVyyT9qjOYcaYBkeYpkFR7Di0yNm0-V9_WtrxD1rsBTZd-gl5UN3Nc2Zb7guvIyWIHR_5kmqO5WxF-kIRz7j60J96T135J6OmNRHym5G5K97Hfc0aiarIzJnMm1TiL1R5hfhHJ7dAtewD9r9KD-xq3vx8dFbi2JCmtfmxFHphANgYlRArgnL5lAXkNra-J-AoRSrwejyYzJDRFuScPM0jaxsNTqA2Qo2uIsqlAdpB1y0sMbKCo_XT7OIIxAmZXo8ynGeQtNMV-cnEO7gdRGXl_Dnb6HuV-qP9rX8YSIKK9meUC2h_RFk1AF4VvXwGB1vPkQpPgYC9K3gcgSFhq93XAQvh3QgqEtZxmA0tRNctwU3i2qe97hM0sLler6YiRdqrVrJM5hwQSytlG6811DfjmwwitueLGn6k98uUQ8JNI22pElu5imZwsuBaXeG5Ms0W8hN7npSd9xsIDa5hCOlM6wgiOdsDISoJPUBM4yYPmiKuVGLJ3xrn2DP1P0LuM7ZRmnwqsexpLpUtyz8uNCJFk8m0NynGuogscTvAGhe8UBwCE-ichMcLZ_GaZPvUfnh__iNAcoLgeAcfoOca_fi9y8u_ay4fFyN9uId-amqIf9WzUC0Z_WK83cfKoNm1BrOcukJJo65WPddtQOStJzj7hf2Wa4bZ0qoJVNbT06zCd_N36lg3xYMEf0YqWu9DOjCen90buFfL2giVcE8KFnHyNMhFnBM_2YYdfHBaT6Lld8la8tIeEdJdD7t_mVMRtCJbToJ7-EsfhiJYMAGWrb8l1ClJ6Et0AqgXIf27Ugrh-jaydq241IbJ8s1CBM4hOzM-0WPpMJ81NaGquOdxQqYEjCJ_I_WADLZbnn0yIgf_ElgKONrwF7QSgUTZjsrRYl4SnsdvgYclI0fYnC1MSQiR9pjbX64-iI8T7G3Ns1m-eDl0dCC44Z5ToU0Wa9IXqJAkmCscREsZqcNDT-bjiJn6YC9oiHc13ME_6hBp13CD0PQcw2anBFrBVefXxoiQ3XhMWTteMt0zvvvKi8JLaXZVb2ElSaeYHs4H1iNpHArf8Wthh9iBcABFY7eka8qSbE1IuQenpFsuxPgE88AwW82/p.jpeg?size=178x178&size_mode=1');

        INSERT INTO exercises (name, video_id)
        VALUES
         (
         'Bench Press',
         (select id from videos where name='Bench Press' LIMIT 1)
         ) 
        ON CONFLICT (name) 
        DO
         UPDATE
           SET video_id = (select id from videos where name='Bench Press' LIMIT 1);
        
INSERT INTO videos (name, male_video_uri, male_thumbnail_uri) VALUES ('Box Squats', 'https://www.dropbox.com/sh/eu0jqrwe3a3djra/AAArdn73UemD8m90EISczRDDa/Male/Barbell%20Exercises/Box%20Squats.mp4?raw=1', 'https://ucf1eeae35b296a4a1576663f3b1.previews.dropboxusercontent.com/p/thumb/AAX2sZcVkyPdcLXrzyBDIv19BY_V2cYE1Dis6ZRY7VuZwUhJfnD4ybmQBSan497evB_tXpvj806Qx_zqNiWo7AxbxKxYWKtBlcAW6_7y_2klIOvr9azCnMyZEos0nc197QFPkII7UT5Ipfr7drBTOCynmmgzrTCvHUij-6VdVz-8LhfWGlOL_2A2Td9G9dK2FmNEr7txRTK_Y9TPMyNZZDHautO-cPi6Fikm3Pbmk9rV21vTceJU6xtOoARZtWRamQ09NS1t-iTIriQZqe--syF7FxuqTGhVaediqps8JVYGPDzQHLY_Z3IZ3LFl40IgTURG8q1qfD9IQa3EWqghzitrO3VinWdnZcJ2YLLkeeUoWo4xaqiXaEurKIJneBWwB6QUcbwHDPlHweyMhXkYIUV-SQovjY_TXh7hANrfIoDbVHZX38TwemI6Xs-jOsQmhw57tX2ZhLFKsEU0cgiMi-b0GUDg-SuvGL-Sm2Ye26aSpdDtqdn1gt-iIcjRt79vVl3Dr7b_mMBccIfpyncEX-D4aBRt_7CLEIuBal_GYnjl0iCXMITfd8fugPj1VwRQ5RwFUDPUFNUok_L89ok0IQMwRXXOl8Nlie9fmpSdPCw_cNx_IwGl_7Sdjv8mvOjq9naDwWoG7bzYHxp26C2bcuNuXOQ6BrRBVQaTHJpacRXumGfgGz6tu5PC7PNcuqTze25LnstQHfXBZxOxCcCCFpK4QV6nOf_cue8tIioLpwF_m9ReMclZv2ssECGjr6g_z6Bh8nw0LQvUIrzaJMBJmNzeHNmG4T5Eyfl9qd74xJ3M5oD8jh0WGoyUOdVDVwSIYsLRQC0KT54Q7Z1JDZ4VRoFv1bGKrh84FOCe458B_7wSNZxSuieWFXg9O5sa7HfAKNc4YvRhj8dTJXEKTl3dBdnkFGRF6xN14sFmDF82_KaJctiLPcr1sHa6uri5QSBiwoZaP1hqD_w26AK9T2i4aTWKI4GN65CfXelxc5R5qaaOy3FXOvRKj312EjY2ErUQ09uor0871GkKDQCo-a8vbDbjU1gU13EslZuNBAaLfHc4-EXZAnB3_T28Gvyltf6AZnScfZSIzXv-ztDf0uU_SuXgaSpfqSG6OiFgYjhFts-LLhjQ4EHfs46FgsxQ_0S1V-rhCB1eEdcfdqhiupBJgoeHasntZiyg0RZfeCTnAtfZS80yE7DV8NLP3WwF2PNWQwHi3l0CNw5K2u-WGymapn4B/p.jpeg?size=178x178&size_mode=1');

        INSERT INTO exercises (name, video_id)
        VALUES
         (
         'Box Squats',
         (select id from videos where name='Box Squats' LIMIT 1)
         ) 
        ON CONFLICT (name) 
        DO
         UPDATE
           SET video_id = (select id from videos where name='Box Squats' LIMIT 1);
        
INSERT INTO videos (name, male_video_uri, male_thumbnail_uri) VALUES ('Good Mornings', 'https://www.dropbox.com/sh/eu0jqrwe3a3djra/AAAnVvzG84kMGas5QfiTtL4oa/Male/Barbell%20Exercises/Good%20Mornings.mp4?raw=1', 'https://uc0290dfe8f7a212fb7ec4e098b9.previews.dropboxusercontent.com/p/thumb/AAVZi_mdmzuZrR0a9pmMr6vMnkuNfKIfSY6jt2kykvENHuFtPvqUFsV236DWusnxRVwiGQA2qCMRqXdSyDleZm26mMTbcoSL8MYLKS_VV7iDpWZL5v7dorUWboTztmiJ4pn9rf0331F6LIHTBmq5khZ6vDPs0qA3UGZyq9Emn70lfGnIUIO0ETUnbuwehTT7EgcQoJrFMvDGjt3--eXY4CgcwOgO7ApWRaAi77QUffW4_vTH62P3XHUb-3DFRq_QsRvjoCgP8fXN3gNrHL-5M_xVIqa4TD2F8G0Ud6_HbzQstQZNnZchslxFjisTJk5sNuhptrb--h5oTpn151vKqHDcs_GzI-2RQhf9Hr5RhNbhMeG_p1gfrjP0UIAJozGckziVKaG3VRRtCPoVvrSXqLViizlAFi7LMTqMLgWxAKj_280IZ2AOqJmxbqkUeW6Q8oyTPx331z7yYHSz8oW_8Os2A1v-0VT9mFIzBbbKQ5blBVNpDKh6mfKG_RVGZ5lHbJL0Xzg3Jwsi0y6aZHKRleNSJ8BIBunFGY8xPNkx-0QrO-jbahHAkbvJYp--c_gRyGigoAeApCMjq2bF_-q-psX3F-Px5mxCKUJ4Tb6dua2IQY56DDTeTDb9p0Lql75ZbQLPPscmnDw4Gt3FftF1QhCndPLyGKu4qr6iz6LH4GoHkLOUHcula_3U5GLGWD1Lglay1185iQ7PJS-cFk-AWsE_ZtYsNmOnTYDrOVHeDKmtAoyoMSzZ47bZ0yKCfYQaEuQqYwXd77dPKPyjJ6o0kX1xdRDh8gvkLdhC7I2nN-XJDlMg1fGOZF3uaog0wCYwIAmy_xz8JwSGthh0Cv04BFtedv63BGepDzLa-VExpfxY3Xbwwo5eeYXKo7N2KCp4yIp59G6bFDuZ8S5_KbPv24bj2shFfnh6OgbcDfR4BjOhI45XIb8_EQH4GKTZLvWIA613Pc_ysnH3SJYQTAGCyh9p6BEb4xfkJjaDdGA48xhkqFgts1EQuoJdV6NBc3DUKCNXvP59bJsnS0aE7_Mx6XQyb7_CJuxvB_pZGVHFJ_bUok0gqqOUA8ubq8CGgMpOg86mjc3ABlSR3UfWC1H49w5n_PGZKll5AvMEc8BcWQzxXBMducDFpb95ThOETMo4vxo9cq3g0bYNov-gK-UgE2nu/p.jpeg?size=178x178&size_mode=1');

        INSERT INTO exercises (name, video_id)
        VALUES
         (
         'Good Mornings',
         (select id from videos where name='Good Mornings' LIMIT 1)
         ) 
        ON CONFLICT (name) 
        DO
         UPDATE
           SET video_id = (select id from videos where name='Good Mornings' LIMIT 1);
        
INSERT INTO videos (name, male_video_uri, male_thumbnail_uri) VALUES ('Incline Barbell Chest Press', 'https://www.dropbox.com/sh/eu0jqrwe3a3djra/AADtWigwBM8OVIsjGhZB77oMa/Male/Barbell%20Exercises/Incline%20Barbell%20Chest%20Press.mp4?raw=1', 'https://uc9ade083f68059ef876a32ac28d.previews.dropboxusercontent.com/p/thumb/AAVy-TTARZLUn34HpeIEp9GtjiToC2RIvW6XjwpBejyb8pDPUbvCLe4INKSqHqcUsDtztBtMOqRRODiu6gw_A1IvrpT4la_uRp_XB3FjXX5SSEF8xWjE5UJIB-FCvh2in-tg5PipbnfNt6RPOv2aNCmnd95ZFYvEJgt3fwHzwFf7ddX6py0Gao2iVa6fBkJgUSb2MP0nkyJ5-scg4s_rqImYIlMMqj9hDR_XX-MDk_W09cuCTPwlOP6gev8UjxRi4sQNCYUdMnHON9SwnP2WrJKh1Wji5BPnNwJkvXfe-tpPs_4RSd7HutEK0GIPJdKYHb8nrXBOtfBJ7pW8o0OqqoIP4gHFIZqMohQckMhLzbfKETSS14gLRUn7Ik-FM2Nn1XXK0RPg3VwRhGAbzDgku3mwhJGiaVpPColOnXiO3JlVtBL8JFg__RzTzsFLs4pV_yHzjvLOgAvj-7t4sAYVE_2AWkG5tdqGErEe8poLIV7Ag-3n6mKOXkL9ZnN9A-jcgroPgIheA4585WvZfrkgBEKNBzKEIaP4AWnFdgyESOxAaP5WagB5WmbdXTRhUFl-DOE7bae9pBkX-YYU5r90pk552UEQ4gRoFSLUjCtIHdas_tjOdFFAXLMdCTDuJY--LnobrM4xeAzzZjEV2XYfLTutS4m6dU9xpULGxTC_aERdQezmcqKlxO3uPMzMfpQ2xdvWM3a2giaG-8ZJnYxWAqdeteCQsEwC-RVJgHpGv6motNhSC7DmI_MePIp-PWXowHlVWl00AqgU5Ios7JM7oURHUAtRa7vpWIrIKjo84sCC85qvZWKqj8VhtdUoFsvHqXeVOokucJqBAHlwy9ewknBdorir5bek91b4knIUalBUB4QL1ZZbQM1HIknx_6_ggeEEs58koE0uAudof4-UWLHx-mrzkbdqfgODSvO6dwNnlCmAKsaNW_oQUb22E4oPZxhpQu6SrTnYMh7qkEbN-NcGE8Ku9xpQkt3xCcmH61nRENcOXsadq0N1C9r7AADumlA0oXIgIzKLwosRZ7R_5kWNw7Dh7JQnjokPcj_1o_Vn39eyRwaTe_XQqq502XIp4wjBoQlWWIliEhaggnIceW0L/p.jpeg?size=178x178&size_mode=1');

        INSERT INTO exercises (name, video_id)
        VALUES
         (
         'Incline Barbell Chest Press',
         (select id from videos where name='Incline Barbell Chest Press' LIMIT 1)
         ) 
        ON CONFLICT (name) 
        DO
         UPDATE
           SET video_id = (select id from videos where name='Incline Barbell Chest Press' LIMIT 1);
        
INSERT INTO videos (name, male_video_uri, male_thumbnail_uri) VALUES ('Bench Dips', 'https://www.dropbox.com/sh/eu0jqrwe3a3djra/AAAK3cEI0lOjlngumSrhJBbua/Male/Bodyweight%20Exercises/Bench%20Dips.mp4?raw=1', 'https://uc9f6cc134f283b9856d921ca977.previews.dropboxusercontent.com/p/thumb/AAX-hQED1wRPmyMo6Ddc1E6iwMHWsGJtnb-BLHZFjsIlNuqAvNpFLFB5VsqfGCTySaf_5igakBJNFxVdR8WjM7CPxnfeI09DR5fAmMmGSPD4d3t4G45Ce_EFZFLJ9yRYxs7HDTXUSy_iJi7mJhdps3769LGMMQ2Z8uzXtwNNd0-N8ejXnXBcRDdfNGFdDpzfVY0Z86JZ6aMLBTiT0IDB9sIKLwKJ9Exscbg9sMBSUTQaUCDk99bmb_H36VTIl70v_Ex8KRv0ws4p44OJYZjgsfsYUzerVh-H8RXPPRzJzU1V3vLGycAOxhqCciaSG0sna1UEVW3rQEEWxc43WFBoqYRfkbDQWrFygDhz0IuWaIJYX-YA9bbKkb5GSSB7dYWoAOovvOUTvxQMNONug9H3OYvk_lZbfALgRsQt88PsPDQgaUDUreV-is50YrNt1Y3L16eujkFfHEK-hsHdzmbGMb228uXtNprZ95Pd2VbBFf6eW4Pvu99LlCz0aydfgk_TC3MWA5mJ8UIiobXxNStM2wdtTlaDF30VxGJlyYl-VI_jqmlrCTco_TKE8CcOt_LFR5YQsLMyGS1iXNoFASoIE4BHA612vpbV3CNSUD3HM-Uqah9aplr01BrXSVufF2QQoCIBfdgxCTQMEJm25CeetXhJdpqvOoeu5xS7OlciiWmlJ4ShAmknY4qjeHLwd2PTjNSwjRO078OzYaZ-MbJ2z6Ey6sEMgYaJiqnw8425ecFunozmI7gb4MX12aEytspDg03I9dY0ToXVyoiN70NwScrga6WU3JfhsV8-FxZZnBokjwS_Zd2D19--_ddlyhxiyjY3ZjNmQB5KXHUWFSnRbUO11glc2KyRzCjO3OEd8W7ZNZ_OxvOAM49XKTirIa_UKa3RWHjlIrr7Z_TNRAJ78hwfelabERCPElqlvp8S3Q381UnEmG0YOGI4bEDOSEIuQd06ndJCJVRpYw25v4nCE_AKUDdJsqvdy4YSocsj9OvzfZ_uS9ehvrVAIyZiYCR1ZwypC219sQupXVsmu5PS_jfE77lSmFgPJKKqyBbFVT6jvgtmquajBiOvpH4r3JXXi1lyrbwAbBX5lHuE_hb0BYLSL7TVlg0TksHnHF2zY9P6hxVdPGjGL2K8Ye_yFt-W86wvdGslV8iwM1AHhMGSubPF/p.jpeg?size=178x178&size_mode=1');

        INSERT INTO exercises (name, video_id)
        VALUES
         (
         'Bench Dips',
         (select id from videos where name='Bench Dips' LIMIT 1)
         ) 
        ON CONFLICT (name) 
        DO
         UPDATE
           SET video_id = (select id from videos where name='Bench Dips' LIMIT 1);
        
INSERT INTO videos (name, male_video_uri, male_thumbnail_uri) VALUES ('Bodyweight Lunges', 'https://www.dropbox.com/sh/eu0jqrwe3a3djra/AACv8i3n_pxX3608vfr3ou-2a/Male/Bodyweight%20Exercises/Bodyweight%20Lunges.mp4?raw=1', 'https://ucf03476ea9e3db0375926020390.previews.dropboxusercontent.com/p/thumb/AAUkEy0lfAn6Mfihm_y3tZKw4ck7WgbAbd07ES39iIWUWa65TqsvY0ojFE_qnLTdyxKcJ88TK-rclS4bsZsUMyrQRl4xFHbXUkoPNhhOUEundBpjFSPoIZeLfT_DFiTVjJuPXFQaTAm9YRBwFdmJSvjR8_b7vXkjpaBvS93lLiPvAw8LzLmXCB6Lv0KpA6-up05DoWD7mQJcN_wFAv8R3MXE2OGg3BMm6WVJoHuFTGHmiNm_FCXCLhZdyRIJcp3GVBIaOfzlD7mV2Zd6qnICBo7tx4kbiJjJCBcaYxwdxPCitAOSwOykaTm8fLqIlH_VDzYrBrJ8A0mn3h3QKsVZCIhcD8oHBc3t0aKEKbsUBUeN9UmdsTuEV8Bj-sbr6fGjpjJhq0AQBMUwhvk8Qw4wlZ7Pp5cfRdF4WWCttEZHjhTsgnmWqDz8aVGpWY6Nl-ahmYybHaoqJBXDm4n1eUC6K-4VVlxwijWAVzjAOvrm94NlLVcmAbCb3_Ra3850vIcpUaqgJVjsJR5pe-ePpF9vpl1HX4iVXl_rfyVqbk8mfwKH5ocK8miicXCzJn34bzEwuh4p7-rCg7P9FY6RpRakUyGSLRC2hntWaL7dv-Bi5WA4i-TK9lNAeF0xuHvMZ2lL2w4E7F-p9gTDFQI-kABKCtBvbiOO6fBRVidD8TcYL5uC9LmBT6XpuuCeN1B0imYUaL1uwmbyX6i9hj4Al2r7bi9S5YyqUjXs5FKzrDZM78fRPqhCGa4_0RZXKGuVa96Hra2Lp5NWvvtYdtONCy0zWGqyoIFvqBgHu6QpePtz6_9iBc6bUXNPHPRnIuGMm-T_CC9rGuxaU4M58pzDPj9Z6uIzmTcyPee8JkdKzphui5Fhb8OqojSjmjBq3SSSako7ixUNVje7oMi5OxIbu6l0-bT2tVaS7QOlOGE5_jzR3bpMooUOEIE4qDmtiMTecWVpn1za1anmaclOkyulbUv_MWWvKDpvTtbqrgZ0zjNzVpQjKRu_NN61y6VsI_vDpX3KV_hVbS5kglCHO-X5Yn-eXVn1_Z0iBZeyoV_2r4cYBANQzsqoVhlMJtiuIWjX-1T87PPnPsXBroj9yRuM7Ytb7VP94OV0h2MZcAb7xJUiFBuNc_3Zl5tJ3Rcu6poo-cuppfM-VDwcbxVDsNZutu4kQXTg/p.jpeg?size=178x178&size_mode=1');

        INSERT INTO exercises (name, video_id)
        VALUES
         (
         'Bodyweight Lunges',
         (select id from videos where name='Bodyweight Lunges' LIMIT 1)
         ) 
        ON CONFLICT (name) 
        DO
         UPDATE
           SET video_id = (select id from videos where name='Bodyweight Lunges' LIMIT 1);
        
INSERT INTO videos (name, male_video_uri, male_thumbnail_uri) VALUES ('Chin Ups', 'https://www.dropbox.com/sh/eu0jqrwe3a3djra/AABsjCgR95BoVjM4-pYlekVia/Male/Bodyweight%20Exercises/Chin%20Ups.mp4?raw=1', 'https://uc03400622e3bb30697d537d4a67.previews.dropboxusercontent.com/p/thumb/AAU06XFcOgdypBYkl0dhAfJIvGKlqGFyxUsinOrTag4s4mc2KBBJ3Fsz9u731Hj7xGYQFR2ZAWusgpAQY9Cei7Qxo8EtCgr0OxNf4pfZtDWhf9u5H1uXJF4nk_1lxEKjQqiYpmxtznwsYOpZ0ZiR59B_wZVwpEiRaqbKE2DpsF530dRdE9IfH18Qbk71L27uybEgdayaLmfOZ7qh7HDzQH_zijy2gAx4seiFEv2eOJAjrfGImGuIwhPn8xpCdjG-HCfW9PDPrOPa4RTOHblDLWAgTWPAB72lzY0tUyhWk2klJN-DJMFg9Y1s_x5LzC89FGRXxnAdd7k0Zr2CGr0PTp3GsWzDEyyOQTkSbiOIRSLru4O78lkf-Am_Hrw1xav7NNbaq1CQQuv_c2jcLe6X97ygTKAr6oIr6aayDFrk6WXkS-rMFLlEliLExT0rNREVaYIhqh453ngPCCTmzV0bgHaRmLFdYzoGsGAeW9c4FKQ-HWFKFlnCUJ-NjNW0LVbpRHDM40D0ha1JIt3V_eMg3Qzjnff-f7zgj1WWCVbFDbqBnfywuiFN67oH9u_Wnyip_zohYOAneiL4h0fgxQwKvFulKmLaMLi-Yek92wvVe2ydxmz9Y6Wc60q9L9tOdzfENWL4h7Rep_Wp2Q83mta8u2yumkwCHp35kTcpyte6O_L9bZNEstW6yOuyvWLonhu47Ndjlzl_qbQHx_aSYabIM-dnkzS6Kgwp2wH1-6f0zN14AqBhy6XTpkdeH_KRuQ7PtgAsBo5ZJqm_XDBj-VBa5x-jCetofjFAVFJ3paP5wDQgow/p.jpeg?size=178x178&size_mode=1');

        INSERT INTO exercises (name, video_id)
        VALUES
         (
         'Chin Ups',
         (select id from videos where name='Chin Ups' LIMIT 1)
         ) 
        ON CONFLICT (name) 
        DO
         UPDATE
           SET video_id = (select id from videos where name='Chin Ups' LIMIT 1);
        
INSERT INTO videos (name, male_video_uri, male_thumbnail_uri) VALUES ('Decline Sit-Ups', 'https://www.dropbox.com/sh/eu0jqrwe3a3djra/AACaVGojYUx393QIEqMecuQaa/Male/Bodyweight%20Exercises/Decline%20Sit-Ups.mp4?raw=1', 'https://uc1f5b02b0b24777daf1181a379a.previews.dropboxusercontent.com/p/thumb/AAWydBO1DYHgDu_b2hdCRK4B2msu3NzmuqEKKV4H0OBTFH9uNPa2LYei9-M55IXXh9enC6Dh_QH5jLUwsiJOM9BAqPKRwQXvKlJGZ7pbDWOakG0hwo_PZFDoH0OTx5IYvJfve7g4Vb4LjEyHSai3hCzetHrHRqs1OPqWzY7gGXrcCop72dG84_sr-GwkGicF_gJo1qLUQgd6PotZEku5Eskmx90eU3E_-59KO-4Xo18Elu86DXeu4OHigmBbEM_myim3Aszguth5b0Mfcv4EluX6mqfEI5WvVkA5Rm83gc6uZ14P2MHL5ybOKidhtSryv757dZ2BEN2v8J743ngFBFHreFP-NcXwYvpC1odtlc0tjEWaJuEIAOoVrN1sPqfQDhFWIbuSJhkkWgtpq-n0wIsj5Amy-Tgisdbfi0FHfPQQgcJNWZY04Ncp-BPK2oXr6Yvnec_kzZoUrz18PrqKraDCmAQj3I3zdEn2rj9HhTA025IBv1uajtL0gfcx5OVXH2jNjIOClrnJ2rHRmLZF7COu4As1-QFg0tzKBuFeYGl1r8dsB2GL4Z-j57H7oQKuIO9Xl2pzXl4ggbfUsvctxCgLdb6z0s1jQmRQWAcxd1LR-ZxbA4QhfXpj1WbizfzuA4zrkSmpt4y1MZsN_uZ8ypa6NlylZo2XnSWs7BnWU_b-et6_fzU96GnlqTAaflQTk8gpc4sp0Wjp6vgk30zYmnMYOstDo_kG_MWfVJOGvatp8NhkYSkv1B5ilQpiwQB-_nNd6FaV2TBfHnnQ0bIYJ6rHKwrBvPUfIg2hiFjvgb5AeQ5m_th3GLRC06JBFdKC76Ujptx-QPN0hhsI3Uwlt4FpDKsMF40idihga55h5v4YfKmltMNXavQqVXi9O-_4MMJTQpaUdXCZUdnWL905HXeKcnJ9AmvbwQa2ckZLmzuX80GjQOabuVvO9W6HFaToHIAOkaVzDkQDin44Es2yUhd-mXMmtLPhgSZFP_vQCNAZHYBaeUF-HO6skdL2lX-TFfKFUto_fyycJBMpQSDoNWOuUeCkDo9lopP5IMbiXyhSm46SaffYRbBfZML6-HE7L6CjfFkMsuiYVc7cC5RE5TbJ/p.jpeg?size=178x178&size_mode=1');

        INSERT INTO exercises (name, video_id)
        VALUES
         (
         'Decline Sit-Ups',
         (select id from videos where name='Decline Sit-Ups' LIMIT 1)
         ) 
        ON CONFLICT (name) 
        DO
         UPDATE
           SET video_id = (select id from videos where name='Decline Sit-Ups' LIMIT 1);
        
INSERT INTO videos (name, male_video_uri, male_thumbnail_uri) VALUES ('Dips', 'https://www.dropbox.com/sh/eu0jqrwe3a3djra/AAAXUh_JhPMgkt_Rsy6fNIz2a/Male/Bodyweight%20Exercises/Dips.mp4?raw=1', 'https://uc0f7ba82ad5982c4c93910b2ac5.previews.dropboxusercontent.com/p/thumb/AAUyUalvCjtTe626zKzkbGTYYVtY3YAbZaOksadH3S1Kwg1n4YGgp6NSgD04ZuCP7YgQVj-xnZz8LsAnp2tYVBybEm_Yy1a4OHyA04dXlwkisqLKaoWo5EvmCtO-975OZBdNrXpos8RR0IjBsHTqHsdM5Os9H9ujx3TKLzEpWf25b4AxOPcGy9wntEmD7k3BH5le3xf9GF6joJO3IlywAWodpHGcRe0HOOK1Y6hEiDx6mstQ7wPO9XOObzLqSzAAgp1UGZKE9F3gywLQizjmJYT8RloPBj-ljMZ-b0-gvoxADWyjP3CAenkNvRL7FB6KioFdNYQjLEdYw8gH7NkNFTDi53ICnWtS4oMitq7ggWwgPh69rZwDDgI62-mMoYsRfI3Q84tPtU34ZHqoIylxqUgylbbNCKhhDoB5HtnH4Vk0bu5xKFWwfNB7tUZt1FkWVrn7ZI6gpezjZ-dsjJG6rtGZO1EYEf0qI-84hpeT6LSuddflQZoxJ8Q9rDjfDMblghkabrlEGGd3UY9v2J1mrbiBnDYpq2L1so5n8tur8bZBsubOKc5o2sc64XgEy8VIq45UpptaZI5XtTZY_QVg9oGdAxcOXR0ZHstAUmGZeC1L2IxEaD2LQLT61CXF_2WCNh3LeE1Qy72L8JzN0qHoN2RFY7ECau5M2yWZWYZDwuHPKt9escG6n2aQSmQHnYjVlMSW8uDSCgaW5MA0R-BLISeNhpGVZxOQ4RpgQln09Em9JcPMwazzrWpZHeV7dXQWCVtyzxNny2N82LiD0fO2vRWDe0qq6b1fxxTLlIx3G9sQwKiB7qgorpEAdvjSce0Prg6VHOXrHO_cyoNVGRWASjm157zEnxZwwt_5fLykEyo46Q/p.jpeg?size=178x178&size_mode=1');

        INSERT INTO exercises (name, video_id)
        VALUES
         (
         'Dips',
         (select id from videos where name='Dips' LIMIT 1)
         ) 
        ON CONFLICT (name) 
        DO
         UPDATE
           SET video_id = (select id from videos where name='Dips' LIMIT 1);
        
INSERT INTO videos (name, male_video_uri, male_thumbnail_uri) VALUES ('Hanging Leg Raises', 'https://www.dropbox.com/sh/eu0jqrwe3a3djra/AACyh9J5Cubofm7bbU_pLTQFa/Male/Bodyweight%20Exercises/Hanging%20Leg%20Raises.mp4?raw=1', 'https://uc446f9c29b051e1a1c8b22a1825.previews.dropboxusercontent.com/p/thumb/AAW4CF1zoR1DT3nQd90dhRfKBtJHaZ7OeRYKeUE41YbcZcg53WIJbsc0v4N9pMTzsjw2udq-7UWrRN8Z3XGkIhVv91zrZ__SC83O-uTNvSWCFSR0aDFGB1iHehRHkQx9XMDtseJTobNamESv5WFde3DWh1ObvrThfKrcpEMoemL9efOdcpZDDSPclQaJnJ6FH67DbHkbPBcIAQeA0HYVabzYxDeJxkZjrpnZ_LzrMhw0c0TFhAEMs_hINIuAXjtXrdLmEElMtWOqwoUy4MK0-70n_uconTs5at_7mYmXzLvy3KJKh3InKX13G6RdfSfkiXc4C6K_A_4b7kU3K9dHGLvPxoVa_VrcguB-c47o9pe-q3FiuotpXeabBRjlcTMqaNeDu6Yp15hjQC_U2nIGZSWaQjiriGMgE3Susg7_J0pYNusS-SbH2vTbWAHcjqSwAZs3am_uVVmJeK47gXPjeea5J-_CamfXapS6OI3yJRm772ruo3cMYbPQXz3QpouyWWXzU6SJtJjU1coA2nH-COCWMFE1qWHj0yWNRueJV0hjAKzQRsQ-wHL8vFsKQREYKYI27M3X-qHZfM62S4i8d2EK0IOLll7zCu6qYHT114DKF7nMX_9RljfTX2NVwoV3NdXANk5E5lSErp7J2WGxn_w2haNz9JWYrk7-seFV-7iySFRF6eQw3vHwEaL7IRADF6PZN61b96Hw0h9oFwMsKASooQyftDXhtiv9RCKM-rKzSTw1y6U-j6Pu2L-9LwFQsFKYLLKN7_2gr1yf2T3IOTMrTN5JVddS_u4trwpO0AkjU0RP46onZovrZgeGrG_RvvC0m85TW-M4Xp9MTOLmuk2qTaA7pDzfDjDXEJZTxAxsZhooUEfnzipbAP5veEAyYo0njJoyTGEoVrTOZQgE0REJZaH0u_7ZqS_FWfpQJnxmCVmFOuggitobNqNGPAdI5hyCTSiQIwcdb7Uz2JqdGV2aPJKWUGUUpvuQAuOlLWXJVF-wGjAC4FvXg2Y5MbU7jK3vVcAqLil-pBfGdHJ0JZ2RR6gmerW6L4iibQs7KJPny4dJeV14pmkvV5pdFYS6cYoWNB3_mXKb0SOyfukvDmVo/p.jpeg?size=178x178&size_mode=1');

        INSERT INTO exercises (name, video_id)
        VALUES
         (
         'Hanging Leg Raises',
         (select id from videos where name='Hanging Leg Raises' LIMIT 1)
         ) 
        ON CONFLICT (name) 
        DO
         UPDATE
           SET video_id = (select id from videos where name='Hanging Leg Raises' LIMIT 1);
        
INSERT INTO videos (name, male_video_uri, male_thumbnail_uri) VALUES ('Isometric Plank', 'https://www.dropbox.com/sh/eu0jqrwe3a3djra/AADF0HSPORqWjfXRxDgNwAGla/Male/Bodyweight%20Exercises/Isometric%20Plank.mp4?raw=1', 'https://uc86e05332877e8d341166060063.previews.dropboxusercontent.com/p/thumb/AAUmi7ZXGgdPLii7dINrgHrBpFCTFkWLsTbSztCiX7xDAC7mRUhotWMY5ar_0McZdtzYKXm_7A5pdEqeRCadtSS9cMZv09ix6oBGCH6hUqCkpt1ndbhoju-fNtmK8xYaeP43FZ_C4Cep1QmQK2CTBuDjZ-DNvi9qPtsg18FYukoEtb4J91ryfKLoiRAKLgxGlsHrvagIAdko4ey50_ISgtQcWVYK8uExZyLNdinVLJFCYVD3yCEFOgAhs-zt0V5g6a_AikUzTfD5CpJaMFoR1WCJi7WgKlrQ9Xa57LTbDd4mWvg1hz-hCeqq91SqaaZhR76HTNEt721Pp8kJJMxPFsbiCon-Me_OgcHaYrWgG49FqFzoeRczn2qOoDlvdfXmU0Ji0yywxrzRkLVDNRh2Kr4ZzcEtZia1n7bDTh1RFB99UNuRRUku-fIfvCCaDcTa_LYcIN3omEu_lxWtUoiyVrp6DQMY5mWznCpLQg2uZc90-Q8fVlNvKTQ9VPK3j7FzuYjCedX234WUr7tNhIHLBo97o4xK_N-UfzLKX7Ti7q5mbA8t6Mp384EX0CZvJGEvessvh9oHv_uZpWJF9KILG0Tun3XcFeNVwQmkcT5HkG6NlbKC37IXtVp_URexh-Hjv6YfRtDCItaRAnroD1_zeVZ043S6LcSwBlA01zneBOzutAb_Dh1YewanVraJgAqVowfeZ275mF5Z4jHWr8s_k5haOoM2oCF09gm_z-rnVHlChoLWl--HhSrcPQxef-otbvtnGFRZ8DkYyt-8l2khz5ta4hnyRpN14OOjpAHwDx7eRrH9e0-XrEhptFt_ZMwipudzlUCnXqj31tIrUZ39CrmapucIS0h08q1TfzavNkuW2mV1MpZOnLq9wkOnSIbuuY52xyEcYj1kCW2zLiXqaov4_3sU3Cfdj6Ya6frq9hnc4gv6uaIM-eAI5zF_greUgSVLvdKa-dhSCI2PYAu2sKiQjw0d45KVSWr-ptWVk1BZHHrnarv2aBOro-Gq_b1xQRzDo5ZvDL0KIR8kaRHlXAIFDb1T7An7kuy3XnJgE2WsqkP1xmf_-h4jvEyXqyKb_FbSCJmaQARI_MmbDeJJFMZO/p.jpeg?size=178x178&size_mode=1');

        INSERT INTO exercises (name, video_id)
        VALUES
         (
         'Isometric Plank',
         (select id from videos where name='Isometric Plank' LIMIT 1)
         ) 
        ON CONFLICT (name) 
        DO
         UPDATE
           SET video_id = (select id from videos where name='Isometric Plank' LIMIT 1);
        
INSERT INTO videos (name, male_video_uri, male_thumbnail_uri) VALUES ('Male - Weighted Pull Ups', 'https://www.dropbox.com/sh/eu0jqrwe3a3djra/AADQR3aW3DajeCy7mezBPAiya/Male/Bodyweight%20Exercises/Male%20-%20Weighted%20Pull%20Ups.mp4?raw=1', 'https://uc85632f1a20a82f64dfc9aea92a.previews.dropboxusercontent.com/p/thumb/AAWUpquGjvhGB0dnqJuKQ_YEQBLTga8RKKAww44rglSOqEa_HERKqTbCWShk8nIuo7Dz26n39m1Jr8Se0Wmf_IceZwV31TZTnCuD9iPqQZ0gD5ajM_tQMCJO-Opo3jalUUpfYFgWdn_JY7Bx72Z7ymBfe0AjWS4SQh11B9MbH91vprzAkdRaPjhAJyuBHx7drtrWUkbj5NGuYcxwBQbXUgtMKr4bK5wSHUyJGCdqpxCKPVu8-2Ke22kgzJxLNtcq23XPoFW7KiblJiaELJli3JDju-Q4z5_ad3nSmWY_W61YxsAprjaDyS98_AbmSawp5GNvd8Tjf0vvxMCF-Bf_sXNsMIqOpBlxh5GuZg5-Bkdi5EqycB8mC88eolbXPTZE19w9OPCKmG8pNpmJXyW8rsNewcQl2G_k4yDpGGywm49l7JQCD3EWRi5J6QWbkkC6NY3lssY2lrayajjGyoeqcebKnNNwer6nae1S_nxutgnzoVm1-jQ1p4TPahlxi26E_qEhPH4rZlj9Kvy69vbSYlRH0H0_198tXzH16CERen0xUzDS_jbNbfYX2OoAW3mq7ntk0xV09fPrmUt5yZ_go7oV9o0N-LzOVQFCYnbRhFmlFTRg7OhNyH1w6QhnSWArtqOyeeXryZDVrx5TE7tBPqSTlQpJKnlSISeFVRD5_dc4axy-zQ0wxQqKJc7NbdhcvJaCxUhEtKPn0AFMTuRpwwXCqe54dTccTZDqVAOiTwmSMYLwWscYNcct9zSBRRbxnElXgWc39_MQ34WLW_f9nxIqrJ4kRGLktsDo4MNKZ1vuBQ/p.jpeg?size=178x178&size_mode=1');

        INSERT INTO exercises (name, video_id)
        VALUES
         (
         'Male - Weighted Pull Ups',
         (select id from videos where name='Male - Weighted Pull Ups' LIMIT 1)
         ) 
        ON CONFLICT (name) 
        DO
         UPDATE
           SET video_id = (select id from videos where name='Male - Weighted Pull Ups' LIMIT 1);
        
INSERT INTO videos (name, male_video_uri, male_thumbnail_uri) VALUES ('Sissy Squats', 'https://www.dropbox.com/sh/eu0jqrwe3a3djra/AABN0gqD2hxbW7kmode7-Rjia/Male/Bodyweight%20Exercises/Sissy%20Squats.mp4?raw=1', 'https://uc4eff0765aff458531315c2d134.previews.dropboxusercontent.com/p/thumb/AAVXqpGwgRAOWKVhSYfHDji-dyGcjr51_gc0PNDpJsDRaao9u5h9GG2Aob8HDWX5QG1slTSvhGbjCVnedrtuGMkghOGfGSyUUVmvpzOwFoR9pxAcbryKyyNZjo3DL57wodTjTxAoiiCAT087yGcHSCLO-FfIStb3ZXdTniW_eFbDas9ewubOdz-b3ORrfNawFz83FuM8WtZJ1Cgu6X_p42nf-sFCnQIy9gBw3j3CIkkFB2dexvRYE9gXr03rBtFitDfQKUm9Q4FvdRekz6c1Ixbm3x0RKV2F6NebASBDaDGNVfG7m1l8wnM78WZNJSIf-R_vrEW1ZNk7R3C-HUYnrOAOyRTasfyaWVBEfpYAD5gDIS5F_xxgpsdSwlFQTaTfXZj_GRpozP53mjuW0jWrmbpiAl7ZNNXIWVf-b08HGxfwWOKE7ZsmDQTYO2qDzzWiOjHsGH-w3aa6wjBMhZFQMBdMc6RKFdpEIzGTiNOWofRKFbL-4KTIVU-GvnLxeoBAf5Y3nAzgqxSsR8cGfeNqZNspwAY1MyDBd8jrSwrbd9o_kwqdrjxZqHuSt19BTnJP9xhrB4FepwTYHzCRIqnTQsBy7NlYiFVZXy-zXHI_Uh_JTTkZog8y_3rOwl3Px75-3zw192qRHX7kmia6EXi68VZiMqX8dTtwbSgfvOLV55ewajfw9vZ1G998ae-qVde2lWQn9H-UZJYZx4aILzCSMFwuHJNJL90fsQT8O2kVhYXOqBsCgTex1O7IRU2E-ZbyaflRMgJtQ-5_P9PvpiAfh1U4qBkcir7uEDjyAgYXmzoOhyNFo19NL1jUFTXCj60th0xhJqKIgMyyu_5tkOb59Fc9gaCRlSYYS9nN3K78Joz6Hz8ItSYkEtuhv0e6aEeIskb3LtGjHoWo9AI-0nlX6HagHB3Upr0vlGRuGPgLm8kQZVjJ7G20R3tdzwuUz8Tw0v0djEPNh8hllcV6VPYhhKmOhOuXgTmRMh1ONbDqM_9RCn0Lp4ZRCQvqTyStXT54QTKhZfv1nTxn_SO15LVC-m3O/p.jpeg?size=178x178&size_mode=1');

        INSERT INTO exercises (name, video_id)
        VALUES
         (
         'Sissy Squats',
         (select id from videos where name='Sissy Squats' LIMIT 1)
         ) 
        ON CONFLICT (name) 
        DO
         UPDATE
           SET video_id = (select id from videos where name='Sissy Squats' LIMIT 1);
        
INSERT INTO videos (name, male_video_uri, male_thumbnail_uri) VALUES ('Standing Calf Raises', 'https://www.dropbox.com/sh/eu0jqrwe3a3djra/AABP_dBUbYsoXLwzMqAY696Sa/Male/Bodyweight%20Exercises/Standing%20Calf%20Raises.mp4?raw=1', 'https://ucd33a2d8602658089c3e233a3e0.previews.dropboxusercontent.com/p/thumb/AAWBV9RMB8nmoaectjusQi3cAOgwAHshhsnRBbk8gXPsQ3IjXCcowtR7pw85eQAmWOb6wYp9NJFLqRuz5AI2bo9GyIFYflDe7lv0iQcCoaZ_0JTA9xKH6e6ZjBU46JgWqhknoVK68nIl3Ke6a83AvdEIT1ql9gz5C2n9a1HbNT_8nWW10ix4_UK6zINKHpbqTR7UhP2bg3V9P7cUcW0Xll37-U9P8WHxtjPfTnKljQcke6p0U_6bwaRHtldGgqCRKHCQoCmiDoXUYUzN4fKkP7G9BxjrQf6eG1livyK5vQ5swYdKFA1NIHQa4l4pOVzRh-NrwQYUWEQEXzTXLdCC1YWMfnxQyD2B016NtlLa5DvLhmkiDZ-yS6-uXz1kEf25a_jYCuS2-lowLnRJh4d33aG2IFByYe7Z82twcp0XUMfkiTStKof8oJsS7Hch0-gD3QIuUxPJ23A-X1nfZmOgJIDUbjKtUBKSLsSeenMUrLtyYGABu_79tVxuiZVIO27nIAvY5PQGN7uKT70o6L69g4zHlvi_uzI418JQKIiWWK33mp92Slond2TAKaAvvzkqxXv3DmJd1oMj65t9F1jRPkkwhtjszrb4zupjuiE96OqGZivTYDEygZdR5AzDN33lHxb2PGpYdq1mYh82ze2EQfsJpr6L35FtU2mPrN3uBUkcsnEYLqW5qX15yULYhGbgsS4lHNKQ4xXrhabJ0KDaHMZqP7wB5q1WrKddVp0zh0dvLmeOctQVsfx-i_E8YMfcH8kZXuPX2bLs_6huaJGC2Wvg11MoRQmsmPrnSasQ0hQZAphg5uaeSpBS8GTtgin6JK74ugK4GP10wApqwE1MmIzlTnRMYuOeVF8IIyl3DtDS7smnMkqG7-dijp7ywOKtSGhc6fGJfBE5c7c_8y5MHlkHHnPqiJ39G_u1uwANgHwiw1g7kSGdTtJtGCZGyLLmIJxLpIi3e3_fgTKymrSlsgTOu3UhQwdCV3bHep7-m_MU9WjuH7wMtTR_Z2ZD8M7rY5kWXX4cTx3b0laEB0xoxyiR/p.jpeg?size=178x178&size_mode=1');

        INSERT INTO exercises (name, video_id)
        VALUES
         (
         'Standing Calf Raises',
         (select id from videos where name='Standing Calf Raises' LIMIT 1)
         ) 
        ON CONFLICT (name) 
        DO
         UPDATE
           SET video_id = (select id from videos where name='Standing Calf Raises' LIMIT 1);
        
INSERT INTO videos (name, male_video_uri, male_thumbnail_uri) VALUES ('Walking Lunges', 'https://www.dropbox.com/sh/eu0jqrwe3a3djra/AAAmXHDFPyQsZzI7GWyNwXSia/Male/Bodyweight%20Exercises/Walking%20Lunges.mp4?raw=1', 'https://ucbce9954b30ec1ef1aa77084a03.previews.dropboxusercontent.com/p/thumb/AAV2T0P270_ObWaPlJq_CkAp1C04grljOqusli29oxarwQ5LCsghOIRCwhBgT6aRp-pgVEkYxOc__gavPQhIhnjjDHOPI0xzJN1ff-aZIH0QlxGlBXuhNIEUNbTPb-HoomuILIrP1FCDi0BsxsgV6v8Ov2S5QPxnvwuAKsmRE0mjh7oNOZW2hIeIB1xR3tWw-gSiMTyPgudM4F0xmE3v9Z2FrZbWSFAYRaFvJ_uvMOpd9QyeXG-Vh5258Qtp5SFMjqrI2Y31QqhZcZlzTmtAxlUBK3PztG-Wm-sm77JT1XK_LiKG_bDL9pJmE7nCUEUDEwx-Rmr2yQqaJhbdVM0iwurzlzvmgEJGJaQQO9rZhM4pntgJRJVfVCL4u38KAAyczYtrLRIvpBtfAVtJd6jgtzOR37-ac7atkY1uvGWM1tqcOl-a-G8x30_24DIJtSIr1mOB8arSSPPqdjaCiwKakZy3e5RPoffAVxgPCca6BbyjjcZmyOj6WhwFqUkQycJ60qbBlf6l7liU_BG-b2wp8Pt-OOVc3LTXSBI7Ym_Lu8MmNC__2p7s1Y8fJYyg4fencWtaYXNgBcMEBP6CNZqwsksc_BvLK20JyS1LkRKAPRbyyaa-z9BiTFIkr4QN6ogBspsWSDemXrXNex9AC8iV2jz4rFuZcM4H-U7o9PEkHQxQnHc1IvbdweDjlVOCJOy23dXtyJlrfNfMS88oblhrj26MMJzwgyeziFqSRt-g09Q5kTRI8THuCvdV6APU0V1vUcpnCLmKIoxbnqtdjDKqL2M4jHvYPtNfkwFVliAMZURDtqXd86MmmYTKcRhUKBxYfnBAold2cb5H8cybFTIl-PpDzz4UBWEQGy0Lm8eDZz2vtjWH5wZsF9dJEkzpOBiQVkk9Q_PNQ61mHSwao6Cry7_dNBYpb4IprjdO0b_9GIGvmpO1Kd9V705JP1cWCB-b1pKa8QQzKdr7ONQVzQmlzZcgr6WnP1zbWorGkU0gkQVqTC7MrnfUgAejTd1WR4Pv3AgNTpWOvsfa2kK2u0ZUpFJhEMkZu3YEjshJayCvfivHejDWkXXDukEbYAjxYMN6VgYVO_QlkcK_pcy-9RigacoF/p.jpeg?size=178x178&size_mode=1');

        INSERT INTO exercises (name, video_id)
        VALUES
         (
         'Walking Lunges',
         (select id from videos where name='Walking Lunges' LIMIT 1)
         ) 
        ON CONFLICT (name) 
        DO
         UPDATE
           SET video_id = (select id from videos where name='Walking Lunges' LIMIT 1);
        
INSERT INTO videos (name, male_video_uri, male_thumbnail_uri) VALUES ('Weighted Decline Sit-Ups', 'https://www.dropbox.com/sh/eu0jqrwe3a3djra/AAA98wOx_f6SJQZcmRmX82jta/Male/Bodyweight%20Exercises/Weighted%20Decline%20Sit-Ups.mp4?raw=1', 'https://uc54a24ccd655ca979fa4e9a1aa5.previews.dropboxusercontent.com/p/thumb/AAX10w4Rj4q4IoDYJhu0gTDr19w3qcqTcJIME2CI6uS4AmWduxOpYy2AXrcLudtPJIV7sz1qEpaDK4EjvDh4r0kq1iK177bezC4ODbP-6-cGYGp67vm2Efbb12bvKT4tdArQgRokgcxftQid_cSSxXml4p5hx8_Um687vKV-p5ZY2imxvkut-bTj1k1o0XlsDzlNmTVB9AzB5UCcQXQuMNAgOBWW1zAOpRyyagiE59yrgCEB87E1AMenZnCQ_MK1W7CNHxxfCgjzeGOYsAdZ2xQPVNfCmn02_6DSYtGeXEOFtkNv3fAhZxUGsBKwoO6E6Kycto7iNFUswK7_A2VekVaB3CsXeulJpRmIhlcP8yaVS3lDh_l8b4jjC2hcBrSNnk_YcTPdk0W2EA0uEnxi_WWdFHV2cqe4ElDwFd0kIrls_RNxCCHnArsfLCjXB_uTRei6Caf1ifx6x0ldK_ffMBM06hLnLlGCL9nszwehdtB98KrbGOQtpWWxGkTbOG-i9AKX6nknLr89fxCgk4idkKflWTyBKrgZ40tzBn9JOBZ0XUnJL1vgt4LL7VSuT-RZd-FI0Utk3x5TlEUqxF7MDidTzscY437FGHjcgzs5mN2KuUJBOZXnR0Xh5RTHqcHLTkn-s9ZRIOJg2nojrG1s6RmXTiOv8MaWFZPHkUHso0l6ssJVmJMCcjvkABoGyMcuIdSl--hKyt1kIKbOUxZwzUklMKq4-w6HlbhYEqDOpVOa9dYoIZBpnv--UNMSfhXjvfDabN55-dpSJXvR-YStUuui_n-GjyuNN555GNzG9cteiK_zlIpOWHMcnJ7c17_HkLI1Ieeh3BOu1AI_f_3JTyQG2dsGzmjW_KkEjj71HFH8I2yiDd5BOjaV2m82psXnLqVHxuYNA1iTTKIl1D6O3t0CkjKNrT9ZyqUarY5DeLumhbavC7ZJU47tyPtba1yzTp3omL7cHHJkwbK-Jdt3A-vFqp81mDr2Xh-_tYbkowNYag/p.jpeg?size=178x178&size_mode=1');

        INSERT INTO exercises (name, video_id)
        VALUES
         (
         'Weighted Decline Sit-Ups',
         (select id from videos where name='Weighted Decline Sit-Ups' LIMIT 1)
         ) 
        ON CONFLICT (name) 
        DO
         UPDATE
           SET video_id = (select id from videos where name='Weighted Decline Sit-Ups' LIMIT 1);
        
INSERT INTO videos (name, male_video_uri, male_thumbnail_uri) VALUES ('Weighted Dips', 'https://www.dropbox.com/sh/eu0jqrwe3a3djra/AAD-7ru3lVFaTuNdakoy6UXoa/Male/Bodyweight%20Exercises/Weighted%20Dips.mp4?raw=1', 'https://uc5beccfc7f98cebbd61084103d7.previews.dropboxusercontent.com/p/thumb/AAXNlqG72iA_py8GJuiMisIVHUZly0FcxsFa3kHCBvD0n5zidbp9LVUyD2d2R6b6M1hohrlZZz3EIF8kJFvmPpZjiY1LJ_z1Y1--RXzRlcGvR30TjD1l3k1XhYByeqCBUXfXtiUrXpeg-oi0narQZJyNTa8eoAqbQsdykglworBrk44THGhYYdWk8kvqD43qTzOtaMVpFo-oSEyQjhPZ-pAVH_OrqgNM_iol5wc-lSSFhRtIurf2CmYq6XNJRMHvkjwUXkKwH1VyKtXssyDgyidYQlduMrs5i0aNJdFMPigr3LPZsJvRUroxgnGJWWSmEqsdMRMPB3OOjzvuoiR0QNe9_CXdKdUdn6Ni2P8oUcR5X_3YDua29mrm-4SGzvBByj6Ike_zsGnxmZAxuRCkzVS5mnEkc510r-SckwGQaz8fULcp8A1QVtjgPBve-KF7yXpLB08S1pRLUKMC2WR4f42_78GfAVSQ3TPa7wVVpd4e7jFfxu-LR3nzNmmxmpMl126K8-UoGAWE8B5M409HHITYpeijYkXz22c61yFpd8G-dnM5rVdavwTIp1DnLrZFvomYXhqyiGSz_zofuVmv_1OCk2YCpbHtvejLdn963kJV0v48HKCGa6ePGMepc3nTfPTyeYnfrKNQGqhSeL46O5DjcrC3jMQw9slHxRT0lXZfMj8T-RqBuQL74t2jcWkNkaEvOiHE1UnYRr-ox1FnMK8kjwq_nfjQOJdULCdh2coAO710QUzDL-STsbh4SFAJoi0Li4sAf2nGmW9lwDYs5Wne9AWZf3LBBvUJRT6Eow1IU8czp2jvZC5pH862yK-4he1fQknOxzqgOyPWzU-mNUoZfYpjcxYTXRWaVFNPeeem0EN8gtK_VN4GmwERmLX8xeqA3QgrtT1RnaGYK259ij8ONypljTAezVfIEmMr3cpZeQ/p.jpeg?size=178x178&size_mode=1');

        INSERT INTO exercises (name, video_id)
        VALUES
         (
         'Weighted Dips',
         (select id from videos where name='Weighted Dips' LIMIT 1)
         ) 
        ON CONFLICT (name) 
        DO
         UPDATE
           SET video_id = (select id from videos where name='Weighted Dips' LIMIT 1);
        
INSERT INTO videos (name, male_video_uri, male_thumbnail_uri) VALUES ('Band Chest Fly', 'https://www.dropbox.com/sh/eu0jqrwe3a3djra/AABCZ4qC64dByVxfKyOdlcBta/Male/Band%20Exercises/Band%20Chest%20Fly.mp4?raw=1', 'https://uc4e74303edd99398d1c76f6817b.previews.dropboxusercontent.com/p/thumb/AAVkueS7Pe5YXz2gbULrteFvH8PxLHEVIBl6QOhuUzdB8GwZ0hwGJt8Lk-cfTv_1FU3cjihNkyNkTFyvtwdzDJQmJgTl-2t8l7r5B_t4dPoJst_ELZUg75Kigqs-1dv-m3-K6kyWguR7IsR3mt9p9FMKnHs1iiLwHB5xDdeHEBq_-d6honBDwePD_Pp_WxkFeYGa9pVgXvbcGy_FV6-LS0EWrIw2dzhoTyCS77PwreLD-8W0KWd9LN6-42P98T9CbEUuUScqgPr5sjWUH7p7H_si-f57wd7zFGOVU_bslLZiNdTzMeA7A48QMCA_F04OraIRN1zhSmmeS526ixqZfBqZ9JmTsWfXjL7QquQCbnDhZFdns5ZZqWOkYwKiAnSiCQlw_Tcr1ETD6C1-IRpr0TfDeGPG3fMe8m_RhxauC8PT-60ejS9VmXLSPM2g43Oeeph8I36is0Sbfkeuup2uzig6T6Jrv7VDFO-HJZ9qpzv0bj8db2JR7HesOOLEsrQfQl1nIjyfibf1SYkyAUpGKGOwLSVSk0J1vjqFQD_U0H21Ykn3lWvXN02dWekda5gucUV5RiT3ruwLODupSR0l1l4iXgIrfYH0S98C6HNGCrPEXbz9ElE7KfhbnnEw8ES_tV3McWiY5KMnPXL4cIaWYc-KbGDFjJIGS2w-qafkZS8LfxyJgt0cIT3NQqWccUrserwc6AdNkIASNPaMsvbT778YWqpL8xLyE6nMXsIYlVJrLA0GlwG3Uoav28fAy2nuLQw732Tk8uhh-xzQEfVCCJpB-pDQnErCSEr-lozE3mwHJ3iC7shWjjMmeX8OUXvF8LSzyDCRztUTVQ-scgISlgPIwjK7nx-vktXeDKiOT4BAep51mEulh8I_rfgREfmOkDx9tqnBUFzAt5NFCtEqUu3y5W0M7FTzxHELkgkJ5iOAJmsMjaAgZFRwgfjqF-SzgbdTmax0ELJTwu-HfIU2z9qLjwpO-BjOkP8oaZk0HrOtwWcPaQQHJOBLtzEZAQKM1AAP7r3ap6eZ03LLOmc4LBJU/p.jpeg?size=178x178&size_mode=1');

        INSERT INTO exercises (name, video_id)
        VALUES
         (
         'Band Chest Fly',
         (select id from videos where name='Band Chest Fly' LIMIT 1)
         ) 
        ON CONFLICT (name) 
        DO
         UPDATE
           SET video_id = (select id from videos where name='Band Chest Fly' LIMIT 1);
        
INSERT INTO videos (name, male_video_uri, male_thumbnail_uri) VALUES ('Band Chest Press', 'https://www.dropbox.com/sh/eu0jqrwe3a3djra/AAAeT0yGGZwXDoRZ16SVfHM2a/Male/Band%20Exercises/Band%20Chest%20Press.mp4?raw=1', 'https://uc16ff02b49dd0a316d5617d2796.previews.dropboxusercontent.com/p/thumb/AAX-1VeoNNs6QAPrMgVO0hBl5SM8iEi7R2W7xEuJ_ZZnAMCmJlXPQYsnzebfsENsx4VlFcNh0BnNapYItMbC75EIvLmFzGEsPhNu-DOcpZdAqOUBs59_h-kF26IiDMvCE7vkf6vAf1QfKhs3M-9Kz39gA30taaMtpsX46AdwYW0dWJi_yQgjWUcEG9er6tLxJ3gG6znbN1K6LmDogQ_FcHHmZmkGCMtAaUEc63eJWHhjgxb-qoAdWeJMgmLIQ53harPHnIORv8C4uIxia3SxhEdv9SWvuAXUYbxThndXXmMv_WRFu1ErgbN34o3FtQ0KsAN9kXQwFoBQNWKd-6HHNOU36e8wFIVnFjfc41Z5C1n1KfwCNTMhV1yW6gvRlbhjA-ZfURPCSF3x8cAAz3NXstdG3ZUJiKnoUc8tu_aS06sWGYE4D9ZIBtwVOLopkAU2xeMZ3YXJKPEi1EOYcrYl64ylvba8Kv1YV66LrWXA5gMrQ3t_lZzolBLlgIaMfJrgubekLUda6eRnv_gDEEnKK_vbDTYZOirdlBD-1L9cUTwiGhnE2SD2PjeExIvRlDOgaUL8eeqFUG-AKHavXZ6T1c1mYCvFbjCyQ4fr5jElf1Z4KUq6AECBhHgS16OVj5cjFtXmX-7rXzHDd_MPxoK4UlQhEOlSGLZTlaJQ5egjSIF4wtiDzQZ6n3J5fVVJQt2o8I8UlkA7a2i6yFhV4oohm10ZvRGw-3qDH_QZyjo81piJ13e1jjXhRCI293BfNeo2hIDsdvENIczMwIRVdXaCpP9-Caksqe6_-Vx0CIryaHqybViVmOgs8U-vUxp589PHIUaxJPjYAT2QRtj2lsm6eTNZeL2bUqC9CutmiGKFNWOB_m495WlUMQ8IrpKOcueX_BNsNyHtBsFvLzsRUu52e7IuE7lxfdayfJ6UMuGNeSadVhRtWCR4EqRAAYE6Qkf9OGR66jhdj_cNzTWVhItQkamdorkGufKS7cC7tmTZahpZrYdVjN_gOekB35_FkYb7nPuke6Pm2BIw6TBcR5sZ_FWkKPBHebJpPBt3rBkUTfWyRtSoQzahC4sizfTkd_8D8Or6Gx4lm9201S8qF0_bSR14/p.jpeg?size=178x178&size_mode=1');

        INSERT INTO exercises (name, video_id)
        VALUES
         (
         'Band Chest Press',
         (select id from videos where name='Band Chest Press' LIMIT 1)
         ) 
        ON CONFLICT (name) 
        DO
         UPDATE
           SET video_id = (select id from videos where name='Band Chest Press' LIMIT 1);
        
INSERT INTO videos (name, male_video_uri, male_thumbnail_uri) VALUES ('Band Curls', 'https://www.dropbox.com/sh/eu0jqrwe3a3djra/AABbUhMYQlzyBBkr_WSZWJ0oa/Male/Band%20Exercises/Band%20Curls.mp4?raw=1', 'https://uc1208e1eca2f8e5ed73a17c74ef.previews.dropboxusercontent.com/p/thumb/AAV1s_hdNMc6M9uR5tSvpweKtjNsu6anaG15rRCPORmsMiyiwava1Q4xxELdpm7CNhUdSZngNeixTy_lv1ybplLv2Bvyk7WmjhZBknKctNc45BpaR9yQ9X3K8Ab-hLPOYWdooWEPXPIgNL4_J-UdylMKxywbqvPHDCrQJNXyvPsL63amXLtjFCP55tcKL0ixm53lfytPWOVP_w4Zyu4w1NNoLT0cEV85F9Ss4Bo1KUP8ZZZiEn0kgaSWexJJyvS8SWNeOIJ4Xo8s7y_OmKK-041DxzflY-0_aCwo-kdi3YJ-ZV1yndFaAPefB99j-O9FfSj_6fbngkjLrxxC0hWTvUZNWeSY4a4FVE9ROc5krTqsKgo-wisnA079tXEGAoqdbDfEJgnsJXgPSmRwZhJ0fNvOWEMGwpxNr2Wzu22ZCSgKGwkG_jXbxhERyz_JcAk-8l_z3VO1Wj7V7FrrEd3GGSu4PGWMZ7ERRk1xSNqvZDbSPOoBX1BP9rGmvCF-VdIzucqHsZ0DLU6r7K__xpkPZfNdb4eVOkY5Le6bT6DE6_f4YpsESxsysi7LY0qGlGT7jUUJevfihIDtvd_uA4hfWqui4wOsti4MH46UtqUz5lDgnJ13xw5uXZonT3NNYTm2ZfWnpXn10ULzVlHYYp9A5klfVoAYl9skXHi8sziR6PfXyjQlXAr4zp3VCpccwixHMAiC5n6srROVub56zjSc6Tk1SJiiEMOFkMAqFt-4VfOTFKqm3ANA4K4NLIwosl9eMQ9u0xNAuaWDLXwSwI3tbG9jTVmV140ZWHpxWwg76OnLefTyj-zWicNRidTtnj-Tz7tBUISaWFTwkODHeBpHPdi-dFuSXdORi1_HbwG37LlJghjZG-rZWOzkMpgIIX8sNrWt6D_wl5kkf1VebHZ-Y3jCVjeZHo1FmY9UORziJqib_Z7dJ_j6Q5dmyajVmScYy2m-sO7CuqnITDujKO100bjto2kfz9HTDg2vCrWGXG3srydpyqmWDNjjrv4DxZ0wTURd-Zrh3p-yqLGX-ntdm9CTgS3jePo7BpAUEOQTyATRF36-CaJWQ7bq471b2sflEnXNTUOV3RlMaUTgHCBV29QU/p.jpeg?size=178x178&size_mode=1');

        INSERT INTO exercises (name, video_id)
        VALUES
         (
         'Band Curls',
         (select id from videos where name='Band Curls' LIMIT 1)
         ) 
        ON CONFLICT (name) 
        DO
         UPDATE
           SET video_id = (select id from videos where name='Band Curls' LIMIT 1);
        
INSERT INTO videos (name, male_video_uri, male_thumbnail_uri) VALUES ('Band Hammer Curl', 'https://www.dropbox.com/sh/eu0jqrwe3a3djra/AAAgWKg70ssAC8jq9TUTbj4ka/Male/Band%20Exercises/Band%20Hammer%20Curl.mp4?raw=1', 'https://uc50e8fb4a6c0d0e54772e7e5274.previews.dropboxusercontent.com/p/thumb/AAVqgqwYQ8ml4MKqIs_HvTZeGc6eGVsxpdv3GrB8JeSP1meXb7L14yJEBZlCSJFtYX2w6dFar-GYmss2_6o8QwmyEaUSkFjW-oDzaM0jjD06AKdNHN5W2d4FqmTrDsO6JC_2nc08txhyYjgczgmaQAGKjXcq4o-OB9uTdkW4Z3RO9C6hOob-P4vilKQT2y_jLO20CErs12JC--wG8CDmSRmoaraMEYYE7WNpFOHBCirwkcBt62SaxFehNnb09SuHEmOqQta9xRo_iaEumjCWYlz_J-qj_OryehjljdKC9aJjc8bXM7EtgHCu8XNjj-Bm-ywR2xX1Vx0Aa57K1Z4jt4O_wRzEnVnOC-ikk3qlOy74ausWRPTDIyPGEIOrC7WQzcuJn5FllvscFrYgox4HJEZ2KEJHTfACsgKHmaFx2tNcXHYp2BCf9722by6IVjQdFAmentv2P_QJO6c8gzhB9jb_RASKTaMvPXaRDVi-R_hAVzjaxbblCLQFtAA7g9wJdeWoZHY97ydC29buwARLbXJbVahrqOGjjUtBeFvEhduxlWIleHCP14W_xMiCJpqlOMHQerWfPb7aByTyMGqiAIfNgeuBmRTvQE5FrCCPNSY-PR0k62k9QoXsjQ2RXod2MknpTFxdgxliFjufVfaNANzyVjtgjD1SdsaWqEMmPurgDAjqu_-5BqC0WAhaYdqrA9ehz6XzPiEQI0rXvChHYQCL5WXQIQsq7U7YX8L6fe9o0-oatL-jM3y2ma_RuETAOvleeFBOxtNvTV1BqXgvOnK0w4cYYSvFmlqb4dug1mCE0VZSc2dgJn2LNWUKTSKVnnUy9ksiK8ObMSwp2r-fqBb1F1TGZ_oKWfcu6jdhVKxkqA/p.jpeg?size=178x178&size_mode=1');

        INSERT INTO exercises (name, video_id)
        VALUES
         (
         'Band Hammer Curl',
         (select id from videos where name='Band Hammer Curl' LIMIT 1)
         ) 
        ON CONFLICT (name) 
        DO
         UPDATE
           SET video_id = (select id from videos where name='Band Hammer Curl' LIMIT 1);
        
INSERT INTO videos (name, male_video_uri, male_thumbnail_uri) VALUES ('Band Lateral Raises', 'https://www.dropbox.com/sh/eu0jqrwe3a3djra/AAA4en6lhPq7KGd6eKeUJwVDa/Male/Band%20Exercises/Band%20Lateral%20Raises.mp4?raw=1', 'https://uc220ec9961c72e6d419210efacb.previews.dropboxusercontent.com/p/thumb/AAWnkFRJo08rUXXmBV1Enngu2orOmVFex22ZP2eufmzgcbeSNwGY5n8XYCBb6jq08SxVknHdZGYlr3R_5HJFD8g6WdRHNgaENeYllzldFbK6J4WBDaOuNBwa-SwnNOgmIx71Can9mZAI1h2tjGtV4GgCARHpuFI0BpsSWCfJdRUcqsAR2Jm-Y4535NlLUPRPl6cn-kHdhEtLNbbHHdRGpDCM4zQiG559kcLj8uuEsN7yLYrOTQndgUsuZXWxlwvixzU4ms3oEgnEzEtQ6UU8YuJm1vvetUA8WOCJwTJZJFflToWGa3WpIZKh4_RnNQMFH776erBukUFD6SjwHDkzn0omjEvjsc5rQAvnie2Vgp3xpRffL8yS9F1lmz8lKIlq0Q2jf_ZnpTjZljMEArcfP6QfRTIya57xLkEt1It18-fX5BHMqAP72rqiYKaLLf-RzGc3w8MHtwrg7x_gonV_kUpnSYWigAv_RtfmqVG3rQ6DRq4wemM7qbUIsv3fG0bLd2FeV60J5KOrl5kqj7_AByxUshh2eJLfroDvP3AvqanUDNc1F1627qQjMcdgJOkIfKh3PmJzms8aR2aLTTHIZ0w4lJoj_JPdhxRhlQWxQ5yLs2YNiK0JSs6L05XBlDNhJ1xRGvoWqZ9xqhjsdv2T2cRW4gYhptfQSK2RDRvutBGfuvc0AKb6vksGdI2F5ajnwcdlQu99yC03cvKGWaOIz09TelAH5r8x8263ijL1Nx_bDSp4lrYHcmEIYGE2KRZJ8TQ40H7WrYd5_l0NZwQH_puRG_FJfnmdK4NjHBngexqCU9VMY2a7vZ9q2cCom4Hg--lIgDVEH7RIDMZDbes_RXm7WlFbMLNaG4XBF6wIpm3JulwEO8P9QIORpCKq2hjjjR93mIFi6FOOKWNClMCphdjc22rpiEzJSdc-aknkTe9z4o21cMPBw9i2A1F_KNC6QR4LcwzXaHQxWTLQnRP7Th_eo2L5vCQyyJOe-JCh0UiIFcvRA-0rtWiznWn5PepZx1Y705658FC8d3fTmkW1e4gR72kUSjLCRCfmMOMhFAHN7ovwpFRkS4etAmmlHrzamP8QY6AKxhiJblfdb55-MExm/p.jpeg?size=178x178&size_mode=1');

        INSERT INTO exercises (name, video_id)
        VALUES
         (
         'Band Lateral Raises',
         (select id from videos where name='Band Lateral Raises' LIMIT 1)
         ) 
        ON CONFLICT (name) 
        DO
         UPDATE
           SET video_id = (select id from videos where name='Band Lateral Raises' LIMIT 1);
        
INSERT INTO videos (name, male_video_uri, male_thumbnail_uri) VALUES ('Band Overhead Tricep …ns', 'https://www.dropbox.com/sh/eu0jqrwe3a3djra/AAAuN_FvnqDB1GCzMEMDig2Ca/Male/Band%20Exercises/Band%20Overhead%20Tricep%20Extentions.mp4?raw=1', 'https://uc0914860d22805017eb22514b93.previews.dropboxusercontent.com/p/thumb/AAUScfYjqFWcAgentoj6TVjl3jDqmI17oQT2T2RE_Mlx4o7Lw4pfwZIOo4CI0XWXD_XsUREDK5EgtCm_JWmSFi1FJb1OlmWR9Jgdi3WMVslSJAmyRQEvpB_LZ1UorCbjYmBLBP3rTACM6wnPObsvOZYNYBKQ2CFy7pegwrWE8DsyAIwWzH6LBwQ7WSvJZQEuPhXTsXRJ2OwRTB05WdUnsX1TDGe1WRHZLJPnre1QSniLslVg0FuytguYNcQ620VXKcVNcgrqEzdoH7kEk_JIWo5CgbcYWm-2kw76yuB25mx7fRZw2OsxJvDDr-PaaZ-afAqL4FgoTqgbumH6bwt0bQkZFdiSW-LW911RC-LKg8Mb73WvSJauNqrAUpzH7gYv26yO_4hzz3Ig871e4uTthBioWfrgjfON4i_TU8V-7CR3M6N-FCE6MN-5l4HJbujWVdLwWRg6f-JiGYEDelAqq4Ww7bo9z9AasyInodAN-jUNaMycEb2CWF-nlHmleOSgQu4Bz9C33IjZgK8ZvHyuO-LbMNKTZ2F3pSSPoo0r9uSspNEYQNFJpGhEjJObuQZn3qf2gB7FdvSFR9iEedbC9quDgjFlbgnzO_EzDegmgcubQLJT5fwuN8I2k2DHir5iHekOtlaPY6rjg_JT3yOEiJ5NTp9JA2pL-B8RnOobKts-T4osd7Do_AHIHZjD84vkrNfvVUDVoVvsaHcoI6c7Estpmgbni-UIL3gTevEkP5w2veu_zgM01JKcUUnWB_ic5HwKHKyQPljVnbJd8huLfkZOSOXFzBJBGWW3J8sqAwzcsx6n26s7TJwD0PcryuHx41I2effyUutEn2aCjPu05Oi-dJxoioK2PPdN7EkV42xBvDZ1by04mvBbCIPutsy7voipCMX3wYlrmmqCOkZspY7RQYdDxBoMj6b6p_MCIjIedRcWhmzWkElHDKaMmrq8K9f4T7YK9zS1PD4yK-F6FYoGT_t_SX9t56r4BxYQVZ3HlJLr0YVlyaI1U2ykN7zzY-4_GlYhoG9eR0ntrgM-VQBOxmjjxvSp0TAaqqwJ804_oGdPV3LkaJIvrclc2qB-CXIyXYTf3T8V-fyMgaIa0ebL/p.jpeg?size=178x178&size_mode=1');

        INSERT INTO exercises (name, video_id)
        VALUES
         (
         'Band Overhead Tricep …ns',
         (select id from videos where name='Band Overhead Tricep …ns' LIMIT 1)
         ) 
        ON CONFLICT (name) 
        DO
         UPDATE
           SET video_id = (select id from videos where name='Band Overhead Tricep …ns' LIMIT 1);
        
INSERT INTO videos (name, male_video_uri, male_thumbnail_uri) VALUES ('Band Pulldowns', 'https://www.dropbox.com/sh/eu0jqrwe3a3djra/AACz5nYNB9x0zgWx5uHK6Af0a/Male/Band%20Exercises/Band%20Pulldowns.mp4?raw=1', 'https://uc33a6c05081522034bc854e590b.previews.dropboxusercontent.com/p/thumb/AAV5sQhuWK5e5FkCZiQ1_VL6O_YfE0IB5hmrNzEmsppqnlBOIbXA-2swtfm1mjfJ_fgj7iMEkdSyylmom4-nVT0qhw_5Bxw_OYBmjKs1m04Bnm1pFpGEYm9lJVRAdAmsE-0b-r3xZm5ELKLTpoo2_yS8U7-KQfRlp-zfdlaAuWbHiS1hij1TOaN9himKYhYHC6zJ13f2lQEcmq7DlMjZ0bed2BQaxAe3h4kvOqcFr41g_het6XWmFqGnPN9IQ_alC2Wjfa5V_spmOWq4EinNL4Dxj7YeNtjjahp7cgfsctK1hhFd-hASJOXeHUeeTvpa0A5_wFlBGJYJSgY1QTUcRLB6DBFszzXZ7kWSo5x5lTHV5sx3O7Lz3kcvJp0XAMKvXCNqJgegHHHEQn3FeFjA249TH7G-_mkYh7N0JxIs0L0tTs8FZ2iHrUnDpfopb-3IgTR0jdnFfgvQMOh91puVPvYVv3ACSmC4mZKg3nxdKk1XWLdYxfsgogmHBna9eASuPAH0oBNGxtmdauogkZtNMOJs3fmrPctL8dtIBsy3aF6IkS0OvPAOKzwcjDN23hQMD_qCsfOGGrQ1NGxTCZZG5XSJyRpjQ2VBKel70fwZKUM8dRaO7ddL6JeeUrmpmiqd8-t_Bs7uyiUR0EiMlbZgSjHVbnaouGIL5_H6xSZ_kNHPKhi7XBQ-0KJXJHPbJjNk6Ri2FyQo0I3qsw0h2cFH5zMKOAbzD1JvOtmF79maPmGjjwJKoA-gi7EiLOyuWRGifDEjiuwFhHPLmNuSYynI5Hodq3ZDoWLht4HRza2DN9h9eZzDcuQPV4ZQ5YSyW_7ZAe79On_WmrfUvgTQbg2tggsvU_EE5EKDplB6jrOQ1_dhdXlzrpe884m7ooU-vSE9iibVVz_mb5jgMufFsRsvRq2nB3rMjjfXhosbrgZH8wj0UiF11Dr62L962JUr2L7ZQDEFsHHzpthjX9g-tEqMPNvQa2ib4mAze8FHLE_djCiirNuTUTKBwR1ZmhjM-THKrXcG7K7QpuFuPQ9geqpBKafVJqBIPjLSdBryFYPaPkzSp0T6IeoZuOAr0nJYpVmvR1AuxQYyQFg8AGqxVomisLhF/p.jpeg?size=178x178&size_mode=1');

        INSERT INTO exercises (name, video_id)
        VALUES
         (
         'Band Pulldowns',
         (select id from videos where name='Band Pulldowns' LIMIT 1)
         ) 
        ON CONFLICT (name) 
        DO
         UPDATE
           SET video_id = (select id from videos where name='Band Pulldowns' LIMIT 1);
        
INSERT INTO videos (name, male_video_uri, male_thumbnail_uri) VALUES ('Band Rear Delt Fly', 'https://www.dropbox.com/sh/eu0jqrwe3a3djra/AAADhBWqgVtoedgpPDfF1L-pa/Male/Band%20Exercises/Band%20Rear%20Delt%20Fly.mp4?raw=1', 'https://uc01a528509061e8baef095a2dbd.previews.dropboxusercontent.com/p/thumb/AAXb8AEgtZrF_UPQRuyRLpEEXBjj4_czekv1hrrx-QyIbHLnGvkybGO_DK4QcHXLSyRgTat21NCogI2sCInkP-_aRm47V2LI76556w11QnR76IM7c4e9Bmqn_0dZZzNddgK9id4NyMOzLiCmm9-y-U_OoIr6Wk9ZUSSILGYJZb_AhEcm5U55nGzcC8eGnltTHiYzaWqjK4BYISVrbpgudcXhsrHeOex2buxQrwEVAmCj5Zo-jgm6ESa6TQtAxo54XM9uy6NtYHOcNsiNvywjvlGW6lj-K5JPR5qThrKAFYRL_IwTXTs2C-ILNcw28v7X5TY5Y28ZmOrz_gZFT20SulxsIlm8wP0VCdi3TjijdgJYNiPVGjG1spJ1W5lHU2QhfbS5k9hStPLLZyO2HfO6CZ8rxBT3ldyPy7JX0C_nYJCDUyFj7smKnOc1UdAASSBDbrEmnKV1wiBCLYYkC6p_iOg04LhC10N5ldhq2bhd3ZAhMwN9tfeubmBF6pO35uuS5bHlyTO9Oyn13baxHhLyXEfwbGtRZGSdXO3rxrUSPhXhDkcvHQuXUUFSVNGmaCmainvOEzhsa1Rdl2jru_mXxIFrPPHC897n_gg-IecxzYuBv4b09ztoclENE0x5MwvKapKPMSQpPjN8bY0GkKImq6PNc8R2o7jqUsLyJppS5wkt1h45N9EksMWDtz6mIZyT2RZQE-fsAOuvvSsg4miiUtyJx9MQh6E-Veo7O9sF47au--loMeBlvI2qrD15g45BT5Z_IIOYBW9frPlAyeLnUWMNgRF62V1Px8F6kzyaX9z7DX55T0mQv7Yn3aWQUUWQjLjpA_r0RNqUQI32JZx_X-ai3xZp5Cv7Dws0FE05RnmzQGv5UhExGWw41tjJ8GoVitAsnGdKJodNubl3VL_6YFYEXV0yb9Z-5BG2Zz_E8WryYkSx7gSS7_CxgMftdBVuYLt9KtjsT7S2mZ-ACsZm6jyixiYvlpYmDww2ezGqM6o3YVNNhysUxD8CmBpjVbTLsQ_2o2nfC4dNJNEMgskaTe6B2OSXQKGI0DKsXyewGFRbdOz6pmKQr5jGXgfxVJ0Aj-SX2wQgy7uzQpgwUUAmMY6a/p.jpeg?size=178x178&size_mode=1');

        INSERT INTO exercises (name, video_id)
        VALUES
         (
         'Band Rear Delt Fly',
         (select id from videos where name='Band Rear Delt Fly' LIMIT 1)
         ) 
        ON CONFLICT (name) 
        DO
         UPDATE
           SET video_id = (select id from videos where name='Band Rear Delt Fly' LIMIT 1);
        
INSERT INTO videos (name, male_video_uri, male_thumbnail_uri) VALUES ('Band Row', 'https://www.dropbox.com/sh/eu0jqrwe3a3djra/AACK2SqtuiVtZaxcksthK2dha/Male/Band%20Exercises/Band%20Row.mp4?raw=1', 'https://uc0c74f5b232541c2145a440389d.previews.dropboxusercontent.com/p/thumb/AAWxRwoAYMdwEwHBFTryWuj5rt27InkEKzkf2fOXl5mLhIvGEg7e6NVdntUK6ojgkOHWBnlpGBgT4aADVAdVlzo7WDIW3OPH7kcPeoP1tU2nIsYigx72SasEe-XBEZ9rQ3nBPYc0t_dsBMgtnnoIKYzFgIQu4s6qdlRpdh3-qCNwyiF5B1er1kigVQnt_KGhlojw5ToERv2vs4OFda4-DBS_qmbAvPxsr8Z5SiSnEzXCqMw161XKspessNhzoYu96NDLkECm30pUdMxYl63uaPXW9OTKJPooIcYYUFOpRZeoy6N_AQmYg_neTGc9msTMlzphwI5Wc5G8tETH5AAnsz_alr6wXzn_2IiN0DFbbesBVibA4pIF8WDEr-x_IV7BkBW0a1lyur8YWk0AuPWzSxqObbVzEscq2lec2SBdFpY_1TS2PEp66JcLP0t7ZKLtmlB2hyYoqubMmZWDEKy4sjEy-xtuDBVWOADhR2Q0CGbxkiTaYbUGrPn2GFWPvvH40Yq4XMR34FY1P7QrmueOcwMTUngnxpBvC6lEgtBEUIYAnb33YxLXu8yQMn0mxlSqaXmfmxF7FjvO140EmSgB9gx3KZKXglQXCjtEP1CbrYaEfSNoC13NAp9Uih3_zeWG7Les8UqcMQ6XNj_k-Hi3XBOlMO6LtKcQBOBO_NvkQx-z6QfcGjDu0fzxvbrBL5CkL_gsTWGsVDYxtJ6COjgle6EIjJ4KKXrXbz32EtQjLvINFfcwNAK-pIWlu-mo1kdIZitv1h498BuFauzYBLUgxKmR3KeJsJujVUzOkCX7wI6H5vf1EUmTMizdo8S_qmo6zIYpz35fmqxFGJK5KeJcXezg39XgsZoMO8x3oBsIPgLwCY4gJHJf00wHJrOZaVClWxeKPsnid9Yzu1kBpREPtthAtobIrR0jki00RnCTOKC8CmWxrBXSyBHNrfv3EiOm84n6DjBuoRL0C5K3ur8IzKoGQMMGNgEUAnXlL-Ce1XDd61Mb8WYaN6PLW6qhqQ4ogtkPEuN7dCiBoI0KjGKu2wRmVm06ug7wWSeJfkLeDmLaXl55UJzKLN0PviinhHN29GbkzvLJVbGRGYUJG4wP_BTMdTdiWqoEfo3DBL7NueiJAD76aL69lZ75ecjyQ_lce7158DtlNhsekARD7_D9_I7Ax_gToj9xkdQmZ-l-eaMzHuyaRApoanMgQIx2b2RIWM0NCS5yhFLybFL50iSUgp-TfUrmRL8IYF-FEjgheiozOvQ5pYD1hlpU1z9O9AyHXvUpNzVd8Segl1af4YvisSLs1mhHrQ7TgNOfOwKyS--buDVB_dR_NKTpelsXBDtZ_i8Zp9AOytXyFn7xv-TKQfQg/p.jpeg?size=178x178&size_mode=1');

        INSERT INTO exercises (name, video_id)
        VALUES
         (
         'Band Row',
         (select id from videos where name='Band Row' LIMIT 1)
         ) 
        ON CONFLICT (name) 
        DO
         UPDATE
           SET video_id = (select id from videos where name='Band Row' LIMIT 1);
        
INSERT INTO videos (name, male_video_uri, male_thumbnail_uri) VALUES ('Band Shrugs', 'https://www.dropbox.com/sh/eu0jqrwe3a3djra/AAAkXv5cTqlRUPzH3I3hEYUNa/Male/Band%20Exercises/Band%20Shrugs.mp4?raw=1', 'https://ucbba1bea454cb8bee584c9ad92d.previews.dropboxusercontent.com/p/thumb/AAX_8JzUHUR2Xd246x6jmQBA_DufcFtX8w84Qz39_KtGpcWkgyItMaNMeS4RwmHPmu9GCEDhm67xwj-RKyaAApDm92JpqANk-jCvC0qwQKgFdirN_6cgD5OhZXenCErk3JweZ7nvEtxK7kUhx2Zmy1VKA9rgZNKolCL2ScqTqC35XG7-WLn0JDGj9RJsCck7kFy94SL7Wl5J9uSKwwkor9DpnP1LHyBcXe0L3A8hUc-dI0Pjw2Rwvr2lBe8INCPK5TE3MXMiDB4wuzy44e8eSu9cUrAP5GIoMsKYNMQc47gSOUZrh6HpcLUO42IRj_peMDiHl0X_e3JvBslIP-txsorQcjJX3I-meqkr8HBUeGy0OKSH_I8WTcbZ9crbylOXSGNrJKkn-zU4vTcNhB9soQTnjQzBkQQFNNodqXjrSScVk5Up2P6tCSJAyjuUKE0Oed-zlhPbBprDvp6X1nH0MXABakfu6sH9kH5PGRUA7iOFIR4qCgq3al6Qzvuyz2p_aHTa7ylje1_1SkMAI7YGqU4grgz4cZ00askLzGQ1mTp8lLkJZh84Wa1IJamC3YfsCKyQTZuwGDg6j3plCU6B1BekTrYyXnnsPboRoVtk5UTGrDG16BFQ29ylJcR57XV0wKGCDFZDE-A1oMVssJAERG2xV0FrCHt4TqUy5DRNkculpE5mInzlhl6y7kNM7Q1RqpNzKoBJ2ihdzXldWNhnewtETRqv1_mbWnsTx0riqnyBOXxbyv_Fhl1EbhzrmwuVqjr31UYdxtmqUuovt0KpROJZSm1stxPTjIRx0PRxTSuYvNY_JOMXrlZv9U7P1ecM9AJmSCILZ_eEidjFY42oPx8yJAIzgO46pRpAhUCt02OhijgiXR4XqhmI45HPRxW8hGbWGuIigN9xCElMnI2wi1j2qktSYfEruqvgzylKSRmDiGxCtylHRwzGUxpgGYYJIEMa2XpT2-q3PP25YDI_Cru_PrVfk0tLgOy4uN8PdCKGwYAwmrQjq5eeYx3nIpqminNRUYznRze3nT__6QgBGkaa/p.jpeg?size=178x178&size_mode=1');

        INSERT INTO exercises (name, video_id)
        VALUES
         (
         'Band Shrugs',
         (select id from videos where name='Band Shrugs' LIMIT 1)
         ) 
        ON CONFLICT (name) 
        DO
         UPDATE
           SET video_id = (select id from videos where name='Band Shrugs' LIMIT 1);
        
INSERT INTO videos (name, male_video_uri, male_thumbnail_uri) VALUES ('Band Straight Arm Pull…ns', 'https://www.dropbox.com/sh/eu0jqrwe3a3djra/AAB_2HIDQjdp-aVu9sZip0Kna/Male/Band%20Exercises/Band%20Straight%20Arm%20Pulldowns.mp4?raw=1', 'https://uce0389a629b12e426072f533725.previews.dropboxusercontent.com/p/thumb/AAW_ob9arhEkm0dGf2H5Rb-IABiJT5P-gbs_OtqBHNALINtMUHKX-hFrM6s_VYcloDfStX7bUvFryW1TfTiSY_tyYPtR4RoAF27lNowLFFh5Gm3u8LBDf4hhYaY8CsatCf5ib4M-KxblE6_0gg11TJHnm7iblSLOAoXcfLT7Gt1T1WMJPFaTnTrrD4U8BAXsVV8lXdH0sS1nDBB05kow_1NXwRxDTNbvfw8d1gCazv-NL0TyKiZGNQjVi39KLt89o2xrR0mxm2kQiu2cHd3eZkwwPTpu0Gf4XLdOUZr3szF9MYl-8amkltAGlH5eEtvlT_v5euBdUrNkkG4EiiUHgC-jgL_Gd7-ydKNsYfriuneWo_t2as_8qLJur7IDr2lg6GPC21nsF1BCd_BaP0tTZqn8Ji9V2aufi9Mr8DVM_n9tsV7GvdHtWzslEKDBfM9PCTkZykAed7UmbYJsz8zbHBVK1Yx8RwKid7PhEOv1maNSvt7su6Vj-or5ieZcJRXBt_hsJODF-ymZiDQcbsJLyVG_mzbYacqp4e0Dt8nVYlhWYSvRR8l5ajDNHZXqirbB71-0LJKus0sO2e1FvpJZmqQXONGQWYOimE5BB4_d_S2JBZ_69q9ZuN3UGyq71Xsrv8ymXiRM2CiowADM1I2TjG7GNH_NP_XipQK_4eoTO5uBwzwwR9uDWkkb83Q5ybCzodSpiOYBc2uJn4VCHLFlPglEgOUIg5m--P_iHRLTWdTa95NyLbSlme4m-t2h5COAL7U_Gl_Aa7A5lHfNmziGlEh8iiGrIwbpGuvCG3wMWVAV3omfamw62iRfQrLOfwWSKAb5WLZHQuLTevnenSwdqDD_mG94pmVzLcLv66fAJ6OMn6WSS3QeZcNxb8a4ZYWaKRT-S6Cf4y24CCZtT-p3weVQhqUEigDwxalSa6IDf4Ijfccm241GQqArdCQ0_DxmSkJIMhYEnSXKK7dLX8urp6bRsB1spavuIUQrzT7O1bVE9tVxoOrmX9eK3cAw8P0-p2kSu1JX6ViPjcak313wFykmz3-AUHYwmnzwJJEMaOZHm6h2dp2ky2MiAO7XJy5kbRyaiQLx0S0bDOUidNqhm1lB/p.jpeg?size=178x178&size_mode=1');

        INSERT INTO exercises (name, video_id)
        VALUES
         (
         'Band Straight Arm Pull…ns',
         (select id from videos where name='Band Straight Arm Pull…ns' LIMIT 1)
         ) 
        ON CONFLICT (name) 
        DO
         UPDATE
           SET video_id = (select id from videos where name='Band Straight Arm Pull…ns' LIMIT 1);
        
INSERT INTO videos (name, male_video_uri, male_thumbnail_uri) VALUES ('Band Tricep Pressdown', 'https://www.dropbox.com/sh/eu0jqrwe3a3djra/AAAp5HYUJlfKJPfvdOT3KNA2a/Male/Band%20Exercises/Band%20Tricep%20Pressdown.mp4?raw=1', 'https://uc3f4efa2cf70372574d86cc6f95.previews.dropboxusercontent.com/p/thumb/AAVPvvSpTpqU9RVry4EeVzMk5RUDvsExPdWB_Z93U9eu2FN0gp4RSLsjJkvElWL3iPlxArD7eRIGSRwov5qyu_AxVPxyr_LC5B8WhoX_TEW6Qk48ZCDSV7WEXEAcidYytjj0nRQazJUIMzwEDK4AgXPgSp8j70onXppWreeEknk-q8UY7_s3BW-AqlcF5ydkln_WSCYMvlD2JJgWsnjtCEo_sTne8u56o6Ou9hErBO8OGrbACOsIgvficzT45AJJEjBGrhRi8Ccp_onWif36LJFVfNBM9pg_M5k9x_kY3cqpLHD0xYsBT5XM1CI8jvKSZ9XWJ9aq-u7aNDJNJTfJMXOsWtuafeqS6WcRyx4w_4LsZuyAzrdPTwYB1OUYIBfdTSDqmfEPMkCWPZEHN8Ylnp9AAgrUxWX-_QKsExk7koN49RQ4snLoY9m5GuS3jngjNA2o1yzBL_Q0aezV0tvHlHiMR9Lq16EjJAYGLiMs0k1KkvrpGdhZL6PrYY4LzHuqlCha5QvX9ykOVXLTx0ITE8rMrSWHZ0xc6MS8gBb1MJMcWuZN2JAnk9IY0xKzh1rl6QjQnSc3tm1pDOJJl5E99LkwbCC-saDUrc1zNLbIZyMkpPV_vPCKy1MZqTpcUmhBUpz5-vcWd9948rDG_qLdIQ47SVwKNWJRfknMXmbx5IZ45XB-WszYtTGiMX3Mq868zCMUVPT0wmUhAYtdOMWFVWFrUqM_14eiY6dfaHWNyAPntBIJ9l13L1LOu_tliMIv_q6WvjWQa1mRXX2FQ1iZ_Cv4vYFmOwE-v_0rS2eLNCMKbZt57uKXYVSRsHTvcYxbo4fWfOY7m4btkYpW1SM_Z0aChpMfBJjXPtIQVGx9PSkiXzdDnLuUWqLivecfLlCDxLGpNULJcLyW88VcCPDRdBh14btbrKRcCAuOX5ImV7UX4Pi_4efZs7if2WtfHaURJ7VDtjMVMt3oGJTIfSdTreZaG82L7VxAcn2q0h-nPwn8b16-Uv2cIlbzZ7c0JZZYzYze6KA5o_T_YpdW7h-HEObCk0dYWHLDsxFZ8PYngI7kxRSsGBwjoGYTtp6zds33T8v36TBqjMCBgwxpKBhuTlwL/p.jpeg?size=178x178&size_mode=1');

        INSERT INTO exercises (name, video_id)
        VALUES
         (
         'Band Tricep Pressdown',
         (select id from videos where name='Band Tricep Pressdown' LIMIT 1)
         ) 
        ON CONFLICT (name) 
        DO
         UPDATE
           SET video_id = (select id from videos where name='Band Tricep Pressdown' LIMIT 1);
        
INSERT INTO videos (name, male_video_uri, male_thumbnail_uri) VALUES ('Bodyweight Squat', 'https://www.dropbox.com/sh/eu0jqrwe3a3djra/AAB2SxVeV2Bc62PLXa525Da4a/Male/Band%20Exercises/Bodyweight%20Squat.mp4?raw=1', 'https://ucf55f84db0cfb8ea78d54db3eeb.previews.dropboxusercontent.com/p/thumb/AAVrttUXbJmGHpRP1KIaPYjVbC3QK8bFWnp1qb0_VrYllHaPER37a7sXMSa4iiAZvqAKNQUU2eYnzZ7VDFPnPbE2Bqy7rum5TDB9DDhYI2kiCnrgYYtPT8CEP4c68NoPZBFZDsAJ_bkASUG8wSQO1ZDJgQN_z-HlZD6M1qmPJB8uOIXtOFxGyfx2tZBu5ctD9nPCvq1LO5jLM7vCrZM06c2Pz1zOnlp3u77_0hBL72WIL0pdyW5PCo8cvBDiuFfxBEgu46UFVtPuRFKpyVtp_7oycMlvETHhp5TMcbGHe7zhKIS7Dntyx572xZaXyeZCpTL7KYG_BPYwd9YJNa3Ff3bs4GJx3t2aHkHNFEeuScHs0CuCCcvFDImGkzaVY483Omh0zn-JWYOEU9FJL6Id_9Y3pqWhEByib8wocXUQG5vGpOZMJxK9wi4B541XhMq4sHwUcrKzN5DG8DMd-W4ikSg3_eetMr1Jqguv1eyfFsxWxgSQrrUF-ExnUMu-WaUz3LHVhUWuJiNVB8PDdob0KImYuuwxdGQdiouLxjQ79tMmQCoKNRHEA2UEXn5VoPzHgKdtboNfwsPt7JjBoc01ACDyZNR_SIl86lfT9BZK4-atEE2NT7jHF0rAHEC_EkX8ZTje61_tad_BZhYNOdP8-fqVbxQjV9YdybEKSn-pXrBX3O6HGGNHDVHMFYeECq8cG_wXjVZHgYytTv1F_4lR6GjN-NIS5HyH5q-3KXoeY4GOvP1TutBw5jK-x2K0PNbn0mBIxRSdKfesOjlVKlnhlOWQpFLBb3kSaEvNkZJUkJDhbBm-R82vmnBWi-srSSL3jRd63Jj1bw7Dtcr7zURNRWaewYWZV9sHB9unrb7VHCkhoetwCuHXYAA7kkpCYLMHaq1NpR7-RhK1Bt6ViVlG8hUbd2a4qO_g90_FLwU8voo-EXhNv5WPyheunw-xeQ8D6MAGLZiuxt115rAvSUorx849hYawPBIxZvegtELI_Yt67Q/p.jpeg?size=178x178&size_mode=1');

        INSERT INTO exercises (name, video_id)
        VALUES
         (
         'Bodyweight Squat',
         (select id from videos where name='Bodyweight Squat' LIMIT 1)
         ) 
        ON CONFLICT (name) 
        DO
         UPDATE
           SET video_id = (select id from videos where name='Bodyweight Squat' LIMIT 1);
        
INSERT INTO videos (name, male_video_uri, male_thumbnail_uri) VALUES ('Cable Chest Press', 'https://www.dropbox.com/sh/eu0jqrwe3a3djra/AAAdyI4TwrIUv8TvCr_88rIEa/Male/Cable%20Exercises/Cable%20Chest%20Press.mp4?raw=1', 'https://ucb292e1cbfcc20bac1d12b7dc8e.previews.dropboxusercontent.com/p/thumb/AAVidzv4YcwhohQMMaRw0pZr9oUvfmZYdqcf7jKXYV1AXD5X8V0ReePTomEnUgKQRw5Kj-sUbqF23-LGyEDk72X35QLjWkV5viR7fDDkkN5nS2WJ64pAcewuSzF_gyQjWO-Gax4btb7HqUnRwxk8nivDBPA4cBmlrip3vJC-Om6f5_tcgURcRzywuE3WOtKWxFJXxxPZnxOh7nbO4R7KcyVCDDblbIsMWpl80ZUQl8jAl6qVX5P83kmH4moQhY9IRAHD7TUMrQ9JdcHBFcbmxHPZwSMtrIKmvBJUFP9vxNFlDnT3wg4hXNZnd3GNnFm4kKc2VbmN2yh_w43iHuENT1hVL4fYyegKWMv5kMGocmqe6szfaDXdOZeDcFQ-HwlqPO0vUVQYnLAfvs_h-JH4rmchP0FlZS42HehH0nRwm8tr4RJQiYWSD9-HP9liMgfsPem77nPBBp1SjIfhMdfwuySWiO6IaXxyBuPagZwsaHbRPJun_a0LlLakeBeCMf0fuZycWmR3knU8NN7KCEOpZgoa1crG_pq5oz9i3lkWt5KtK5RRdqpF056Bq7d-wy6WomOZvnws8LEFqZygGAoWf8NBWx7sMiByy8Z7UwvKGeg013RC2yG_I67-YL071oQdjexswor9BcK4Y7BMrjdMoejUEt6vn_ckZa0QWWJYOLrWu3P2Bg3o9FTDBbgEGx4-bA--Okrirv7OAGPLGUXj1U-4LqI9CM2rD5SxNcvH20PaaOdXRB8hmR9C2R8HzaJD1jjH9U73wsPjzd8mbdFM1zrWwtUEwVNQD7BCkyH4WEWklL3h81tbRnEKXill_0IBP-ZMFHzjVmVmZEToba40swjH9EPgT5RNlC1zI3CawuyLuN7OTyU-ZGkMp4N865XxnQYVqgxmIlwILLMyMo3AgHMvoFREcLooJUzkiYAPCZuqrghFWHEebmEyenH_MLyFqqBSPXVUlq5aDVOJIcZj_plk0CzsMidXV560cazIVFZ3IcqJlCGxpGd7S3m_07VSQLszaS0fATsmIe3u4grrgwYTSqXcBvbvi5OdiqsjFXfw0Q3Aq27vIQFhFkPDCj87aTWdjRN0wSSyVxDGlpws7Bp91Xzx3FVZ3n1K1Mx-uZrQczoviWumgJr3casr_VkfLo3166_So0pCVOro_ab3gD3OlaQnN8gWmLjDpXXmzYgUnZ_lgVS3fcf5mVCLvjxXQIwyET3um58gjGymgwjLvZU0sScUNer0pZMDyHxReykXcpKJaRuhhZPg9BvMUXPR1d7FC3Aryhp66U4Y80VWcUQh/p.jpeg?size=178x178&size_mode=1');

        INSERT INTO exercises (name, video_id)
        VALUES
         (
         'Cable Chest Press',
         (select id from videos where name='Cable Chest Press' LIMIT 1)
         ) 
        ON CONFLICT (name) 
        DO
         UPDATE
           SET video_id = (select id from videos where name='Cable Chest Press' LIMIT 1);
        
INSERT INTO videos (name, male_video_uri, male_thumbnail_uri) VALUES ('Cable Cross Overs', 'https://www.dropbox.com/sh/eu0jqrwe3a3djra/AAAQDb0EuW7SWOlzc5lMcXnha/Male/Cable%20Exercises/Cable%20Cross%20Overs.mp4?raw=1', 'https://uccb8853893275c21ca5a6c50130.previews.dropboxusercontent.com/p/thumb/AAVf5PhAjIRYvoodg3big7Y4YOidcPzArMf414iMwg1dzNE65iASvuJT01hR2qfesLZukcRlt5EQ144rT_a2AdHV573mIYLjxjwTfyRaT6Cj6fCHncnzH_aqLwGeFhCALYHujp7zpeeWoghOIiOosgwOSH6QlwyoyVdAdrfnPexZboGkl5mVrZwtYe37Mlp4zfOse6E0dO4uUwPs_jaWEVp1QpqS9AzxwpnhaZqWkCGwagYKqMjqRFwVA3LgeEUlhgfU4bm5jAM_i1XnsMeRLb0a9HUfVua1mwez-6mlM2hQDSyyiftz5Y8YdFCEK0ajcBjPjrX7iYfLyH1uko85H1-zWJlpFqHgb42yzP_7eAOUWf3o5mspSIPRk0eWaMhRYsZp4PtHwjElBWWkWUhv5JfvS3Vi4kSdMXgvI3kWNCVelEZ0_MSMJqyrHcU8OH8LDq16pdLwnKm3LR9jUpLD6ZNfIVdjDn7BY4d6gBVgg17F_0SXflw5jYZqy9ZMdRLoVSrOTEkZMWCGsRRfov-2ul1WlHQNIG9yRh5GSM7rbFPGLKj88kJb7sNAvqihROidLWPbTyDgm9oAoJwpS75oaM-9cXBlpkblabUqXpu-6VpusYqvtl2nQVV8iCCioGfPXcOVZqkQ-ZLsNCU2LYAqDocthGJxK88JSnTTHDZL4VFGP6BsiMGTBRDQHUBKjz6NDJd4EKt1Sp6YGaDuKpB51s96-3NLZjRGsXkSRNi_dYjz76eRppWbYGig354UbSBbctc0iLYHXigtCGni2LmI7K5VDKXI_Ns5IXqTZWIN7FtCcYpkSaxcuBAuD-Z0TjPe03MkHYey6-nEe8MnjBftEm8hxTQD5jOaRBNB1w5KrguV8HhEteGMViO49HypgYnz0jfSyYIbJfrV13JQvAgmK7yPiU8imXZKn_gFZz6oTkmVUQ/p.jpeg?size=178x178&size_mode=1');

        INSERT INTO exercises (name, video_id)
        VALUES
         (
         'Cable Cross Overs',
         (select id from videos where name='Cable Cross Overs' LIMIT 1)
         ) 
        ON CONFLICT (name) 
        DO
         UPDATE
           SET video_id = (select id from videos where name='Cable Cross Overs' LIMIT 1);
        
INSERT INTO videos (name, male_video_uri, male_thumbnail_uri) VALUES ('Cable Pulldown', 'https://www.dropbox.com/sh/eu0jqrwe3a3djra/AABdoeJtEWxUoV-GOAAm8utRa/Male/Cable%20Exercises/Cable%20Pulldown.mp4?raw=1', 'https://uc128a4e500cf0809c34fa0eef9f.previews.dropboxusercontent.com/p/thumb/AAXMpEEr5A4OL3tPOFZ0Neoopm2qD5ghCcCergQ9W6s1W3Q_jYldpp6S-YQCsko8xA0lKw5Ix9Su7Ip7hL8HoFmIUa0tsz2hxBRNPZXzLWa_2sg9fqpNqfcNCTfvfmOgVltkSWDv1w09Pj8zmz6iOYAWoTw8syHtnPkSfulK2WEAnhxx7xm8g2dam_STvqgyXXhP7tYpNg5ef_qYLl4YuaDfO2uc5U357YpyqJbSqMrz0P9BVplKtzzWKRgq1IHA2nKvoALc5dFsx6a-jOMWwVV8Zwuzbf3xtMjxXDRhnzMWUjHS8-1Jt3wIXzavVjCNhksOpFgIjWpvp7DlJKGpKH2SNu-8kkahu8q2UoOiXz4AGHH9bKIAm0Kkos3sqTrrWqGBA2UALDUhNfIcSfhN5f_wCch2POK5tlHIMctqCQ7fg8-X-fVmqxR-eMc2jbFZV0lB0ELXGcDZ02zbc21S77m8NNRJ0eFGO-NK5VB9F5626puQ8bVCDv8XKf_zdJxPYpNZ5vrKLAEWmQ2Q7UZsaoyhjezEhG1o0N7TgBccVYfeuD9EoG-7-BeaiGj5T_91zm_aVM6PgcAqvwlMRgiWM45GvRNB4zxGa6Qp_nuDjpFnRz7Ka2a4fW5V8eQTpT31hocluDchPDPXpROT6_dVRPAeNAAV1AMmHQPnO58Ff08ijJGAnMZJPC-e2bhTaFj-PAqytjNkZtr4hNcqfyS-eaBHygE1IJZbYRPGEJ8myj14REISlVjRg1UM0PZT1JbMj8yvyLvt-422_QuSftc0aZPP7b-pdmJQOree5sPyFEmtK2zDAWfyHyjcjb_xGWPAmIqRgH5vXH-ccEcSPdCMbrBuoUsnLldzRq7osjDNtCi_NPgAKeQuudRG5WenJ4vL90s6xOnS_4EnDPyU0sKq_fq7DlYxJx1wT9Xxx3kpT07eKk9PQvJBUJHIdScPqBmxkIA-U1Hd_egJL-fpd2kJMBcy4kX-M2F9HMmh-k54h0G5Ng/p.jpeg?size=178x178&size_mode=1');

        INSERT INTO exercises (name, video_id)
        VALUES
         (
         'Cable Pulldown',
         (select id from videos where name='Cable Pulldown' LIMIT 1)
         ) 
        ON CONFLICT (name) 
        DO
         UPDATE
           SET video_id = (select id from videos where name='Cable Pulldown' LIMIT 1);
        
INSERT INTO videos (name, male_video_uri, male_thumbnail_uri) VALUES ('Cable Rear Delt Fly', 'https://www.dropbox.com/sh/eu0jqrwe3a3djra/AAB4RNzQT7ooSKwJK9p3XI8Qa/Male/Cable%20Exercises/Cable%20Rear%20Delt%20Fly.mp4?raw=1', 'https://uc844128c113be573e9ca54008ac.previews.dropboxusercontent.com/p/thumb/AAUcdMtZ3Pgmu25071QOULqpoW7GtRvHZQgLJXcxfVwrp4zlXhy5iHqdHeeAd-8sKx5Quq3LGMIS5ABBz8heUSY4m_tLjv9uBMzc3xpC26nD7pgMdt3SEXnmltEnuOP10f_j0OdKuye9UBFfuBHT_L5oF0Hqa3Vw5Oz6HewjlhvuinSnpm2RTxy1lYh0m1bItuvGzogCYMr9RH6bbuBm3KuR9AUjpayApn-ANKjDUeEtGc4uJYalb4R9jrm55ZuXun4wrD5rbuCpwHOOrQuKHgOpLBl-d0XvRMVRAWfZ2s3qnzY7h-Qh7wYKdU5c8R3IFFo06IsW5mqmKlN6cBe8gJB4QMvCDruFkF1683VTa-j4mZ6quRpTEm7Qm8ooCnwQDjG5_-qePnNDdInmkA5Q4Ox9281cmclsvUlct0UVAHyixjITGsUMNtplnuusQ-d3v6hKk8xbnpCBpSRcOw3JifnWqKdVh95-dTtNDx5m8tGMFnJpMcGg8bzn-M5YrzU45_G-dmnWXg-tFURc4qzuw5vD619Ie60fSioBnSCZkWciPW0Z2snImab6arIRCkiUtnQ4dQo-Ues8Zc9Ixm513rPXGIZH02YRxqTiPoXRiRtS3MwVCkH-u055IrUjFxXVy88mmiHuBLV5S9pkiNLa0JcXpHgxpjkB-LTcVQUa67_OVAuKGv5mU78d2f8vdLvjp5VrkGd80h55BDTKQQXB8Cd4-USJLwUrK7BsO3_stXycgm8RmWNkJJ9x7UBKBYcXmaTAjlP5EZsc9zbT8XLete4zgxtmZoSTOWkFkl4ZZEbuH7oj64Ttj1F1PJVfGIcbRvxQP5fmutGrB0dNoLBqOtPQkRJwgOpv4BTRjcbtYkJ1xO5a4g1fNSlTQ887ZFhNcyJtmghalHlvk_LSKGKAU_zUWBo5gfCynr9BPdj7eCWye-W86g8tsClyzdkvruCeJcJvsFBWVxLjQAvgaLqinKiircCdyyTxJVeR1d9pugCjkT7jMC72caPybynzB1HufFWp768oyP-oey3eTqQAkG0KGHotFA7SfUD-8NXBxs85f0TbOpSCJPOLnFERyBm7jTFNKu-bYpGKSxOFqzuOgYCr/p.jpeg?size=178x178&size_mode=1');

        INSERT INTO exercises (name, video_id)
        VALUES
         (
         'Cable Rear Delt Fly',
         (select id from videos where name='Cable Rear Delt Fly' LIMIT 1)
         ) 
        ON CONFLICT (name) 
        DO
         UPDATE
           SET video_id = (select id from videos where name='Cable Rear Delt Fly' LIMIT 1);
        
INSERT INTO videos (name, male_video_uri, male_thumbnail_uri) VALUES ('Hammer Cable Curl', 'https://www.dropbox.com/sh/eu0jqrwe3a3djra/AACahi02qobu9BMzHmJWvlbma/Male/Cable%20Exercises/Hammer%20Cable%20Curl.mp4?raw=1', 'https://uc2c78a736f73ecfe74e2479f57e.previews.dropboxusercontent.com/p/thumb/AAXHOo8uUKRhIxIMrVQMP0EkmqEFgt05vWRWiP2XS6LC6OBOB5PQuQ7vkehDJJ4jGXBjl_KexZd_EPR3BpkR1Ks96mlg8HvEFM3ZaCOxoK2cHqzHccQw9dAUu8AfTAzWAWFb_HZAMLFJY_Ph2OwP6oXtQPtJ_eN9YL0PY1_mkOs01WFeMfFJTzMYrhkN6tyV7_Da1ck01hWBiudz8_ElcRusELuqxUwXw6FZJhEip7a_c6RLqQopFMA-Qom_VRXOgkGy6RrxCylCgBuprO2f0ZNYBRDGNWt5zMrFh3LVCIy9G_X3KrG-KPnLjZ6Awwr-WAqv_n5te3b8AwPDkIgJs3thcMywp6ljXQrwvKPJfTrpskN5JEbIuwadlHaQ4rb_0p1lyI48QSGJfvtM_7n5Z4Zs8IRcXDLs6_BMQDqsUbNHSSaBY1lbkaNWA50f3GdzZjWRcbcICuoq58PNRS4tS0W7XrE9RjqPuDmKAnDe1ZO52kdRDvICFEYxSjxqSh6ZsdlaB2yNIEJcyv_96YePc5i6tS4yVxT4SHNory-5j_Mj9OKWB9DPo2YVDpMU0RmJZgKXsa7-Sho_Hn0JjJA7JCN-qfefJoHeRXm49aExn0vhZhFPtFBN86sqkskWoU_lM9nQup3rjoHGUEeHYswCIUo4NRhZFa5J66iuInn2Yb1mNaFMe5vw5lc7vEMx3-tRrQGNMZykjlKQ14CQH50z8X5R0D8f3ZkfBrpxx7U6Fj4FjDGvvT2IaUaX3QcPrNYtUtMfAlCWfWSo6I8Ct33x_S_mbJYQrStvyhK7nHUktsvridvVTivoHX77I6l9wq3Y0-bGG8-CWZMrsPk-cemoVRWAGpzBK4yitqZsN9Xwez47TgVjPI4gd9KvaxxFGD8bkcnca15lsvpfUHZpx5_Sms3DA58Nlt6XPEMRGWTpp9parbzYqv4MnBwiKQdMt--1kb5g8WOdz6iGAQzZavYiBuPNfMkmW2TkPLwwGzkAVGi5_A/p.jpeg?size=178x178&size_mode=1');

        INSERT INTO exercises (name, video_id)
        VALUES
         (
         'Hammer Cable Curl',
         (select id from videos where name='Hammer Cable Curl' LIMIT 1)
         ) 
        ON CONFLICT (name) 
        DO
         UPDATE
           SET video_id = (select id from videos where name='Hammer Cable Curl' LIMIT 1);
        
INSERT INTO videos (name, male_video_uri, male_thumbnail_uri) VALUES ('Rope Tricep Pressdowns', 'https://www.dropbox.com/sh/eu0jqrwe3a3djra/AAAnL6fX8IwGJzZQNulqkukea/Male/Cable%20Exercises/Rope%20Tricep%20Pressdowns.mp4?raw=1', 'https://uc79167d36498313161eb3cb74b9.previews.dropboxusercontent.com/p/thumb/AAWw4q-tkxF5vz_5a1T_GewT8CNt4yBb9bzqYlo4P-WmAMOe2_ia8P7LfffIQ7daM-aLmIURLLUkhJ5YmEmP603HD8DtJcyUm9SBkBdTUlE9oLXfxs9fTWYZPqvZ_jWz6Tqe2fQHgDSF-HWZaDzsCd1QrEG-bUeXCq0b9DwUcUWax-lrzhCoQuIrzpLd-lJRJ2uaa39iZKfxsjQjls1AaPQ19rxr0apTMC1JZNTBXX55o8Ql-cbY5nmkK32MWwULc5XBzFLYoUQp1SgrjY4Im39EHrXeLDX3AUiUqXl_Of0e-iEbmJlN6MeWB6hg8Rlsf9661Vz3zJvt9Tq5RTSig3uELmnrUgLx5IrZrrRea24myfWq4atxbbHEFXYYjM_j1mFZXTyeM83dSiHrZEI9LMvuKS3R-XgWsFxSIWuSO2zM5KsXGn7N16z9PcfqQ2chkDnKSlQED9w6kflCDZyF13ION4TnGm7wi1IF8VDB52WYTTIFkanVGJrb4rRnMMnGSQ6TsNvLljwjjZfM4O9-QVjFh-ZfNe63i3LAYbp5lHA1AtAStJPQ4ktU-NXnGHelMRb2EP0R2wd-NQpPEVLPsbabtOAcoeMB-xphuL_UhRcZHEyaBHh78cN0ABQ1AU6saASnw9ey5LtpsugpEUP0XLGIY-ZnXpmujW5IZpu-AsxKgt7bXv87JfsRK4Uz5Zq88UHXrzeMgH0oMdCFzOCZBwIT7I68cnsyyyPAXNr-8DV3sUQrMWGGjMGrXtCuvi-BWNMISlIVXlm11DsUqzXXcDxkbTCEe8VnvWTmB6sgEY28szBTiiMmMBm1o0RT5b6ScUNdjruyDOH--EprKGuUvKtRGm2rxhYaNmhwJ0eWkRoOse-MRn3g6-FG3iBttnymMYURe16yV1sMUbDPDmxLGrg1d3aoROslNHwwm_Wm8nXNzfaUnOEKMt85qbp-WgAhgHMGr2hA3isixYOKKcginMRR2pc0kVzB6GY-_49x04ZwiN73Sw9rvzmfgoxfpSatZ-iDuYG14DmwCXV__6zeYMk0mRHVyAIGTE5KkGrNZDGqIKi5MO-lev4AIBkCVcrFr05YKlsPJLAe0WIQTX9ttAJj/p.jpeg?size=178x178&size_mode=1');

        INSERT INTO exercises (name, video_id)
        VALUES
         (
         'Rope Tricep Pressdowns',
         (select id from videos where name='Rope Tricep Pressdowns' LIMIT 1)
         ) 
        ON CONFLICT (name) 
        DO
         UPDATE
           SET video_id = (select id from videos where name='Rope Tricep Pressdowns' LIMIT 1);
        
INSERT INTO videos (name, male_video_uri, male_thumbnail_uri) VALUES ('Standing Cable Row', 'https://www.dropbox.com/sh/eu0jqrwe3a3djra/AAAfcAel-hQJNrlCnbLtlCwNa/Male/Cable%20Exercises/Standing%20Cable%20Row.mp4?raw=1', 'https://ucf0f0a34eaced10490fbfd08edd.previews.dropboxusercontent.com/p/thumb/AAU4XGwA00PBh9h0hy6tEes-3P18_-z_F-UVG3IqbwU5MTUjub1QKUIFdrOQ18zHSSDstz87xgxZyn0CGfTKc-RdziNxZMganaCpAMEVDg6VVk7Ef6IWdH7TK6BRdxYbaUmFUJwREkvKF2APcgouHTij-1yu04g9ZLtOqQLbSfZiIXffIai91tTFXAlVwxyhDptobLslwALF_8J4J_T1mPpTcBiuS_CiMeMBXFHMm18zbQC97T2vsGd9gK9o4u2dZGM1Q_OUNhlmwVWwce14ZBopuOFUTBRgzbJDO335HCrMr14W-xg7X0Sg25oLdElWkheWOl-dtoTDVV0DFG0YkhwRxhrAUYolsy3032VQOCktX421-GzgY_NgxztXCeJ6FbtbbRD6vCPZfePbTA6sz3ZbSof_wEG87e5nf0tUdpv2hEjvQqmEj0JH_6KvbxL7TpG8n-Fk0ZivHWE-SA4jfpa5sKIrfyjmk2_vyku2H-7GAxxWBCqXxU6_6_yikhDjeovd9JBaHYhesl7G11IMVaeQ7gpq-Eo5ynFCyh0kOWZXgXDKW_k9A6Nn5Nthk1-S_B89QGmPgq83E5BM0stb08fbk8VeYEorcQTNZ8TQJPPgLH4xWrhkNSmX-cU_Z7x2zNt275sBorsBHCVVfcZIJsrQx77iHv3Yn_QzXA404Jefvcykp-epqbW9_6uCyn3SuLAUXbOpNZNId-5QePKj3Fel7IWdFAyzEuiVCfQhd6GvOYSa3nlH_BXHIRDaGKTqgsXuCxxwv3WjPh-_uMze01l9m4aAE5drmgMCFOgQItz2slyTs9j91YhJ3tOD-t-VooX7CM4OiuPk8rSxIsQqUZdwwU7OTgMGAWah03hNf2n-jdR1iyvGO3f3q2LPCRi623byw-4X_NTRu2_d7lemBYSNRHvdX7MsDlX_1nlWqcBpZ7xSWYqpbaq2fPXaii5s-NZ9_Gb1hJysOI783n0mu59fGOVHQl4FG7UZmJo7DkIaol0ufDmA6bQGgzYX3n92wxnN0O_MTh2F4IfDRDp91j5g/p.jpeg?size=178x178&size_mode=1');

        INSERT INTO exercises (name, video_id)
        VALUES
         (
         'Standing Cable Row',
         (select id from videos where name='Standing Cable Row' LIMIT 1)
         ) 
        ON CONFLICT (name) 
        DO
         UPDATE
           SET video_id = (select id from videos where name='Standing Cable Row' LIMIT 1);
        
INSERT INTO videos (name, male_video_uri, male_thumbnail_uri) VALUES ('Tricep Press-Down', 'https://www.dropbox.com/sh/eu0jqrwe3a3djra/AAD0XHDgfuJ1v5OOi2q_bM7Za/Male/Cable%20Exercises/Tricep%20Press-Down.mp4?raw=1', 'https://uc76d4d176e78fb2b7cf9aa53d63.previews.dropboxusercontent.com/p/thumb/AAVk3eYVUCf-Rl0nmCAkWBxKN2-PNqlF-1fFS1J2ULQdXqzl7X1PJMhIFm81Dobu1Mcwx0PAVVahMYuPN6KGW_tioGRVIszg2rlyVlnF98CzGdRoNcHEvLGjYIh0t6B9TYUzY10AQyPhuO7sr1FM2p1q3NU8HEpdgbKOGX77ESMyfIfWui8RMI-H1fuhAxGP3JvzCDEFDp2r4CvdACNUEqTT3blFnTEVZU6kiH2KkzSW3SlOjaG0MfV_UI_TtEgpgl42SwPwoGRjokgOzOX-38d9jTjqbssEaJYCyUnMiFlK5i0PbuYrLui5OCwBTUORUKRa4T8J_cwXR_wMRwbVsmvTkQFhv2HoBN-CPATCy2w8JViwU3GX3IhRNiYOQTKqJeCL5Ve_3HeD560ojxyCaXvKzo9FvYSyrRGGLY6an_sa35vmQpDlGYCtf9oe5eDGhRmKRIk_qBAyE5_JmLP7n7E4jeGWBjX18a2q46WkzbZaGjaNv5TBjbrS-1b_r6g0QgpM3TMqjcZVZkmnn-lwN7v0lSl-qbw1neaWn_TRTbY7YPF9CiF4fP5ze5MZWshrwWv7ARlinCs_FZQgG7LqqeF-8JtOcr7WpLTxdHKHzYnxaBod4--WRTynsIvDd2dPZjWT7SpvFqoMICH10JgEt2pnaLDs-_ZPpgf64uADjVyy-x-VYeGAbJMm0kOZguKjGcVvO7GesWGnoM9_LY2qZa7M1eqvOjNdOUOCClAABwsNa66YMOAbhPIvg_5jtYmoD0JPnLnhQqUxA-LF4-nY1aVFle2xfqjB2uXMOTbuy5NEG43zs5Ed35ShkMPKxopxePat8oH6GZTKLW3oKExbCjEi4Axbf5sWQqhIXo6rp3jmpr3IEXI7vusAJLhT4tEaAsDNTXx1UX8pzw_Q6tFxp1YdLKS9El8U7wLsMaAoA60GqQsUJELJEho8wYMQVmi3ldhpGxNRjeVa3egzH-VdMANahyfZOanNn3UmiyYlnnpJCqZcqPokL0nfp-46Gvhq335L8ki30RVctEfgs-iW8cBVF7M3D9T5o8chsxJXY59Nj4uzEu-1ZOC04zC5S3o_g4ALFQBN77gZy1RUvQ31pju1y-sgNkqMdswmRhTrlwfKhQjS76ckfnJ1KclOqQcEyU0SakSYdlxr1G7Kyv85qnuu/p.jpeg?size=178x178&size_mode=1');

        INSERT INTO exercises (name, video_id)
        VALUES
         (
         'Tricep Press-Down',
         (select id from videos where name='Tricep Press-Down' LIMIT 1)
         ) 
        ON CONFLICT (name) 
        DO
         UPDATE
           SET video_id = (select id from videos where name='Tricep Press-Down' LIMIT 1);
        
INSERT INTO videos (name, male_video_uri, male_thumbnail_uri) VALUES ('Arnold Press Updated', 'https://www.dropbox.com/sh/eu0jqrwe3a3djra/AADDB7riGKlLh2oi6RSEHISDa/Male/Dumbbell%20Exercises/Arnold%20Press%20Updated.mp4?raw=1', 'https://ucedcc1ec3ae5c0bb50f67a2409e.previews.dropboxusercontent.com/p/thumb/AAWKn-NkYVOLz3SMkI8Cnba8y3dtrIYGzTbb0AytOz0ARWLN_MNxATn81qXarnl4AfIONTrlAaM0xq6mrzVgeS29Ix6Maba81aHu3ojqIMFZo1-_yIqrv6Y6DMuAwUzzlaxTyPEVwCvQsjX_WySbg0ojZOjGcqks_iozC32hlIYbNGy7mDN_75keLumMgIASSJW03rsiLjW6yA8zsOkAlShl8tbTfm2oRfhBDvuvLg8ZQtWE5qx7yponXWiYWFNzLb9OCv3k9hwK6vgFXEx-sbZUJnhsSMtsAlrLVIyMJYYl-u67_i1w8nMNSjVoHmrwF8vwOhrbs6CE1fJBTq4PnHroQwpB8f8TGLxJqPUSgFtS88oD-jeV1f1aTaqKPX2YEroDP_gf8RHRSwSKmGW6rNaHvJ8V5I-i6QtvNYmz5tQomhRjcUrI9R7IrSYDgRHUYoR2Miriq2EFzvi_LS-CNZiKSdLzoCbYnPbxssDCf7PZaYGISsPjf1sPHN9Loaa19S_Pn4ufpAmkAhSV5OnwBGuaVTzqibXndu3kHCxQTyMxw2YX3ElHgRg8-C2VEupdELUnKeRPHc85nswTLTvK-bXDA-ZbYlg3rizpyaImOedCNTBRXbdtlPB4UedLU7rgTTx6etW5yydIpmQOykgCrlWGr7s4AMWkUUcI31NEm1mexdQA9B3w9baQzl-OVSq4wL8xTtCpECIiazWfF1sSeoCaEeBlSxIUtsDH4vgq-EttmldMU2j2FtWLBA0uOzyK_Ss8N9mE6yOCWv32PdqLxPtmS4zeYlH2n5Kb6_a5R1DTSGChwovB54NNeFFssQs3WcHoHo6OUJEhaHUXdjDRvsQzDjduy1gMPkJljyZes_AKkFxPRdzJ_ht1cC324qwfdn6MzbrChCeqk_zkEpgguV-iGyv2dIDdS3JnwzsJ2cLvQhz2Wy41VtnqEHF4s7Dpi5Vyh3D5jsAHIiH67ufnUBqAqivISaro75eG9mkyMJetpqhEnx8pk2NT1ZLIg6p-ccQx5cX8RgkBzs1cnKe8A48C6Wwz39FSaeopDWGbJw-_qST--yZNlmdZdtmS6A46d-iKEVmpePhG1g0eE357a5vrNmtMPPD3Ao59dlUABpskGYqFGHJtTOruJW0UpjoyfuPfwq1sgIJ3u2oAuE_RqQqw/p.jpeg?size=178x178&size_mode=1');

        INSERT INTO exercises (name, video_id)
        VALUES
         (
         'Arnold Press Updated',
         (select id from videos where name='Arnold Press Updated' LIMIT 1)
         ) 
        ON CONFLICT (name) 
        DO
         UPDATE
           SET video_id = (select id from videos where name='Arnold Press Updated' LIMIT 1);
        
INSERT INTO videos (name, male_video_uri, male_thumbnail_uri) VALUES ('Dumbbell Overhead Tri…n', 'https://www.dropbox.com/sh/eu0jqrwe3a3djra/AAB8gACh6TPv6rCyYkmK3U-Ka/Male/Dumbbell%20Exercises/Dumbbell%20Overhead%20Tricep%20Extention.mp4?raw=1', 'https://ucfe0f26f963ff1d0e924a0ba3ed.previews.dropboxusercontent.com/p/thumb/AAXmEheBdo-uNJW4g50kVt-GppvNpUNqkvMy_Y3z9SDYKG8RvLUATEx-r11oLaWev1X7oR02272qpkKWWmX1HuO5vT9ri-WLyYWAfRnr5ENLpWNqYyE-J0u2d9w6as_eWvrkPJ-OjHM6gThV6XZFA4fxfWRyYQi7amylBmfiYksN0Sxb8acmO0WXLys8RmRhaIbtLMhx1WNkLx9l5NssZ47StKc-YnnhCXenOz-_ag-qDzv-B_GjK1vdMyLAGtimdWyg1fNlfS9vktA_dIIYJ5z2ulZKiJ4iOH3qCDyA2ObNwLrGxxvLo9klOSX7zovUhVd312Jn1BW1ZdTipshsiTBLlq8QgkG7qFdJwAt_E9RAfhE2WuJsIPTPCiACKz4dLlLtzywauVtz4BdGaRw-JzQaWRrtCUADd0HQ6ybKy8MMAGUIqsBrgxT-VCLmL9qgd01LNmfMSFKIGfZGrsKnrIpCVdmFw3g22w946RBACvWLmqoh0H9C89xHH684NOD-9AaM9mKFO-j1b8Pa7ixz7EPNCuYI6CitLtyNbJ3GLZIvQmb10RhXZnT85YNi308_vmcFpkYfOwB66ANEU020Dpsq26i7-9Zcs31XLyJrGeofCxYGOj0Ej6b-akYMRCw28WQbI1BJmf5N_kdo1EP8IFGXW1Pe2IlWUpy6skw16msHLC99tNjPGYfSaw38RbWBarQZuRsNv2JLb1pRaR6y-aDQXbhLl8hwj3p7oFrNn7PotB2_uKnozof_7efeoIi6-LovPEoZjyHzx5MWFAy1BCMitxz6LaCrGkMzP9hSIac6zHw8m95qrXSu9jKlEvYs7Ahu0An_NrG5Oe7OFTzNUirxFGcYVKltYGNy9qLmn6NhEyODKNVy7ZtZNwoXjRWQYqcC0lqzPNj2zjUC4A5s8OHbgSnJcOHfQgTRmDWfENnITnB9zZajKPBu7RnxOJS8xKzNfuj7jAjmP4JnYUNMB6ElPFGgLoUMQF0PdUk8JGWnsRo0XFHBzQb1iFwejg-IuaBjGxPEsg8dzyEB21qGo14VWR8uR820foB1uUm3greYAd1JkYd4xw8ryK8EDvSUoFQ7dGABp4c_g2t2GA1Ka3Vd/p.jpeg?size=178x178&size_mode=1');

        INSERT INTO exercises (name, video_id)
        VALUES
         (
         'Dumbbell Overhead Tri…n',
         (select id from videos where name='Dumbbell Overhead Tri…n' LIMIT 1)
         ) 
        ON CONFLICT (name) 
        DO
         UPDATE
           SET video_id = (select id from videos where name='Dumbbell Overhead Tri…n' LIMIT 1);
        
INSERT INTO videos (name, male_video_uri, male_thumbnail_uri) VALUES ('Dumbbell Rows', 'https://www.dropbox.com/sh/eu0jqrwe3a3djra/AAC0I_ACB2Gd9bD5shQMRp7Ha/Male/Dumbbell%20Exercises/Dumbbell%20Rows.mp4?raw=1', 'https://ucde4709cda1f795b19b4f06ac79.previews.dropboxusercontent.com/p/thumb/AAUXHb9HLuk1IZgKivsvGoPQIJ-uxHNU4YxU94iLJKKxR-rWmaI4nklYQO7L_XIFEUA64Gdu1gcjLF_Fq99I9k4a6GAsLAYfc82SGSu3ESB-Q9vhJggGJMR1L9HLkmg9rFFjRYW-a5mhg06VaTxJpA5gI_Cinza7P59pYZkQiAddbq0wjh7b9nYYo7uuZdQ0xsmtY5PGQ64mpXS7Jz4jPLoEst8Cr0DUVdrLTF251qh4d9a60hEBETLwNEzjHtRJajfvVVTJSGi0ll1oG_V4hiVquB_flUOkgbpeiNa_HTnuAis3RyUJIRfRrRMixdCbRTrBCMo5g4LBwzgLVM3K2qzrnQwPFZG4X4n2rlz7obmBMr-LTjhDd01U2slJzxUbq1T8E7bKrQZV1MTed2Z4yGlFdthftSUn-gaV4J5d24uHCWSk416Ik_H7BYo-xO0VM0T64ldjWNVSjjvbTDijz8joMcsPA_Kg5cqdx6ntbdBYl80LWiVN0BA8SBqLDLyeL4f0UXB5AR--D-6wHjeEFshR7FaVO2pEDbksfL68eJh-YUpPYmdFmZPt-UL_rx0plKy1aylxBBmxWCfqAm-c08s0tddJEK1zmf_-uaWPHOq9I9qDGoyEYTEh2n1omV6Q75vwyjoG_BIe-Fja45_KF4zEnbjmG1UuPGsTKhrk1_v6ZA9m3tNUf3bcPatNYeUV3R29so_AZKlo9tdx5CQCbswff9LkNyJLiaO8k7fWqTPzFZhbfZxq6AZRm56Fc0zoDTMzmerWopqxyvgVhuxYpAiAsFtaXV3mC8MEsy612IGsWmu_GLlouTeI_j2pQIN1NYIc8wNwHM7dFehLc2SaAP4RblrRISDQjCvTgO9ROQmvSn8O-ccgRWUJgmGs3plXhP-zvNOo_aJbDbVdKJhuDYDkb8M9-2WEHXYTsTxUTlWjK-xbaHxw1p0UUxWC9l_bDl2Z_4XGY3B_x694UqoJISywaM1a_YRRpxilyqy0bvfLiqaTEQwG4J-3alLMtr3ym_365tPyYgvdxGzSC97l3_8s_xv8ZXZHt4bjtKbGuqJyl0GCp9aiEvUMJ-wMZb1YPwxKS2MydhTPuDMr9GM_wRC6uSUYwhYZkV8ael5LsiWvoi8CtpnxWEQCKJOBBjD9Hm3O0GvANGg2yfsLhyrX8iuc/p.jpeg?size=178x178&size_mode=1');

        INSERT INTO exercises (name, video_id)
        VALUES
         (
         'Dumbbell Rows',
         (select id from videos where name='Dumbbell Rows' LIMIT 1)
         ) 
        ON CONFLICT (name) 
        DO
         UPDATE
           SET video_id = (select id from videos where name='Dumbbell Rows' LIMIT 1);
        
INSERT INTO videos (name, male_video_uri, male_thumbnail_uri) VALUES ('Dumbbell Skull crushers', 'https://www.dropbox.com/sh/eu0jqrwe3a3djra/AAD0hxIBq7VWhaSXFhVobApUa/Male/Dumbbell%20Exercises/Dumbbell%20Skull%20crushers.mp4?raw=1', 'https://uced4b984ef885b7d6e0427186af.previews.dropboxusercontent.com/p/thumb/AAVg_eOyA_JKjwULCa0ndK90x7KcAsHf29lSwBCdI3SlfPZVG6YNS1w509r3S-ztnJiiTdMWZJWaomh64mhbw_p3doc27ULTYVTGzrJMWQ9JdM02ZgOsc0xQSSBg6pke9j-xVcrFRO_F6lXzW1-xL9iSePou585k8zhBEXlABg0r6Qo-jZl_04wWJtMGVQlv-a43r9aFTW_ojCetM4p6yzJEeXQQ2JrjzGPRxppMgxAbe5RG96nR06HuaANH_Xjn8vmkzgsnlpDwT4bRj0jhKE-zxV1RLd-ObcF50IHw-masDk_pSEQEkJ9t_mY-cLotypuEwhAsOEiLVcQ39ZSdnSnqmKFCiBAfvNgKUlbxKVDxUQXnyWoH9O2qIwa0HqJ3iyOLG9Bvr9G3NxkumaRdihO06i-imggGqKD2VQOUKeJnrve_4wsFiB2pYZH2vnOXF78Rf4MU1cGJ05wTYdYGkzDbvHcLuaA2043YuPwIJGhAYOO6l9-EWTg8o-PtF-t3FVTknpGMuN-6_HuKi9VRppg9D37KEcMaH731lbAm0cr1pGuZLnN9Lfs7sTvh7laxrGlzMeZvjkis_y5fpJd59JY8v9h1-X6ZQ87YklP6kSkexoXC9QhAMiiTQm3VP872DeMBpr-hErwm-dpyvk-XkLE1vmIk3pb5PhG4YHcD2yhzMTNnqi-uH9vtUBQ3I7QtoLJkEdlzWNfYU0gvupPZEwuek4w4NbL-GHosfv0id4znizhe9O_XLaDbF099PuLc0wooEItMNirVmvlO33Yawkkfp4WxjoPOiY0dzmCYz_JRR_khoym-xX1ub3AQQoUnAJwkEuMdxGArpid-CjDQUXUbbdaXZKVFIO3DTHCXcJL73Yy4h1oyURG2OJEH99UECeELv1n75rbF0TbLqmXKmhfknPJez0g66PKjXzsgC1mtc0IJf8od9JoM4SiBCpq1pQLkGsmylnyFFinBk8K4u_-qv1Z2SEXXK3y1VeJ6x7SjAMUIHIwgqbms8djdge1xLzpdutf6Ir_M768Q6v70qST6WHtYdIKxyJVx6SLT52K8vd7edUXwhXHdoXg2k67wcT83m-hYJEixu_fCWmdCOgtVk-a0-fQ2Nz89Hknd-0dLCnqr2PRRbunTlRhNbPPSZ2Yzh20dc-V1hkyG_HkcoFOI3qv9R36AHVbppTftsnT5lg4yt1bwyQZI0B8IAhX8b73Eh4WGA27MOlT-FY4dO6yLNOi05syvU7C_JZEfaDHbmsee7DarYLOncxVCeGxNwgrRGuCnVNgalB3MwZW6AbPAoLpz3W21Ds4M6XpBh5c2nHOxwbfHwW3KSG93YE6rM7I0M5-MxNOghosV-1cdPiEZnqcu5ajBzyjbm2B5aZEVMIdl6hJ1LZdtAPW5S6XcHps/p.jpeg?size=178x178&size_mode=1');

        INSERT INTO exercises (name, video_id)
        VALUES
         (
         'Dumbbell Skull crushers',
         (select id from videos where name='Dumbbell Skull crushers' LIMIT 1)
         ) 
        ON CONFLICT (name) 
        DO
         UPDATE
           SET video_id = (select id from videos where name='Dumbbell Skull crushers' LIMIT 1);
        
INSERT INTO videos (name, male_video_uri, male_thumbnail_uri) VALUES ('Dumbbell Supinating Curls', 'https://www.dropbox.com/sh/eu0jqrwe3a3djra/AAAuVVeRjSDtxQ-EqNwKgc_ba/Male/Dumbbell%20Exercises/Dumbbell%20Supinating%20Curls.mp4?raw=1', 'https://uc82191f811ba9daf54489001958.previews.dropboxusercontent.com/p/thumb/AAWq_u-erm9kzZX5tyF3NfBITtKcyKB2kuZZezkMIMCh1TC5bTxG0Hc-xktskzs0c-n6v5F1MshD_eDlLFB6qLoJP7GqOeaY77rTNVvQDlTsU3yOKUJt9C5hyBX5pQlLzaOu3XoMSwZVWSt7fIBXxMwSmhcqjBHJP-t2XJQ4iyudjiKTtJh61pT3NZ1ifBWEC7p9lSVQ7h1oyeFR4oumHGHMffkriA-SbC4SeunJHkpUW-9ZaFv-rxCoIhksQZWKnacUlfaZIDxS0Y7RvSGemRT-Qcer5b1llktAJxM7CjuOrOOsPG4izX7wBEh9tMy1gTgSVa3EuenyIIXefT6xqHaXyH-_TtjkGB2O_dokLhjC98YomK_ouzUpFLh2uTdvFE_y2BY_kV38BITrTAL7BkH-frKASfhJ6xvFuQWyPS2Ftf7Bfgd1z1Psik34fcUerKUf1-g7sA8-4m0YrYMZycmnN9A-9I_SJu8Cwi5ssOtwYmgezyO4bJJPK4obULK2Pet_DkeXLXSKPm3UaMU3PpNvdWJJc6iymSksYNizGCGH5_nj35aI_AvwH18IBBOagb67anS0Rj9xL5uNy3KqA7cEZ9nOVUAX8BgsIrjqi18QTldepiXTJzLbm7A9X7wrCc2wWbbH2Ds4-RVum6eqQcEU0dYkZBO8vp2Wg3qD8i4NRjiuN_MiOZ6AVeTKKfIrsk03ikpJVEhsXy34VIRyZqMgGKPY-eZrNhesk142kindlMY64uZ3xMOcK60MIMe_6FJrG-xIjsB6BGiSvBMdu4FjqfqQMnK-nbjdiXJXviH-5KgHlPMIqzdy0cvdTH0VUN--bu0C5EiI6gU6jYbwx6Ozhp3koCOxtfNyJZsFz6FHnA/p.jpeg?size=178x178&size_mode=1');

        INSERT INTO exercises (name, video_id)
        VALUES
         (
         'Dumbbell Supinating Curls',
         (select id from videos where name='Dumbbell Supinating Curls' LIMIT 1)
         ) 
        ON CONFLICT (name) 
        DO
         UPDATE
           SET video_id = (select id from videos where name='Dumbbell Supinating Curls' LIMIT 1);
        
INSERT INTO videos (name, male_video_uri, male_thumbnail_uri) VALUES ('Dumbell Hammer Curl', 'https://www.dropbox.com/sh/eu0jqrwe3a3djra/AAA1Y4ECUmmetoHigcvBcY6ra/Male/Dumbbell%20Exercises/Dumbell%20Hammer%20Curl.mp4?raw=1', 'https://uc093e7ac1996d01f7b563e6882a.previews.dropboxusercontent.com/p/thumb/AAUKEtdL_6sQAgD-XIJh5ao5fUjZjuzHBYLnRQ64dxiYljxwq1oTB2Np0lnUT8hhyqJ6v-hOdMs92yz_fBj2a-3t4d4cablfb3cpP3kSi6QtybQ_U1Nz3FLEfAiGR83FzhUDaSjSMQRQigeYqUf4yZBONP7CpLXa1idIvswBsF5mDTiEDGSHzWFP_HRu-9cO6m-AibBCqk0xPhDcagyk_4TaYxSKmXYtUWWqVPoSBd30NCPe_1qgW1TxbV1idlYZ4HYGj1cYdYSLeoZltzTXZNtG50S-CAiKQVW2B0KMK3jX8hiPc2M_gWbeTuMjvef3QmhQA40-XG6tvrmRX_qZoZLsqyNEocFn5RNh_bxnxDaz2qSS4x907l6zL52Bdz_e1Cvzwuz4sjNNi3ksylR0A2CwUG-i1nQzquwsfSQCp-CxU4X35_oaMAm0rnjZ6uUeVzb8viE6yAfd8NsLaTd41IxhYe1Vts2kmcSuofwSpbgLQAmlmKuVTDlczY-rzeMW-zYJUgCRcHCjwpHxFzsGedTWyCjoctb328czkPRyEhfSKdklnIMv5_UTtEyZnCd4YcvKM_aBB5TqxD6IixiEWDyHElOPm0rCJgnLlWb_zyJwWImRp1AKv6b0Eh5DLdI4_9YhTaQJicGl2PdcYgGNnBmfqnxrGDHrtQ45_dh9nn1aGvvklX4cftdIUqpJEbB8w0JDdrjt6sSIcwtZy1IC6MbPUtxPeRwaXig43v2pxAoWPpBduNrE95OG7BMBpm8-NV2yyOced4G0Kabrr0nNPUKbLbmV-AdWeIR_JrzXSI_TmA/p.jpeg?size=178x178&size_mode=1');

        INSERT INTO exercises (name, video_id)
        VALUES
         (
         'Dumbell Hammer Curl',
         (select id from videos where name='Dumbell Hammer Curl' LIMIT 1)
         ) 
        ON CONFLICT (name) 
        DO
         UPDATE
           SET video_id = (select id from videos where name='Dumbell Hammer Curl' LIMIT 1);
        
INSERT INTO videos (name, male_video_uri, male_thumbnail_uri) VALUES ('Dumbell Pullover', 'https://www.dropbox.com/sh/eu0jqrwe3a3djra/AAAp7kGxnWxXM1d6Z__KqHnua/Male/Dumbbell%20Exercises/Dumbell%20Pullover.mp4?raw=1', 'https://ucc38edcd267e9d5566bc3bb1df2.previews.dropboxusercontent.com/p/thumb/AAWYOUcinRrrIdwXea-KRabKbPx_PfnUnxINCl_SAqKN3O8786ZdManAOOlSe-7RJ55DFhcY9YFTgoUYNPPY3CU99JbXpf-5cq_4yCipQirIiI8Bh4rIMc8ZyHMqyZPJ-ukBR2UkI-8P3TB8StGpeIK5rBh-4x79XNerHu6_Nx28dBUVZnf9IimQwB33PylPLhbOAnrKi4G7D5sGCavEhs-9_w0c7F2B-85XBdZZgOi12DsUhBGkIJVLFIYpKqqWLvBEagPb4twRaH0TJUsjtfz5-K25FoX4xXkYuY1vvBdLNYVevKsZv_hJGdC1DaFN9yBrIvRNdectLHvSFvhuCQ4irMGdzbiRzBdog4p74lXnWMwb7EVjjEiJ53--5jjQmfD5FYX6ysxO4W3ocDEmlawkru-nYkayqB1_5J8zPqYNi6foJQmSACYBd6PXbYK1hqdtOlvwgP6T44QHxw1wNSAc322E-SY8OSb1u2_YfTtuby8C-JqrTiVztXAGROR46P7AeYjWt6HsD0j5FIK7f9MUspFwXYXkhQKyYsqGi0VUK_-gtLe4ucqrPdwoa-lbJLKr5uM-poyZofEcDlvEuVz7MudLuM2lwwddBPx_BrjRr6utEiZ68XInKNczbNqEcumkldycGs_BNDq6kLH_sVLxkHk4M20algoKDeQ6afIisqf8U1TQmx8l3Hzcxo1I7VhTUWay0WYPp1CTgMfCNOKEhfpZT4ln28V7Sb2gLFtofAddKJhvXhKC8MK0UE3KYQycmJcybOae0kEcY9JKWl_EEv6pl9s3MWstA2qSQ2k2CRqxDEfTAyH3A5QwChqxPpszMxkL2pYCZZcVWWmgu06tQaQKfltJqTvuWpsR1ikf1Jx-swma2kUSFWn9tikfV19BE6jYxPXwA3FL39v37iJzHbsQoMmvJ_CFbODUFsM8p3XTPNkPQ_ichoEdXfsGXhDiW2r9MUb-A7AP-9ahHkA3MWHVAAsyia5GwkPuW-e18YwU0iNNs0JjNJ6clPijYJHbjeYGQTg4TOtVscekcesNSlDnUe-Xw5Qy9xXtPTv3hG9LJAF16KAA4QUczgIc5DCqNwhOvrjwS6pJ7IyeFxsYL9Ol09Lz5ujwqhsKPvQg-OOSTIaLVEkN5IapV3g92a0jc4aOpXe-1c4zJMy7PQ668q2Svkr2VYYHXFCv62PVs9ha-YlIYdEBv3IqsuqBkU__PcQCLxLZMQ00N1VRsCFI/p.jpeg?size=178x178&size_mode=1');

        INSERT INTO exercises (name, video_id)
        VALUES
         (
         'Dumbell Pullover',
         (select id from videos where name='Dumbell Pullover' LIMIT 1)
         ) 
        ON CONFLICT (name) 
        DO
         UPDATE
           SET video_id = (select id from videos where name='Dumbell Pullover' LIMIT 1);
        
INSERT INTO videos (name, male_video_uri, male_thumbnail_uri) VALUES ('Flat Dumbell Chest Press', 'https://www.dropbox.com/sh/eu0jqrwe3a3djra/AAArkPT_s97EGYCbiEWZCH81a/Male/Dumbbell%20Exercises/Flat%20Dumbell%20Chest%20Press.mp4?raw=1', 'https://uc56e47c70506b91ab7579fa51d2.previews.dropboxusercontent.com/p/thumb/AAWeMHAQ82mLIpUkVX1AzayHih3Jc8PXqSxjci6raDfmIAeUr6phrspwT1YvQ6qFwlBKGzFwZBUAAnpIW99o3F8kQT1fWaM4IupN6QLx-NMrlTB5WJNEJB-YCe11rGsyH4V25rIj_eLLKqeGheySSqMOHyk2vab4R4TgZNA9Awehjixvv_765rikQpH1OY1JOK5IN0s_y4JZEdnxox_U6t3fw7Tuu8Lg3UCj1-G1kSKyae5Q0imil9tv2h2ZgWfJSWajExQQDiQmHUgPGe-zeEmRwTobmkjmeOikjr0TR5K8g2s0n0uYbACtpfb8Wvkc9zEDAtB8Xq0IsK58IDu6tMlGgWZ4-DbkyDiPt-C12-TSmtx0yRNfb05bjBsJujX_RTqePscbT0drM1VvPzoLLdpDpIuNb1G94wBwnXLVXRJzM6on4ThJL9Op-fZ7e0VTKmcktOvjlv3ClohVZxAtSoR6dqL49nFP7Cm7HeTaQODwaoEZAFe5Q1szgx4BeOaad8ZpXuZt4jwoZzhel8P4-7muIrS-QF_msWHtRtyCQZzhEYvbME3dIGpOYL5UdZkfuyePT11XNQcDrL_kE9507zpVLMJ32rbejjcJn6aKDJXMNrlUeIKPEobXcncO86aOn0VmBY03c3vegkwzEH3iAHiaBFYptq0UQ2Oqt2LGAhevUpUdvrwrjnwx0SuR0YXLXUILae3vmB9grg-SCPg9kps1Vd3SVIPV6QsjzsLBlxaiU1dxyy-FoNSJEpj8dRyxu8P0Egc9bYVam26ugb3fD5uIiVAYscAcNWax-trvrQzEK_m1EQ4xSnRF4RrXrE5GBIlT9PZp15QyUwdLjLjzptcuJPCzJyqFcr5r_FTlkFmneSFd_ioVoiepUf44QaySuGXt39n7YHv4U51J-DN5XW3U-M78IzFfw9D-kIC2RkgIMZ6wNnZa8_0MNMH0Bp1DVvUc6xuozb4OKPHuYMMtnvdu2XicBKmkjFeqOYFmNkSZVx6XxYIENDKaOBMGxbNfmWRHjvsmtD3_TRLkIYOrlAZXoD_vg7RRUwpo92sJUp2idTsI4Q77Hi0igrBo_gNvd3vl9wlyoqVo38S4eirKkjlufxNPEMVqZLhTzlBtjWLr_24Tm2Q-kKnpc43yWxcaqzdR3nawydyhcK2K1WkwkgP_RqrlV5U7d9m-Lojk-BIZ-H3cfbkBGo26n7CYcLZBLfPkZTwcUL11u2wCZZzl6GLx/p.jpeg?size=178x178&size_mode=1');

        INSERT INTO exercises (name, video_id)
        VALUES
         (
         'Flat Dumbell Chest Press',
         (select id from videos where name='Flat Dumbell Chest Press' LIMIT 1)
         ) 
        ON CONFLICT (name) 
        DO
         UPDATE
           SET video_id = (select id from videos where name='Flat Dumbell Chest Press' LIMIT 1);
        
INSERT INTO videos (name, male_video_uri, male_thumbnail_uri) VALUES ('Incline Dumbbell Fly', 'https://www.dropbox.com/sh/eu0jqrwe3a3djra/AAB7t4FotBKVLOXVlWtJrCWxa/Male/Dumbbell%20Exercises/Incline%20Dumbbell%20Fly.mp4?raw=1', 'https://uc289c77ee8f1da33543a4d66248.previews.dropboxusercontent.com/p/thumb/AAUkhnWUFc0NRumtBDZR8l1t5RPGvzVN9FNQigP460AU_LoX6-Wf72XnpC5MDANVIOwo6uZbiw95XP0gOw_7IKNv4k6jlkswjICgHBjJa3UtZDTePHFlx4TUpk_Vz7IBm4dSuWlQx99_-KINVWPY_Mh_CRfyxXJss9hvs3TdkKw8jD60Cr6fbzYEO4SdOtR0AdrLCRpUW99DIbKe-LNIkzgbLEaYex7-I1Ga3Mvzslc619XgktxG8DNfzj92bhxdzwjSZIiXXZZnrF9_jNp8b3GIH-7K3b6nLdZz7DCT4Y3VqXB5whOyp0ZK_nTrQv26hTbOYs_f-ldZdZjP7RpK7dkZBgj6orkzRdebCIiDlDIu-9ycnkJFU78gpyALq1N-aTkMwPIsXg0Dv1d51e0EPlzGRmJysXt_AGO-6EEQ-y0OxLW3HG-2SYjdx3tGPge4nHa8f-jCeF53mdPrqK69_71_rXAqJXUOcTBw8Ph8gVL2FZcXne0LQRCgXvxj7ZjnKW0F-OWiHBmePS_ItF9meJyEcl5h5C0RYixBz_s2ns1YgARGwraAswB-6HuVnrsWgwe9cr35yrg6rrAiSJBg9HwZjW1X28z-Gys-UJy4eds7myEty2HC8QZBu4b2jMVFGSf8RoD2CZUdM1_UdD9lvvUpKzHWBbZ1NsenqQShvM6fu31kwrkaIjQdYifPHhaTQe1q3BCS9IkqhLGxAq14CLQ32UKaaLQiKjtjrYEdiejlNEz0IVG1cg6-16oaVDGx2Xozf32p9TbdHDu33GW12x-9flxVFfEGXUfN2QDtolwlfShLIau63vZE86BiCNAhFCQ3WTZnUyKWMqafDV1rT5O6KqFyNhssnApzUt-wIItmHnNwsg0Le3-_t0rttk1M3hCDwqZpgGvXkIIc5oBscRC2ksngf7qlHpGTz7XlCR-ldL6ncQUgJzzaRmu5wQFEVi2_hlFkx9quRa6nNuw2tbJDkkYhYV8DGevV-1fxJaaw-oL-kzfKm66vfH4JQlyqyW1XVJl59BspsWcD9DcmePesVuQxuwRKbjrYvf7rmrM-D0qHCAvBmKQPQiiaSo9Ak5x2QybcTYQ8zqmlUDF_UCSKIYaVyFrpuuE_LH5ynQKyu-Zz75iPXWnCh8m8MH4KQhlP7W5baiW0sjwiiXZCGbRyKf7eH4PcI311eJPAFXVp_IDhoisbjpZmVfUtfkBa0m2rPcC8i7cl9ImF_DDWZS0bUlSwimPjT6mPu-ZFHK8Xd_3Xy5C4aBFRojfFyRmQHgCiS8_1eV8Tz-PhIv4WJFvUimjB40baeYIOfB-29EUJx6iPNOWdZwg31NOdiaRenqiXDv007qP0G80OtSU-jyqMqX-bi3oC87U8O7v-NzOqJos8NZ1MFNbU65y0gOAkzxk/p.jpeg?size=178x178&size_mode=1');

        INSERT INTO exercises (name, video_id)
        VALUES
         (
         'Incline Dumbbell Fly',
         (select id from videos where name='Incline Dumbbell Fly' LIMIT 1)
         ) 
        ON CONFLICT (name) 
        DO
         UPDATE
           SET video_id = (select id from videos where name='Incline Dumbbell Fly' LIMIT 1);
        
INSERT INTO videos (name, male_video_uri, male_thumbnail_uri) VALUES ('Incline Dumbell Press', 'https://www.dropbox.com/sh/eu0jqrwe3a3djra/AAAcuSatDF65D_40dbjVNuUka/Male/Dumbbell%20Exercises/Incline%20Dumbell%20Press.mp4?raw=1', 'https://ucde14013518ce44239561c63d92.previews.dropboxusercontent.com/p/thumb/AAUmXXDPBhYbZLTSkaZWnxesN6QYUZVa1bMIcWFxFIsO_gALXuXXqWalf2fwWkuOTXvWimtl2hhYhotE2IN6AkyJDpWbMOD-yVaGVYuVH0XJT60OAV2hGRCTyTYnTF-TnzBA63U6pcULz0eeDSc8mSM-Lrqjwj1HywUbJlNbfGo4kT0zahL5jEyU1RzIPjb2TSfFOp1_iEsHB7pXLP0GlH0pQaJ1yElFMnl_IXy4VRF_WS7cSJXG-VhPsq9skHcLtMrf70nPPcTTMa6j4SSHdeNp8FsF095NK1fL072wlUzJ3qOqVpEWpRQ8M58aW_YlqXYMWv3-Sa1sysfksayQ7_UWo7d97-msK2Kc7QaRKZBuyOb2nxcSfUg6c3EZ9g52lrKb7UUz8B0SD4jR2xQxFlpl_pxSx0AEUap4auTJs1IJTONv6AmPGeEqS9Qk4E1F6jcvmLKgkM1XHWJoyV0jKZ-oa1Q-QCiyTgqdS2cDaCUFp_ab6jHwndjk-WBC1_eZjU6ng5evTCc2ckEvIBR6v6UVuzFLpPGF5vtDcz9O0wuM33_KeKQm0QYWHpLGXt77tr3tbHquVPfOEWGofy9snmdBx8VmKGY13B1QyOKJhVRlvrsP-GYO1G3bd2_RavpKTkec42fr7dXIxGrPUfxm6NEuGn78TXhx7yipaJOCb8Udq8ZxnvuSkfrfqvso6EWMA7rqcHP8nIuRyeMvOlN-0SwtX8DnNcDPiXqQ0v9BR93DjBAZe7lWNB2rDChyzL5sBd0xaeIPeVFWVtfOAoGcHQmpY9OPtxb_6ELG2BDTt99SCUmLujXhLFMaLd5T0CMOvQrpIYB0aUrmeedNYVqTZQEWCjqijI4cp4P9c9ZYxF55E22CqdACR9L39jX4d8xCBnkkSCMGApK5817lU8UN0bquIYyNXDfqvnoJIWzV2cZkEiZWvlrn9s-AtQ8eEY4JP2Sb1lO_pMXQRTiFNM5flPN4oc6CD9JggjKKcRdmRrcn6iq2qcIvgDspRyhbT9ILag4UHqfug-Fy0wxmFtdPcGEPvlhr_q2WMaDJWofMGWOs-cgGdRw9I9nh-Z5L8skfmyuCphmn2AS3wFRzEoonYvgoIgHPcu5JhsTvOvs6OUs8r6-n2QZaHKfgCG5P3CqNcmtzJnVaDmfohp7QtXjXqIYG/p.jpeg?size=178x178&size_mode=1');

        INSERT INTO exercises (name, video_id)
        VALUES
         (
         'Incline Dumbell Press',
         (select id from videos where name='Incline Dumbell Press' LIMIT 1)
         ) 
        ON CONFLICT (name) 
        DO
         UPDATE
           SET video_id = (select id from videos where name='Incline Dumbell Press' LIMIT 1);
        
INSERT INTO videos (name, male_video_uri, male_thumbnail_uri) VALUES ('Lateral Raise', 'https://www.dropbox.com/sh/eu0jqrwe3a3djra/AAAW6_yCEWHVp9mYuNpgb8ERa/Male/Dumbbell%20Exercises/Lateral%20Raise.mp4?raw=1', 'https://uc2246bd68ed3fd356e0d004ccb1.previews.dropboxusercontent.com/p/thumb/AAUQjnXM26XNqhXGU93kRo4buA3L4guZ6s4wql_0IbhkGYANUV8to6jBB4f77ic8gyjFaYTUA3pQIJjP-xwjAv7tmO_MpCYMUqsQJF4v9JVgRDTcuiv0FcmK1d30CbwSEoht2ZbBZMgdY5nc9jargY7FGppds9-wYuiKOUWvM5QhSZPOkF8kvthzmojmqcyzcj49Lzr5YIzNf7vf937MICM3PpUf5mQeiWeqT9kWv78NLiaK52WMgonh1-jSilyeTXj_CePHI_sOEJpzM21-S09Q8Ms7Ytn7eOcKP-w0KG5jMVlob3yYVDj8JnonCZljFQIchFO4EY7_Gxk4o5ytK8cdUYz3g0sgSeRIaPfpHkFSiD1JAgQwBaJFId0mLhsS1x6UNc-5-LVU2Bm5pHhYSihcKlwLfpHYh67YOVsmwuId4G6OGE6rwjc7lLKhzIA5MOXn4sASgIhXJKxLgr6kDW_xdchkWB5vLxdQZa2oLb8hqPq1mW7Q54Hy-b8s2E_W3PgJBc-QB26D-hloD4ixfvhjTW2GTcO1vW-ekcLQ7cBamrGmS8B_nvOQDdO44-Rj8UbO4K9Muf84OXQUXlyDiYA47MSYJvDHTZOUXVKpr4Yis70XRk_OQX3R9qBUvA8g5Ooy8QtbmXESd6m6YVdv-On4oodU27lMMGM_AsxH6qsHVt8HGXmP68PFGB4TL-MGbM6SKDy8V0TapRAD3UpsjlrQRZugqcSIyk5Cia3t1xtaK21B5lhYQh7CF21DbQnZi4cU7_U8n77BN-yy1czu5jpFFasDH4LEHsWGee2dStdX8VmCa465FEbXjkJ7FV1gL5wfwwJV5CjMXkxwpbaHc266YEv8JqjQOtGEynA2X2rxjxENHu-oJqlYWt_gyKA2vnG3oXGLRCG7hUssHbEwi1mACwpZjcV-M5b66RZdrICzfQ/p.jpeg?size=178x178&size_mode=1');

        INSERT INTO exercises (name, video_id)
        VALUES
         (
         'Lateral Raise',
         (select id from videos where name='Lateral Raise' LIMIT 1)
         ) 
        ON CONFLICT (name) 
        DO
         UPDATE
           SET video_id = (select id from videos where name='Lateral Raise' LIMIT 1);
        
INSERT INTO videos (name, male_video_uri, male_thumbnail_uri) VALUES ('Seated Dumbbell Shrugs', 'https://www.dropbox.com/sh/eu0jqrwe3a3djra/AADu-0b-Ya6JDM9p3OfGzY2Ea/Male/Dumbbell%20Exercises/Seated%20Dumbbell%20Shrugs.mp4?raw=1', 'https://uc72ff8dad9fd5d24c263520d8fc.previews.dropboxusercontent.com/p/thumb/AAXp1YjqeKphcr6sihi2HRX5XF--PLlR6MokdpOmN0RMi5zmY24-6uDKlJCFArpZFAbOHYucElfeUtY07ZyseXNi0iQi2GsOYbrs-4_YnMAdS22ObeMsCeXSl8JJM8ZvF1nhbUPuoCSZxknr4ZhMicL3P1VCZJM-55m1u0R378xUB__TGMIjuhaEahQnGWMJy7ZfxXafVkWTZqLpG7LZVDTcXJ-FBGrf1soEk_5qNCzDHb-jXZuVV8AL3xOX0BYYaUjjbjXz4613Ben8T5Che0I-mjXwE7VtqOM-cwB-_2AnIvgdlEGjj29Pjc_HHEvHPEZQEirCce3L_V8iy5vuxnPdfkiDIJ1ZFUpOgNAeST8YFYm_LmVEBWpkHnifZxF6DqpFbMk6HXzvY8bD2zWZV35za93t5bWVVI4auVqo6rPs79k3wbZ9HgTL3O0hDpckbsuPYJa7mR62NiP0hPL9fFGS1HlKcO8Z9ocBsZVLJhbcKK5ryQogFduVsHX84Kl6IWyW7bj1aO6a_-G7YnpekZNyqa4TEHq4yibPJwwfPps0gAYTrO_G7yhdl1iqblmiB-J32hoq1szV4OgpkdqRxE4Q_RpsgYhrsd83sYG7e4d5spFD5jc1FkmCzLLnPq2MrK-7YqmpKOR2tojM56XEMNPKh6F_lhWL3OX2r3qJJMXL2ho4nex1wZs5Etd5X7tZ6rAq8sEjEosbaDe9BHMSCanl-EfGchdX_usACyjfCRFqgOMhducBaD6wWJYB-eR42t4Wq6Tz3F_yLRQeGUQwSEDjmQhj6y0DszM99VGr8Ac9ASxSbQbymor3UJq_Sba4d4eQ4kKVB-IkoMt-Y1YbJR_X4F5jqY6oe1yPecc1whTnipMxiQ9Mx7Q3vOyfDXWz-1n8diPZB2o35jPyLey9aNXpIDYF27q6d3kGIDsXad2KUKXRfLU52XW1WzLwI7NFOW5TD61Z1PAgfnT3ZkRAPf_38H4wcD_2RMg_oyFPDLuQ67Im7oghnkdnhzjQUcvxk23TFe61-054W2RCn40L_30F/p.jpeg?size=178x178&size_mode=1');

        INSERT INTO exercises (name, video_id)
        VALUES
         (
         'Seated Dumbbell Shrugs',
         (select id from videos where name='Seated Dumbbell Shrugs' LIMIT 1)
         ) 
        ON CONFLICT (name) 
        DO
         UPDATE
           SET video_id = (select id from videos where name='Seated Dumbbell Shrugs' LIMIT 1);
        
