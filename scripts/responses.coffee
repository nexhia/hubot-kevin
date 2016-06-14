module.exports = (robot) ->
  
  robot.respond /PING$/i, (msg) ->
    msg.send "HOWDY PARTNER!"

  robot.hear /bacon/i, (res) ->  
    res.send ":scream: You no kill Kevin :scream:"

  robot.hear /pizza/i, (res) ->  
    res.send "*OMNOMNOMNOM*"  

  robot.hear /idiot|silly kevin/i, (res) ->  
    res.send ":cry:"   

  robot.hear /meat pie/i, (res) ->  
    res.send "That pie is a lie!"     

  robot.hear /thanks kevin|thanks @kevin/i, (res) ->  
    res.send "You're welcome :simple_smile:" 

  robot.hear /amazing kevin/i, (res) ->  
    res.send "I know :simple_smile:" 

  robot.hear /#nerdlife/i, (res) ->  
    res.send "https://img.printfection.com/9/14433079/ltwdr.jpg"    

  robot.hear /push/i, (res) ->  
    res.send "https://s-media-cache-ak0.pinimg.com/originals/4e/2e/53/4e2e533434ab4091c3293ec14a9cb8ed.jpg" 

  robot.hear /marketing|SEO/i, (res) ->  
    res.send "http://imgfave-herokuapp-com.global.ssl.fastly.net/image_cache/1373283574468482.jpg" 

  robot.hear /shit o'clock|shit o-clock|shit oclock/i, (res) ->
    res.send "http://cdn.someecards.com/someecards/usercards/1335298036781_3013300.png" 

  robot.respond /TIME$/i, (msg) ->
    msg.send "Server time is: #{new Date()}"  

  robot.hear /sbone/i, (msg) ->
    msg.send "http://remodelingclay.com/wp-content/uploads/2013/08/f5-key-refresh-addiction.jpg" 

  robot.hear /cug/i, (res) ->  
    res.send "https://cdn.meme.am/instances/52905340.jpg" 


  joeback = [
   "http://36.media.tumblr.com/cce123d9f865282a504f68aacba56a2a/tumblr_o0jf3yHxFs1ujvkoro1_1280.png",
   "http://36.media.tumblr.com/47decbd73f487bcfc0f0aacd092f55b1/tumblr_nwmkwsmQ961ujvkoro1_1280.jpg",
   "http://40.media.tumblr.com/404ecaafb64455fefeb1a49ce70eaa28/tumblr_nwfe2pyDt41ujvkoro1_500.jpg",
   "http://36.media.tumblr.com/a91a64eb83d7ffca159939262c3ed6b3/tumblr_nwfe2dwfaE1ujvkoro1_1280.jpg",
   "http://36.media.tumblr.com/fd1693dd45d03357763b82a831630622/tumblr_nwfe1uD0Zc1ujvkoro1_1280.jpg",
   "http://40.media.tumblr.com/c49bede92cab0e079eb8a1c8cd990397/tumblr_nwfe0xzb6s1ujvkoro1_1280.jpg",
   "http://40.media.tumblr.com/9002687a1356347d4c707e9fdd8b1921/tumblr_nwfe03Qcbp1ujvkoro1_1280.png",
   "http://41.media.tumblr.com/c469afed016dabcee76ded301807ddd0/tumblr_nwfdziL8gL1ujvkoro1_1280.png",
   "http://41.media.tumblr.com/28b79c871aa626b4b132b4d3ccdf1046/tumblr_nwfdyjnMgq1ujvkoro1_1280.png",
   "http://41.media.tumblr.com/fdebc98331edf43167881a75ff434fa2/tumblr_nwfdy8T9bW1ujvkoro1_1280.jpg",
   "http://41.media.tumblr.com/9ea25586feed16dab8023ac764caf15a/tumblr_nwfdxpq6qW1ujvkoro1_1280.jpg",
   "http://41.media.tumblr.com/f495bafe932913f66b84b0c31bbad9ad/tumblr_nwfdx0KE2S1ujvkoro1_1280.jpg",
   "http://36.media.tumblr.com/6f97cc206c7d928e06c7a8b34335cfc4/tumblr_nwfdwndEvp1ujvkoro1_1280.png",
   "http://41.media.tumblr.com/ec597cee74b7c53b0c1d4a7a21c9d4cb/tumblr_nwfdpyZvpv1ujvkoro1_1280.png",
   "http://41.media.tumblr.com/ec597cee74b7c53b0c1d4a7a21c9d4cb/tumblr_nwfdpyZvpv1ujvkoro1_1280.png",
   "http://41.media.tumblr.com/ee4d3185faab8e4befc3762bcc3db64b/tumblr_nwfdow1rO41ujvkoro1_1280.jpg",
   "http://40.media.tumblr.com/413a6250d4476806e16d9ada5d7ae2fa/tumblr_nwfdohNrTl1ujvkoro1_1280.jpg",
   "http://41.media.tumblr.com/a036fa416a6153bf7c73cee4c79e2ba7/tumblr_nwfdmuDrHz1ujvkoro1_400.png",
   "http://41.media.tumblr.com/0a21ab83e141e8b85737e60e71535c40/tumblr_nwfdlmqxZq1ujvkoro1_500.png",
   "http://36.media.tumblr.com/41a1730fed28c1dd7fa4c8f53015f700/tumblr_nwfdl9HXIk1ujvkoro1_1280.jpg",
   "http://41.media.tumblr.com/c644f3ffad3bd73ef137dfb3e75b2590/tumblr_nwfdkyKzNC1ujvkoro1_1280.jpg",
   "http://41.media.tumblr.com/ea3cda4739c469072ff9812cdd1e3696/tumblr_nwfdklFCEg1ujvkoro1_1280.jpg",
   "http://40.media.tumblr.com/5af3d65dcf990fd12721b7e2d15a20dc/tumblr_nwfdiqJfKa1ujvkoro1_1280.jpg",
   "http://36.media.tumblr.com/e427df596467f3ae42ffd9a91a5b7cfa/tumblr_nwfdifj1GB1ujvkoro1_1280.jpg",
   "http://40.media.tumblr.com/fe5b1ea78b2856c7314c58e9318a5292/tumblr_nwfdh1DKkk1ujvkoro1_1280.png",
   "http://40.media.tumblr.com/668098b10227b467a27eeb02b4c931e8/tumblr_nwfd7stKdT1ujvkoro1_1280.jpg",
   "http://40.media.tumblr.com/52982623a2b50bf1053058b970af5667/tumblr_nwfd72EyQ61ujvkoro1_1280.jpg",
   "http://41.media.tumblr.com/3f4318a5ab32bb9c33d8e199409447fb/tumblr_nwfd6pYmH31ujvkoro1_1280.jpg",
   "http://41.media.tumblr.com/ad38be643c252b8ab17360dbf2cb6e86/tumblr_nwfd6blcDp1ujvkoro1_1280.jpg",
   "http://36.media.tumblr.com/d9741cf425e00706725e48550f4f49d9/tumblr_nwfd5pcAsd1ujvkoro1_1280.jpg",
   "http://40.media.tumblr.com/16c839590a8292ca9894563473078a6c/tumblr_nwfd60nqmF1ujvkoro1_250.jpg",
   "http://41.media.tumblr.com/0b2883be5aecf0bf87e8b9dcc908aabb/tumblr_nwfd5df5om1ujvkoro1_1280.jpg"
  ]  

  robot.hear /joeback/i, (res) ->  
     res.send res.random joeback 



  filmQuote = [
   "But then I realised maybe that's what hell is: the entire rest of eternity spent in f*****g Bruges. And I really really hoped I wouldn't die.", #In Bruges
   "Did you think I'd be too stupid to know what a eugoogly is?", #Zoolander
   "Enough is enough! I have had it with these motherf*****g snakes on this motherf*****g plane!", #Snakes on a plane
   "Get busy living, or get busy dying.", #The Shawshank Redemption
   "Go ahead, make my day.", #Sudden Impact
   "Hope. It is the only thing stronger than fear. A little hope is effective. A lot of hope is dangerous. A spark is fine, as long as it's contained.", #The Hunger Games
   "How do you like them apples?", #Good Will Hunting
   "I like the tuna here.", #Fast and Furious
   "I'm gonna make him an offer he can't refuse.", #The Godfather
   "Just keep swimming.", #Finding Nemo
   "Oh my gosh, look at that fluffy unicorn! He's so fluffy, I'm gonna die!", #Dispicable Me
   "We're on a mission from god.", #Blues Brothers
   "Gentlemen, you can't fight in here! This is a war room!", #Dr Strangelove
   "Marriage is like a tense, unfunny episode of 'Everybody loves Raymond'...only it doesnt last 22 minutes, it lasts forever!", #Knocked Up
   "He's not the Messiah. He's a very naughty boy!" #Life Of Brian
  ]  

  robot.hear /quote/i, (res) ->  
     res.send res.random filmQuote 



  images = [
   "http://s3.amazonaws.com/kym-assets/photos/images/original/000/114/151/14185212UtNF3Va6.gif?1302832919",
  "http://s3.amazonaws.com/kym-assets/photos/images/newsfeed/000/110/885/boss.jpg",
  "http://assets.head-fi.org/b/b3/b3ba6b88_funny-facebook-fails-like-a-boss3.jpg",
  "http://images.cheezburger.com/completestore/2011/2/20/a4ea536d-4b21-4517-b498-a3491437d224.jpg",
  "http://funcorner.eu/wp-content/uploads/2011/03/like_a_boss.jpg",
  "https://i.chzbgr.com/maxW500/6972126976/hAA5A99AF/",
  "https://i.chzbgr.com/maxW500/6669391104/h7509954E/",
  "http://i.imgur.com/eNXkb.gif",
  "http://i.imgur.com/WN8Ud.gif",
  "http://i.imgur.com/9y0VV.gif",
  "http://i.imgur.com/68Jtv.gif",
  "http://i.imgur.com/B0ehW.gif",
  "http://i.imgur.com/3GU2Q.gif",
  "http://i.imgur.com/Z3aAs.gif",
  "http://i.imgur.com/diA9N.gif",
  "http://i.imgur.com/ze3MJ.gif",
  "http://i.imgur.com/rBvJany.gif"
  ]

  robot.hear /like a boss/i, (msg) ->
    msg.send msg.random images   



  iancat = [
      "http://cosmenet.in.th.s3.amazonaws.com/upload/medialibrary/aa0/koyuki-1.jpg",
    "http://kitties.love/wp-content/uploads/2016/02/japanese-grumpy-cat-angry-koyuki-moflicious-41-400x282.jpg",
    "http://pbs.twimg.com/media/CbpW1mRW8AAD_0a.jpg",
    "http://uploads.neatorama.com/images/posts/328/88/88328/1455495082-0.jpg",
    "https://s-media-cache-ak0.pinimg.com/736x/4f/79/35/4f7935d7f8fcb331cd6bbaee00b9520f.jpg",
    "http://41.media.tumblr.com/22227113834ed27d2a7c01b497951744/tumblr_nwmfepQavs1sv83imo3_540.jpg",
    "http://40.media.tumblr.com/0a3f70877b5f673c0242c4d5c548fad1/tumblr_nwmfepQavs1sv83imo1_1280.jpg",
    "http://i.dailymail.co.uk/i/pix/2016/02/22/00/316F045300000578-3457587-image-a-1_1456099426070.jpg",
    "https://metrouk2.files.wordpress.com/2016/02/koyuki-the-cat-is-not-impressed-with-your-life-choices.jpg",
    "http://cdn.someecards.com/posts/koyuki-the-cat-mDN.jpg",
    "http://static.boredpanda.com/blog/wp-content/uploads/2016/02/japanese-grumpy-cat-angry-koyuki-moflicious-3.jpg"
  ]  

  robot.hear /iancat/, (res) ->
    res.send res.random iancat  

  robot.hear /leankit/i, (res) ->
    res.send ":f5: :f5: :f5: :f5: :f5: :f5: :f5: :f5: :f5: :f5: :f5: :f5: :f5: :f5: :f5: :f5:" 



# Proces shutdwon - box is configured to restart the process when it's killed

  robot.hear /Kevin reboot/, (res) -> 
    res.send "Rebooting... I'll be back..."
    setTimeout () ->
      process.exit 0
      , 2000  
