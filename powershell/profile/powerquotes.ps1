#==================| power quotes |===============================   
#              
#            Author  :  Katie Ball
#    
#            Creation Date    : 08-july-2014
#            File    :          powerauoted
#           
#            Version : 1
#  
#------------------------------------------------------------------------------------------------------------  

function Inspire-Me {

# List of Quotes added in to Array
[string[]]$quoteList = 
                "Do Good, Be Good, Be one.",
                "Life is like a flowing river of opportunities.It's up to you to stand up with a bucket or with a spoon.",
                "All the art of living lies in a fine mingling of letting go and holding on. – Henry Ellis",
                "You are not YET complete. You have no right to judge yourself because you are still work in progress !",
                "Wise men talk because they have something to say, Fools, because they have to say something. – Plato",
                "Keep dreaming guys, they do come true. - Divine Arcanas (The Hermit)",
                "If you are going to be thinking, you may as well think big. - Donald Trump",
                "They told me, You Can't, I replied I Will. Divine Arcanas (The Hermit)",
                "People who are crazy enough to think they can change the world, are the ones who do. - Apple Computers",
                "When people underestimate you, there's a power in you to prove they're wrong. Not to prove them, but to prove yourself.",
                "Anyone who judges you by the kind of car you drive or shoes you wear , isn’t someone worth impressing.",
                "When things didn't go as you planned, don't be let down. Make NEW plans. The sun doesn't stop SHINNING just because of dark clouds ",
                "You are never given a desire without also being given the power to make it true.",
                "Do the hard jobs first. The easy jobs will take care of themselves. – Dale Carnegie",
                "Success is doing ordinary things extraordinarily well. – Jim Rohn",
                "Success is the sum of small efforts, repeated day in and day out. – Robert Collier",
                "Attitude is a little thing that makes a big difference. – Winston Churchill",
                "Flaming enthusiasm, backed up by horse sense and persistence, is the quality that most frequently makes for success. – Dale Carnegie",
                "The three great essentials to achieve anything worthwhile are, first, hard work; second, stick-to-itiveness; third, common sense. – Thomas A. Edison",
                "A good leader takes a little more than his share of the blame, a little less than his share of the credit. – Arnold H. Glasgow",
                "Failure is simply the opportunity to begin again, this time more intelligently. – Henry Ford",
                "What great thing would you attempt if you knew you could not fail? – Robert H. Schuller",
                "All the art of living lies in a fine mingling of letting go and holding on. – Henry Ellis"

        #Choosing One Randonm Quote    
        $randomQuote = $quoteList | Get-Random -Count 1

        # Writing Quote
        "`n"
        Write-host "---|Today's Quote |---" -ForegroundColor Green
        "`n"
        Write-host $randomQuote -ForegroundColor Yellow
        "`n"
        Write-Host "---| Have a Nice day. |---" -ForegroundColor Green
        "`n"
}

Inspire-Me
:---------------------------------------------
