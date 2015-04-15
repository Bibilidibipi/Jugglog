User.create!(username: 'pipit', password: 'password', email: Faker::Internet.safe_email)
User.create!(username: 'Guest', password: 'password', email: Faker::Internet.safe_email)

100.times do
  begin
    User.create!(username: Faker::Internet.user_name, password: 'password', email: Faker::Internet.safe_email)
  rescue
    retry
  end
end

numUsers = User.all.length
50.times do
  begin
    Following.create!(follower_id: rand(numUsers) + 1, followee_id: rand(numUsers) + 1)
  rescue
    retry
  end
end

# 1  1.1
Pattern.create!(
  title: 'Cascade',
  num_jugglers: 1,
  num_clubs: 3,
  diagram_url: '/assets/1-1.png',
  body: "Start with two clubs in your right hand and one club in your left hand.
        Throw one of the two clubs in your right hand so that it makes one
        revolution before landing in your left hand. This single-revolution
        throw to yourself is called a single self. As your first single self is
        halfway from your right hand to your left, continue by throwing another
        single self from your left to your right to empty your left hand and
        prepare it to catch the first throw. The throw from your left to your
        right should be made underneath the incoming club so that your hand
        releases the throw around your navel and catches the first club further
        to the left. Repeat this sequence again on the right side, and continue
        to repeat it to juggle a three-club cascade."
)
# 2  1.2
Pattern.create!(
  title: 'Doubles',
  num_jugglers: 1,
  num_clubs: 3,
  body: "In a three-club cascade, every club that you throw makes one full
        rotation before you catch it. With a perfectly thrown double self, the
        club will make two full rotations before you catch it. Throw the double
        higher so that it spends twice as long in the air but spins at the same
        rate as a single. Pause for a beat as you wait for the club to come back
        down to your hand. Practice throwing a double self throw as every other
        throw from your right hand, then as every other throw from your left
        hand. When you are comfortable with that, practice making every throw
        from your right hand as a double self throw, and then do the same with
        your left. Then you can practice making every throw from both hands a
        double self throw."
)
# 3  1.3
Pattern.create!(
  title: "423",
  num_jugglers: 1,
  num_clubs: 3,
  diagram_url: '/assets/1-3.png',
  body: "423 is siteswap notation describing a solo juggling rhythm with three
        clubs. Each number is a different type of throw. The first throw is a 4,
        or a heff. A heff is just like a double self, except that it lands in
        the same hand that it was thrown from. If you throw a heff from your
        right hand, you will catch it with your right hand. The second throw in
        the rhythm is a 2, or a hold. Hold onto the club in that hand and do not
        throw it before returning to the previous hand. You already know how to
        do a 3, a single self, just as for the three club cascade. Putting the
        pieces together, start with two clubs in your right hand and one club in
        your left hand. Your sequence of throws is heff, hold, self. Start with
        a right hand heff, a left hand hold, and a right hand self before
        starting again with a left hand heff. Do not spend too much time
        thinking about the hold. Just make sure that you throw your heff high
        enough to have time to comfortably follow it with a self from the same
        hand."
)
# 4  1.4
Pattern.create!(
  title: "441",
  num_jugglers: 1,
  num_clubs: 3,
  diagram_url: '/assets/1-4.png',
  body: "441 is siteswap notation describing a solo juggling rhythm with three
        clubs. The first throw is a 4, or a heff. It is the same heff you
        learned with 423. The third throw is a 1, or a zip. A zip is a hand-off
        of a club from one hand to the other. Putting the pieces together, start
        with two clubs in your right hand and one club in your left hand. Your
        sequence of throws is heff, heff, zip. Start with a right hand heff, a
        left hand heff, and a right hand zip before starting again with a left
        hand heff. When practicing, start by juggling a cascade, and then throw
        a heff with your right hand instead of a self. Follow it with another
        heff with your left and a zip from your right, and then go back to
        juggling a cascade. Practice that sequence starting with your left as
        well as your right, then string two sequences together: heff, heff, zip,
        heff, heff, zip. Then practice running the sequence."
)
# 5  1.5
Pattern.create!(
  title: "531",
  num_jugglers: 1,
  num_clubs: 3,
  diagram_url: '/assets/1-5.png',
  body: "531 is siteswap notation describing a solo juggling rhythm with three
        clubs. The first throw is a 5, or a triple self. Just like the double
        self, the triple self goes from one hand to the other, but it is thrown
        high enough to make three revolutions before landing in your other hand.
        You already know how to do a 3; it is a single self just like you use
        for the three club cascade. The 1 is the same zip as you learned for 441.
        Putting the pieces together, start with two clubs in your right hand and
        one club in your left. Throw a triple self with your right, followed by
        a single self with your left. Then do a zip from your right to your left
        and throw another triple self from your left before catching the first
        triple self you threw. Repeat the cycle. The timing should be smooth and
        even with one club landing on each beat. Similar to 441, you may find it
        easier to start from a cascade instead. You can juggle a cascade, then
        throw a triple self from your right hand followed by a single self from
        your left and a zip with your right. Then resume the cascade with a
        single self from your left. Practice by throwing the first triple self
        from the left as well."
)
# 6  2.1
Pattern.create!(
  title: "Fountain",
  num_jugglers: 1,
  num_clubs: 4,
  diagram_url: '/assets/2-1.png',
  body: "The
        traditional four club rhythm is called a fountain. Every throw is a
        heff. Start with two clubs in each hand and throw a heff with your right
        followed by a heff with your left. Throw the next heff with your right
        hand inside of the club that is landing in that hand. Throw each heff
        from the inside to the outside. A heff thrown with your right hand
        should land further to the right than where you threw it. You need to be
        able to throw each successive heff from the same location where you
        threw the previous heff from that hand. As a heff returns to the same
        hand that threw it, each hand is independently juggling two clubs.
        Practice each hand independently to get comfortable juggling a fountain.
        While working on just one hand, pay special attention to make sure that
        you throw each heff from the same location. If you are practicing with
        your right hand and you notice your pattern moves to the left, it means
        you need to throw your heff so that the club lands further to the right
        and you have enough space to throw he next heff. Practice juggling a
        synchronized fountain where the left and right hands throw at the same
        time. The two clubs should spin at the same rate and fly to the same
        height so that they can be caught at the same time."
)
# 7  2.2
Pattern.create!(
  title: "Half-Shower (Doubles)",
  num_jugglers: 1,
  num_clubs: 4,
  diagram_url: '/assets/2-2.png',
  body: "A popular way to juggle four
        clubs is in a half-shower. In a half-shower, one hand makes high throws
        while the other hand makes low throws. For this rhythm, one hand throws
        doubles while the other hand throws singles. This section describes
        throwing doubles with your right hand; you should also practice this
        rhythm throwing the doubles with your left hand. Start with two clubs in
        each hand. The first throw is a double from your right hand to your
        left. The second throw is a single from your left to your right. Make
        another double throw from your right to your left and continue to repeat
        the rhythm. The tempo for this rhythm is different than most. In other
        juggling rhythms, you juggle at an even tempo, alternating throws
        between your right and left hands with an even amount of time between
        every successive throw. In a half-shower with doubles, this is not the
        case. Juggle this rhythm at a galloped tempo. Throw your left hand
        single sooner than normal. This decreases the amount of time after the
        right hand double and increases the amount of time after the left hand
        single. The amount of time between one right hand throw and the next
        right hand throw does not change. To make the throws fit the galloped
        timing, throw both the double and single a little bit lofty."
)
# 8  2.3
Pattern.create!(
  title: "Half-Shower (Triples)",
  num_jugglers: 1,
  num_clubs: 4,
  diagram_url: '/assets/2-3.png',
  body: "The half-shower
        with triples is similar to the half-shower with doubles; instead of
        throwing a double for the high throw, use a triple. The longer flight
        time of the triple means that you juggle this pattern at a steady and
        even tempo instead of the galloped tempo of the half-shower with
        doubles. Start with two clubs in each hand. Throw a right hand triple
        followed by a left hand single and repeat. Make sure that your triples
        are high enough that you do not feel rushed to make your left hand
        throw. The tempo should be even and relaxed."
)
# 9
Pattern.create!(
  title: "Passing a Club",
  num_jugglers: 2,
  num_clubs: 1,
  # diagram_url: ,
  body: "Throwing a pass is very similar to throwing a self. The difference is
        that you want the club to go forward to your partner. Hold the club by
        the handle and bring it down by the side of your leg. Swing your arm up
        and out while keeping your wrist mostly straight. As your arm reaches
        the end of its swing, release the club. The club should be mostly
        horizontal as you release it. Try to control the throw so that the club
        makes one full rotation and arrives at your partner’s waiting hand with
        the handle pointing down. Catching an incoming pass is different from
        catching a throw from your other hand. You catch self throws with your
        hand down and your palm facing up. You catch passes with your hand up
        and your palm facing forward. If you need to reach above the incoming
        clubs and bring your hand down to grab them by the handle, let your
        partner know that his or her passes are over spun. Conversely, if you
        need to wait and catch the passes with your palm facing up next to or
        behind your shoulder, let your partner know that his or her passes are
        under spun. This feedback to your partner is important; he or she is
        probably focusing on catching your passes instead of watching how his or
        her passes arrive. To correct over spun passes, take some of the
        rotation off of each pass. Extra rotation can come from flicking your
        wrist too much as you release the club. Try to keep your wrist
        straighter and allow most of the rotation to come from the movement of
        your arm.To correct under spun passes, add more rotation to each pass.
        You can usually add enough rotation by swinging your arm a little bit
        faster as you make the pass. The motion of your arm gives the club most
        of its rotation."
)

# 10  3.1
Pattern.create!(
  title: "Ultimates (5 Club)",
  num_jugglers: 2,
  num_clubs: 5,
  diagram_url: '/assets/3-1.png',
  body: "Five club ultimates is an excellent way to practice
        making a good pass. It is a slow, relaxed rhythm which gives both
        jugglers time to focus on each individual throw. As juggler A, start
        with two clubs in your right hand and one club in your left hand. All of
        the throws are straight passes; right hand throws go to your partner’s
        left hand, and left hand throws go to your partner’s right hand. Your
        first throw is a pass from your right hand to your partner’s left hand.
        Then wait for your partner to make his or her pass which will come to
        your left hand. As your partner’s pass is incoming, make your next pass
        from your left hand to his or her right hand. This will free your left
        hand so that it can catch the incoming club. Continue this rhythm by
        making each successive pass as a response to an incoming club from your
        partner. As juggler B, start with one club in your right hand and one
        club in your left hand. All of your throws are crossing passes; right
        hand throws go to your partner’s right hand and left hand throws go to
        your partner’s left hand. Your partner will start with a pass to your
        left hand. As that club is incoming, make your first pass with your left
        hand to your partner’s left hand. This will free your left hand so that
        it can catch the incoming club. Your partner’s next pass will come to
        your right hand. Respond to that club just as you did before, this time
        by making a pass from your right hand to your partner’s right hand.
        Continue the rhythm by making each successive pass as a response to an
        incoming club from your partner. Five club ultimates is four hand
        siteswap 744."
)
# 11  3.2
Pattern.create!(
  title: "Two Count",
  num_jugglers: 2,
  num_clubs: 5,
  diagram_url: '/assets/3-2.png',
  body: "Five club two count is a good rhythm for learning to
        incorporate passing throws and self throws with less pressure than
        passing six clubs. As juggler A, start with two clubs in your right hand
        and one club in your left hand. Your right hand throws straight passes
        to your partner’s left hand. Your left hand makes single self throws to
        your right hand. Your first throw is a pass from your right hand to your
        partner’s left. Wait for your partner to pass a club to your left hand.
        Respond to the incoming club by throwing a single self with your left
        hand and then catching the incoming club. Make another pass with your
        right hand and catch your self throw. Continue by repeating the rhythm.
        As juggler B, start with one club in your right hand and one club in
        your left hand. Make the same sequence of throws as your partner, except
        start by waiting for him or her to pass a club to your left hand.
        Respond to the incoming club by throwing a single self with your left
        hand and then catching the incoming club. Make another pass with your
        right hand and catch your self throw. Continue by repeating the rhythm."
)
# 12  3.3
Pattern.create!(
  title: "672",
  num_jugglers: 2,
  num_clubs: 5,
  diagram_url: '/assets/3-3.png',
  body: "672 is just like five club ultimates, but you do a self and a
        zip while you wait for your partner’s club to get back to you. It is
        harder than five club ultimates and it forces your throw timing to be
        much more accurate. As juggler A, start with one club in your right hand
        and one club in your left hand. Your sequence of throws is self, zip,
        pass. The pass is a lofty straight single pass. Start with a right hand
        self throw and zip the club in your left hand back to your right hand.
        By this point, your partner will have passed a club to your right hand.
        Respond to the incoming club just as you do for five club ultimates;
        make a right hand pass to your partner’s left hand so that you can catch
        the incoming club. Make sure that your passes are lofty. Repeat the
        sequence with a left hand self, a right hand zip, and a left hand lofty
        pass. As juggler B, start with two clubs in your right hand and one club
        in your left hand. Your sequence of throws is pass,self, zip. The pass
        is a lofty crossing single pass. Start with a right hand pass to your
        partner’s right hand. Make your first throw halfway between your
        partner’s first and second throws. Next throw a left hand self, and a
        right hand zip. By this point your partner’s pass should be incoming to
        your left hand. Respond to it by making a lofty left hand pass to your
        partner's left hand and continuing the cycle. The timing is critical in
        this rhythm. If you don’t seem to have enough time, make your passes
        loftier and do your selfzip a little bit quicker. You can also start by
        having juggler A skip his or her first self-zip. Juggler A would start
        with a pass in response to juggler B’s opening pass."
)
# 13  3.4
Pattern.create!(
  title: "Parsnip",
  num_jugglers: 2,
  num_clubs: 5,
  diagram_url: '/assets/3-4.png',
  body: "As juggler A, start with two clubs in your
        right hand and one club in your left hand. Your sequence of throws is
        pass, pass, zip, pass, zip. The passes are lofty straight single passes.
        Start with a right hand pass to your partner’s left hand. As juggler B,
        start with one club in your right hand and one club in your left hand.
        Your sequence of throws is pass, zip, pass, pass, zip. The passes are
        lofty crossing single passes. Start with a right hand pass to your
        partner’s right hand. Make your first throw half way between your
        partner’s first and second throws. Parsnip is four hand siteswap 77722."
)
# 14  4.1
Pattern.create!(
  title: "Passing From a Cascade",
  num_jugglers: 2,
  num_clubs: 6,
  # diagram_url: ,
  body: "Start by facing each other and juggling a three club cascade at the
        same time and speed. Make right hand throws at the same time and make
        left hand throws at the same time. On a passing beat, your right hand
        passes a club to your partner’s left hand and your partner’s right hand
        passes to your left hand. The hole that you create! in your cascade by
        passing a club gets filled by the club that your partner passes to you.
        In this way, you can continue your three club cascade after the passing
        beat. The pass replaces a single self throw, so it must spend the same
        amount of time in the air as a single self throw. It is called a single
        pass. It should make one rotation as it flies from you to your partner.
        Physically fitting the pass into your cascade can be a challenge. As you
        juggle a three club cascade, when your right hand throws to your left,
        you move your right hand to the left and make the throw underneath and
        to the left of the incoming club. That way your successive clubs do not
        collide. When you make a pass, you want your club to go from your right
        hand forward to your partner’s left hand. Practice keeping your right
        hand pass directly underneath the incoming club, or slightly inside of
        your incoming self. You may need to slow down your cascade and loft your
        throws so that you have room to fit the pass underneath your incoming
        club. Make sure that you keep your shoulders squared up with your
        partner, don’t be tempted to face slightly to the right and cheat,
        throwing your pass to the left of your cascade. For the next few
        rhythms, start with two clubs in your right hand and one club in your
        left hand. Throw straight passes, and start at the same time with a
        right hand pass."
)
# 15  4.1.1
Pattern.create!(
  title: "Four Count",
  num_jugglers: 2,
  num_clubs: 6,
  diagram_url: '/assets/4-1-1.png',
  body: "The first rhythm that most jugglers
        learn when starting to pass clubs is four count, also known as every
        others, since every other right hand throw is a passing beat. It is
        called four count because every fourth throw is a passing beat. Starting
        with a right-hand pass, you and your partner both juggle right pass,
        left self, right self, left self, right pass, left self, right self,
        left self."
)
# 16  4.1.2
Pattern.create!(
  title: "Three Count",
  num_jugglers: 2,
  num_clubs: 6,
  diagram_url: '/assets/4-1-2.png',
  body: "Before attempting three count, you should be comfortable making passes with your left hand.
Three count is popular among jugglers who wish to pass
with both their right and left hands. Three count is sometimes
referred to as a Waltz because it has three beats per
cycle. Starting with a right-hand pass, you and your partner
both juggle right pass, left self, right self, left pass, right self,
left self."
)
# 17  4.1.3
Pattern.create!(
  title: "Two Count",
  num_jugglers: 2,
  num_clubs: 6,
  diagram_url: '/assets/4-1-3.png',
  body: "The two count rhythm is very similar to the four count
rhythm in that all of the passes are made by the same hand.
Two count is sometimes referred to as everies since every
right hand throw is a passing beat. Starting with a right
hand pass, you and your partner both juggle right pass, left
self, right pass, left self. Two count is more challenging than
four count because you do not have time to stabilize your
cascade between passes; every right hand throw is a pass."
)
# 18  4.1.4
Pattern.create!(
  title: "Double Three Count",
  num_jugglers: 2,
  num_clubs: 6,
  diagram_url: '/assets/4-1-4.png',
  body: "Double three count is sometimes referred to as pass
pass self because that is the sequence of throws you need
to make. This is the first rhythm where you have to pass
a club around an incoming pass. Starting with your right
hand, you and your partner both make a right hand pass.
Your very next throw is a left hand pass. Your left hand has
an incoming club arriving from you partner and you need
to make sure the two clubs to not collide. The best way to
accomplish this is to throw your pass inside of the incoming
club and angle it slightly outward so that your partner can
do the same. For a pass with your right hand, you want to
pass the club so that it travels to the left of the incoming
club. In the same way, you want passes from your left hand
to travel just to the right of incoming clubs."
)
# 19  4.1.5
Pattern.create!(
  title: "Ultimates (6 Club)",
  num_jugglers: 2,
  num_clubs: 6,
  diagram_url: '/assets/4-1-5.png',
  body: "Ultimates are sometimes referred to as one count; every
throw you make is a pass to your partner. Your right hand
and your partner’s left hand are juggling three clubs while
your left hand and your partner’s right hand are independently
juggling three clubs. The collision point described in
the section on double three count is now present on every
throw. In order to keep the rhythm stable, it is very important
to make your throws from the inside of your body to
the outside so that your partner has room to make his or
her throws in the same manner."
)
# 20  4.2
Pattern.create!(
  title: "78474",
  num_jugglers: 2,
  num_clubs: 6,
  diagram_url: '/assets/4-2.png',
  body: "78474 is a good first six club siteswap. You make three
throws and then hold for two beats. There is room in the
pattern to fudge the tempo a little bit if you get ahead or
fall behind.
As juggler A, start with two clubs in your right hand and
one club in your left hand. Your sequence of throws is pass,
hold, hold, heff, pass. The passes are straight lofty single
passes. Start with a right hand pass to your partner’s left
hand and then wait for your partner to pass to you while
you hold onto one club in each hand. You should wait for
two beats. When your partner throws a pass to your left
hand, respond by throwing a left hand heff, a right hand
pass, and then restart the sequence with a left hand pass.
As juggler B, start with two clubs in your right hand and
one club in your left hand. Your sequence of throws is heff,
pass, pass, hold, hold. The passes are crossing lofty single
passes. Start with a right hand heff. Make your first throw
a moment after your partner makes his or her first throw.
Follow your first heff with a pass from your left hand to your
partner’s left hand and a pass from your right hand to your
partner’s right hand. Wait with a club in each hand for two
beats. When your partner throws a pass to your left hand,
start the sequence again with a left hand heff."
)
# 21  4.3
Pattern.create!(
  title: "WhyNot",
  num_jugglers: 2,
  num_clubs: 6,
  diagram_url: '/assets/4-3.png',
  body: "WhyNot is a complicated rhythm that uses four different
types of throws.
As juggler A, start with two clubs in your right hand and
one club in your left hand. Your sequence of throws is pass,
heff, zip, pass, self. The passes are straight lofty passes.
Start with a right hand pass to your partner’s left hand.
The heff and zip are the same type of throw as you make
when juggling 441.
As juggler B, start with two clubs in your right hand and
one club in your left hand. Your sequence of throws is pass,
self, pass, heff, zip. The passes are lofty crossing passes.
Start with a right hand pass to your partner’s right hand.
Make you first throw half way between your partners first
and second throws.
WhyNot is four hand siteswap 77862."
)
# 22  4.4
Pattern.create!(
  title: "NotWhy",
  num_jugglers: 2,
  num_clubs: 6,
  diagram_url: '/assets/4-4.png',
  body: "NotWhy is very similar to WhyNot. NotWhy uses the
same combination of throws, but in a different order.
As juggler A, start with one club in your right hand and
two clubs in your left hand. Your sequence of throws is pass, zip, self, pass, heff. The passes are straight lofty passes.
Start with a right hand pass to your partner’s left hand.
As juggler B, start with two clubs in your right hand and
one club in your left hand. Your sequence of throws is pass,
heff, pass, zip, self. The passes are crossing lofty passes.
Start with a right hand pass to your partner’s right hand.
Make your first throw half way between your partner’s first
and second throws.
Once you and your partner are comfortable with both
WhyNot and NotWhy, you can combine the two. One person
can be juggler A as in WhyNot and the other can be juggler
B as in NotWhy (or vice versa).
NotWhy is four hand siteswap 77286."
)
# 23  4.5
Pattern.create!(
  title: "Maybe",
  num_jugglers: 2,
  num_clubs: 6,
  diagram_url: '/assets/4-5.png',
  body: "Maybe is another rhythm that is similar to WhyNot. It
uses the same combination of throws, but in a different order.
As juggler A, start with two clubs in your right hand and
one club in your left hand. Your sequence of throws is pass,
self, zip, heff, pass. The passes are straight lofty passes.
Start with a right hand pass to your partner’s left hand.
As juggler B, start with two clubs in your right hand and
one club in your left hand. Your sequence of throws is heff,
pass, pass, self, zip. The passes are crossing lofty passes.
Start with a right hand heff. Make your first throw half
way between your partner’s first and second throws.
Maybe is four hand siteswap 78672."
)
# 24  4.6
Pattern.create!(
  title: "77772",
  num_jugglers: 2,
  num_clubs: 6,
  diagram_url: '/assets/4-6.png',
  body: "77772 is a four hand siteswap that is very similar to
seven club ultimates except that every fifth throw is a zip
instead of a pass.
As juggler A, start with two clubs in your right hand and
one club in your left hand. Your sequence of throws is pass,
pass, zip, pass, pass. The passes are straight lofty passes.
Start with a right hand pass to your partner’s left hand.
As juggler B, start with two clubs in your right hand and
one club in your left hand. Your sequence of throws is pass,
pass, pass, pass, zip. The passes are crossing lofty passes.
Start with a right hand pass to your partner’s right hand.
Make your first throw half way between your partner’s first
and second throws."
)
# 25  4.7
Pattern.create!(
  title: "75666",
  num_jugglers: 2,
  num_clubs: 6,
  diagram_url: '/assets/4-7.png',
  body: "75666 is a challenging pattern because you must throw
single passes and joe passes from both hands and either
your passes or your joes will need to cross depending on
which position you are in. It will take some time to develop
the muscle memory to consistently make the correct throws.
As juggler A, start with two clubs in your right hand and
one club in your left hand. Your sequence of throws is pass,
self, self, joe, self. The pass is a straight lofty pass. The joe is
crossing. Start with a right hand pass to your partner’s left
hand.
As juggler B, start with two clubs in your right hand and
one club in your left hand. Your sequence of throws is joe,
self, pass, self, self. The pass is a lofty crossing pass. The joe
is straight. Start with a right hand joe to your partner’s
left hand. Make your first throw half way between your
partner’s first and second throws."
)
# 26  4.8
Pattern.create!(
  title: "756",
  num_jugglers: 2,
  num_clubs: 6,
  diagram_url: '/assets/4-8.png',
  body: "756 is a four hand siteswap that is very similar to 75666
but with fewer self throws.
As juggler A, start with two clubs in your right hand and
one club in your left hand. Your sequence of throws is pass, self, joe. The pass is a straight lofty pass. The joe is crossing.
Start with a right hand pass to your partner’s left hand.
As juggler B, start with two clubs in your right hand
and one club in your left hand. Your sequence of throws
is joe, pass, self. The pass is a lofty crossing pass. The joe
is straight. Start with a right hand joe to your partner’s left
hand. Make your first throw half way between your partner’s
first and second throws.
For both jugglers, you will be throwing a joe immediately
followed by a pass to the same hand. It is very important
that the pass be thrown with enough extra height so that
your partner has time deal with two clubs arriving in the
same hand."
)
# 27  4.9
Pattern.create!(
  title: "972",
  num_jugglers: 2,
  num_clubs: 6,
  diagram_url: '/assets/4-9.png',
  body: "972 is a challenging four hand siteswap that requires
each juggler to make double passes and single passes.
As juggler A, start with one club in your right hand and
two clubs in your left hand. Your sequence of throws is double
pass, zip, single pass. The double pass is a lofty crossing
double pass. The single pass is a lofty straight pass. Start
with a right hand double pass to your partner’s right hand.
As juggler B, start with two clubs in your right hand and
one club in your left hand. Your sequence of throws is single
pass, double pass, zip. The single pass is a lofty crossing
pass. The double pass is a lofty straight double pass. Start
with a right hand pass to your partner’s right hand. Make
your first throw half way between your partner’s first and
second throws."
)
# 28
Pattern.create!(
  title: "Joe",
  num_jugglers: 2,
  num_clubs: 1,
  # diagram_url: ,
  body: "A joe is a pass that takes less time to get to your partner than a
        single pass. A joe completes about a quarter rotation between leaving
        your hand and arriving in your partner’s hand. To throw a joe, hold the
        club by the handle just like you are going to throw a single pass, but
        when you swing your arm up, lift the back of the handle with your wrist
        so that it barely rotates as it leaves your hand. The club should leave
        your hand with the handle pointing back at you and as the club flies to
        your partner the handle should rotate down into your partners hand. As
        you put joes into a passing rhythm, you will have a tendency to over
        spin them. Try and throw the joe with almost no rotation at all."
)
# 29  5.1
Pattern.create!(
  title: "Two Count (Doubles)",
  num_jugglers: 2,
  num_clubs: 7,
  diagram_url: '/assets/5-1.png',
  body: "Two count in doubles is the rhythm to start with for
passing seven clubs and getting comfortable throwing double
passes. This might be the first time you throw a double
pass. With a club in your right hand, make the same throwing
motion as for a single pass, but release the club later
in the swing of your arm so that it flies up in an arc before
coming back down to your partner’s left hand. The club
should make two full rotations and arrive in your partner’s
left hand with the handle pointing down. A double pass
spends the same amount of time in the air as a heff.
As juggler A, start with two clubs in your right hand and
two clubs in your left hand. Your sequence of throws is double pass, single self. Start with a right hand double pass.
Your right hand always throws a double pass and your left
hand always throws a self.
As juggler B, start with one club in your right hand and
two clubs in your left hand. Your sequence of throws is single
self, double pass, starting with the left. Start with a left
hand self as your partner makes his or her first throw. On
the next beat, your partner throws a self and you throw a
right hand double pass.1 Your right hand always throws a
double pass and your left hand always throws a self."
)
# 30  5.2
Pattern.create!(
  title: "Two Count (Singles)",
  num_jugglers: 2,
  num_clubs: 7,
  diagram_url: '/assets/5-2.png',
  body: "Seven club singles uses a galloped tempo, similar to the
tempo for juggling four clubs in a half shower with doubles. The time between two right hand passes does not
change, but the time after a right hand pass before the next
left hand self is half as long. Throw right-left in rapid succession,
and then pause for a moment before doing it again.
Both the pass and the self throw need to be lofty.
As juggler A, start with two clubs in your right hand and
two clubs in your left hand. Start with a right hand pass
quickly followed by a left hand self. Make your next right
hand pass after a short delay and just in time to catch your
first self throw. You can also start with two clubs in your right hand and one club in
your left hand; skip the first self throw and make your first pass as your
partner makes his or her second throw. As juggler B, start with two clubs in your right hand and
one club in your left hand. Start with a right hand pass
quickly followed by a left hand self. Make your first pass
right after your partner makes his or her first left hand self.
Try to fit both your pass and your self in the time between
your partner’s self throw and his or her next pass."
)
# 31  5.3
Pattern.create!(
  title: "Three Count (Doubles)",
  num_jugglers: 2,
  num_clubs: 7,
  diagram_url: '/assets/5-3.png',
  body: "Seven clubs in three count with doubles uses a lofty double
pass.
As juggler A, start with two clubs in your right hand and
two clubs in your left hand. Your sequence of throws is pass,
self, self. The pass is a lofty crossing double pass. Start with
a right hand double pass to your partner’s right hand.
As juggler B, start with two clubs in your right hand and
one club in your left hand. Your sequence of throws is self,
pass, self. The pass is a lofty straight double pass. Start
with a right hand self. Make your first throw half way between
your partner’s first and second throws.
There is an alternate way to start this pattern that many
jugglers may find easier. Juggler A starts as before but
makes straight passes. Juggler B makes crossing passes
and starts with a right hand pass half way between juggler
A’s second and third throws.
Seven club three count with doubles is four hand siteswap
966."
)
# 32  5.4
Pattern.create!(
  title: "Ultimates",
  num_jugglers: 2,
  num_clubs: 7,
  diagram_url: '/assets/5-4.png',
  body: "Passing seven club ultimtes can be an intimidating pattern
but it is pretty accessible and very satisfying to juggle.
Every throw is a lofty single pass.
As juggler A, start with two clubs in your right hand and
two clubs in your left hand. All of your throws are lofty
straight passes. Start with a right hand pass to your partner’s
left hand.
As juggler B, start with two clubs in your right hand and
one club in your left hand. All of your throws are lofty crossing
passes. Start with a right hand pass to your partner’s
right hand. Make your first throw half way between your
partner’s first and second throws.
Seven club ultimates is four hand siteswap 7."
)
# 33  5.5
Pattern.create!(
  title: "Four Count (Triples)",
  num_jugglers: 2,
  num_clubs: 7,
  diagram_url: '/assets/5-5.png',
  body: "Passing seven clubs in four count is a good rhythm for
learning to make a triple pass. Just as a double pass spends
an extra beat in the air and makes one additional rotation compared to a single pass, the triple pass spends two additional
beats in the air and makes three full rotations before
arriving at your partner’s hand. You will need to put noticeably
more power on your triple pass to get it high enough.
Be sure not to put too much spin on the club; it should rotate
at the same speed as a single pass or a double pass. As
you and your partner practice throwing a good triple pass
be sure to give each other feedback on how the club arrives.
Good feedback makes it easier to make corrections to these
very high passes.
As juggler A, start with two clubs in your right hand and
two clubs in your left hand. Your sequence of throws is pass,
self, self, self. The pass is a straight triple pass. Start with a
right hand triple pass to your partner’s left hand.
As juggler B, start with two clubs in your right hand and
one club in your left hand. Your sequence of throws is self,
self, pass, self. The pass is a straight triple pass. Start with
a right hand self throw as your partner makes his or her
first throw."
)
# 34  5.6.1
Pattern.create!(
  title: "Six Count Popcorn",
  num_jugglers: 2,
  num_clubs: 7,
  diagram_url: '/assets/5-6-1.png',
  body: "Six count Popcorn is a visually interesting rhythm and it
is a lot of fun to juggle. It should also be pretty easy to pick
up with just a little bit of practice. Your left hand always
makes single self throws so you only need to keep track of
what your right hand does. The passes are all right hand
straight double passes.
As juggler A, start with two clubs in your right hand and
two clubs in your left hand. Your sequence of throws is double
pass, self, self, self, triple self, self. Just counting the right
hand, throw double pass, single self, triple self. Start with
a double pass from your right hand to your partner’s left
hand.
As juggler B, start with one club in your right hand and
two clubs in your left hand. Your sequence of throws is self,
triple self, self, double pass, self, self, starting with the left.
Just counting the right hand, throw triple self, double pass,
single self. Start with a left hand self. Make your first throw
as your partner makes his or her first throw."
)
# 35  5.6.2
Pattern.create!(
  title: "Five Count Popcorn",
  num_jugglers: 2,
  num_clubs: 7,
  diagram_url: '/assets/5-6-2.png',
  body: "Five count Popcorn is very similar to six count Popcorn
except you must use both your right hand and left hand to
make self triples and passes.
As juggler A, start with two clubs in your right hand and
two clubs in your left hand. Your sequence of throws is pass,
self, self, triple, self. The pass is a lofty straight single pass.
The triple is a triple self. Start with a right hand pass to
your partner’s left hand.
As juggler B, start with two clubs in your right hand and
one club in your left hand. Your sequence of throws is triple,
self, pass, self, self. The triple is a triple self. The pass is a
lofty crossing single pass. Start with a right hand triple self.
Make your first throw half way between your partner’s first
and second throws.
Five count Popcorn is four hand siteswap 7A666"
)
# 36  5.6.3
Pattern.create!(
  title: "Four Count Popcorn",
  num_jugglers: 2,
  num_clubs: 7,
  diagram_url: '/assets/5-6-3.png',
  body: "Four count Popcorn offers a particular challenge because
your right hand alternates between throwing a triple self
and a single pass. Your tendency will be to put your pass
much higher than a single pass. Focus on keeping your pass
low and you should not have much trouble.
As juggler A, start with two clubs in your right hand and
one club in your left hand. Your sequence of throws is triple,
self, pass, self. The triple is a right hand triple self. The pass
is a right hand straight single pass. Start with a right hand triple self.
As juggler B, start with two clubs in your right hand and
two clubs in your left hand. Your sequence of throws is pass,
self, triple, self. The pass is a right hand straight single pass.
The triple is a right hand triple self. Start with a right hand
pass to your partner’s left hand. Make your first throw as
your partner makes his or her first throw."
)
# 37  5.6.4
Pattern.create!(
  title: "Three Count Popcorn",
  num_jugglers: 2,
  num_clubs: 7,
  diagram_url: '/assets/5-6-4.png',
  body: "Three count Popcorn is also called French three count. It
does not use the triple-single pair of throws. The extra club
goes back and forth so often that each juggler only throws a
heff and a single self throw in addition to the pass on each
cycle.
As juggler A, start with two clubs in your right hand and
two clubs in your left hand. Your sequence of throws is heff,
pass, self. The pass is a lofty straight single pass. Start with
a right hand heff.
As juggler B, start with two clubs in your right hand and
one club in your left hand. Your sequence of throws is self,
heff, pass. The pass is a lofty crossing single pass. Start with
a right hand self. Make your first throw half way between
your partner’s first and second throws.
Three count Popcorn is four hand siteswap 867."
)
# 38  5.7
Pattern.create!(
  title: "Techno",
  num_jugglers: 2,
  num_clubs: 7,
  diagram_url: '/assets/5-7.png',
  body: "Techno is a simultaneous rhythm. You need to throw a
pass and a self at the same time on every other beat.
As juggler A, start with two clubs in your right hand and
two clubs in your left hand. Your sequence of throws is right
pass and left self, right self, left pass and right self, left self.
The passes are straight. All throws are singles. Start with
a right pass and left self.
As juggler B, start with one club in your right hand and
two clubs in your left hand. Your sequence of throws is left
self, right pass and left self, right self, left pass and right self.
The passes are crossing. All throws are singles. Start with
a left self. Make your first throw at the same time as your
partner makes his or her first pair of throws.
When you are starting to work on Techno, make the pass
a moment earlier than the simultaneous self. This slight
gallop will make it easier to manage the rhythm. As you get
more comfortable, work on removing the gallop and making
the throws at the same time."
)
# 39  5.8
Pattern.create!(
  title: "885",
  num_jugglers: 2,
  num_clubs: 7,
  diagram_url: '/assets/5-8.png',
  body: "As juggler A, start with two clubs in your right hand and
two clubs in your left hand. Your sequence of throws is heff,
joe, heff. The joe is crossing. Start with a right hand heff.
As juggler B, start with two clubs in your right hand and
one club in your left hand. Your sequence of throws is heff,
heff, joe. The joe is straight. Start with a right hand heff.
Make your first throw half way between your partner’s first
and second throws.
You may find a tendency to over-spin your joes as the
rest of your throws are so much higher. You can try to focus
on throwing your joes almost flat to take off the extra
spin. Being very comfortable with 756 will help reduce this
tendency"
)
# 40  5.9
Pattern.create!(
  title: "894",
  num_jugglers: 2,
  num_clubs: 7,
  diagram_url: '/assets/5-9.png',
  body: "As juggler A, start with two clubs in your right hand and
one club in your left hand. Your sequence of throws is heff,
hold, pass. The pass is a lofty crossing double pass. Start
with a right hand heff.
As juggler B, start with two clubs in your right hand and
two clubs in your left hand. Your sequence of throws is pass,
heff, hold. The pass is a lofty straight double pass. Start
with a right hand pass to your partner’s left hand. Make
your first throw a moment after your partner makes his or
her first heff."
)
# 41  5.10
Pattern.create!(
  title: "96677",
  num_jugglers: 2,
  num_clubs: 7,
  diagram_url: '/assets/5-10.png',
  body: "As juggler A, start with two clubs in your right hand and
two clubs in your left hand. Your sequence of throws is double
pass, self, single pass, self, single pass. The double pass
is a lofty crossing double pass. The single pass is a lofty
straight single pass. Start with a right hand double pass to
your partner’s right hand.
As juggler B, start with two clubs in your right hand and
one club in your left hand. Your sequence of throws is self,
single pass, double pass, self, single pass. The double pass
is a lofty straight double pass. The single pass is a lofty
crossing single pass. Start with a right hand self. Make
your first throw half way between your partner’s first and
second throws.
If you are comfortable with 972, you will be familiar with
the combinations of crossing and straight, double and single
passes that are challenging with this rhythm. The remaining
challenge is simply remembering your sequence of
throws and developing the correct muscle memory."
)
# 42  5.11
Pattern.create!(
  title: "975",
  num_jugglers: 2,
  num_clubs: 7,
  diagram_url: '/assets/5-11.png',
  body: "975 can be hard to get your head around at first. All of the throws are passes and there are three very different
passing throws, some of which cross and some of which are
straight. Once you get it down, it is a fun rhythm.
As juggler A, start with two clubs in your right hand and
two clubs in your left hand. Your sequence of throws is double,
joe, single. The double is a lofty crossing double pass.
The joe is crossing. The single is a lofty straight single pass.
Start with a right hand double pass to your partner’s right
hand. You may find it easier after you have made your first
double pass to think about throwing joe, single, double, all
to your partner’s left hand, and then again throwing to your
partner’s right hand.
As juggler B, start with two clubs in your right hand and
one club in your left hand. Your sequence of throws is single,
double, joe. The single is a lofty crossing single pass. The
double is a lofty straight double pass. The joe is straight.
Start with a right hand single pass to your partner’s right
hand. Make your first throw half way between your partner’s
first and second throws. You may find it easier after
you have thrown your first two passes to think about throwing
joe, single, double all to your partner’s left hand, and
then again throwing to your partner’s right hand.
If you can keep your joes low and your double passes lofty
then you should be able to pull off 975."
)
# 43  6.1
Pattern.create!(
  title: "Two Count (Doubles)",
  num_jugglers: 2,
  num_clubs: 8,
  diagram_url: '/assets/6-1.png',
  body: "Passing eight clubs in two count with doubles is the first
rhythm to learn for passing eight clubs. You need to throw
lofty double passes and lofty single self throws in a galloped
tempo. Both jugglers do the same thing at the same time.
Start with two clubs in your right hand and two clubs
in your left hand. Your right hand throws a lofty straight
double pass. Your left hand throws a lofty single self. Start
with a right hand pass to your partner’s left hand. Quickly
follow your pass with a left hand self and then pause for a
moment before making your next double pass.
The galloped rhythm is identical to juggling four clubs in a half shower with doubles, but you should be able to
learn this rhythm even if you struggle with a four club half
shower."
)
# 44  6.2
Pattern.create!(
  title: "Two Count (Triples)",
  num_jugglers: 2,
  num_clubs: 8,
  diagram_url: '/assets/6-2.png',
  body: "Passing eight clubs in two count with triples is more
challenging than using doubles, but the even tempo can be
more relaxing. Once you get comfortable with this rhythm,
you may be surprised that there can be so much time while
you keep eight clubs in the air. Both jugglers do the same
thing at the same time.
Start with two clubs in your right hand and two clubs
in your left hand. Your right hand throws a straight triple
pass. Your left hand throws a single self. Start with a right
hand pass."
)
# 45  6.3
Pattern.create!(
  title: "Singles",
  num_jugglers: 2,
  num_clubs: 8,
  diagram_url: '/assets/6-3.png',
  body: "Eight club singles is a fun rhythm where all four hands
throw at the same time. The synchronous rhythm can be
challenging. Both jugglers do the same thing at the same
time.
Start with two clubs in your right hand and two clubs in
your left hand. Your right hand throws a lofty single pass.
Your left hand throws a lofty self. Your right and left hands
both throw on every beat. All four thrown clubs should
reach the same height on every beat. As your partner’s
pass and your self arrive in your hands, make the next pair
of throws. If the rhythm feels too fast, make your throws
loftier so you have more time. Make sure your right hand
passes are underneath your left hand self throws and inside.
If your clubs collide when you try to pass underneath your
self, make all of your throws loftier to make more space."
)
# 46  6.4
Pattern.create!(
  title: "Double Three Count (Doubles)",
  num_jugglers: 2,
  num_clubs: 8,
  diagram_url: '/assets/6-4.png',
  body: "Double three count with doubles is similar to seven clubs
in three count with doubles but significantly more challenging.
You need to have much more consistent double passes
out of both your left and right hands as you and your partner
now have one self to recover from two passes instead of
two selves to recover from one pass.
As juggler A, start with two clubs in your right hand and two clubs in your left hand. Your sequence of throws is pass,
self, pass. The passes are lofty crossing doubles. Start with
a right hand pass to your partner’s right hand.
As juggler B, start with two clubs in your right hand and
two clubs in your left hand. Your sequence of throws is pass,
pass, self. The passes are lofty straight doubles. Start with
a right hand pass to your partner’s left hand. Make your
first throw half way between your partner’s first and second
throws.
Eight clubs in double three count with doubles is four
hand siteswap 996."
)
# 47  6.5
Pattern.create!(
  title: "978",
  num_jugglers: 2,
  num_clubs: 8,
  diagram_url: '/assets/6-5.png',
  body: "978 is just like 975 except instead of throwing a joe you
throw a heff. You might find this easier than 975 if you have
trouble keeping your joes from getting over spun but more
likely you’ll find it more challenging as there is yet another
club up high in the air to keep track of.
As juggler A, start with two clubs in your right hand and
two clubs in your left hand. Your sequence of throws is double
pass, heff, single pass. The double pass is a lofty crossing
double pass. The single pass is a lofty straight pass. Start
with a right hand double pass to your partner’s right hand.
As juggler B, start with two clubs in your right hand and
two clubs in your left hand. Your sequence of throws is single
pass, double pass, heff. The double pass is a lofty straight
double pass. The single pass is a lofty crossing pass. Start with a single pass from your right hand to your partner’s
right hand. Make your first throw halfway between your
partner’s first and second throws."
)
# 48  7.1
Pattern.create!(
  title: "Double-Single",
  num_jugglers: 2,
  num_clubs: 9,
  diagram_url: '/assets/7-1.png',
  body: "Nine clubs double-single requires you to make a simultaneous
pair of throws from your two hands. Your right hand
makes a double pass to your partner’s left hand as your left
hand makes a single self throw to your right hand. The simultaneous
throw is difficult and it will take some practice,
but the double pass is a little bit easier to make consistently
than the triple pass required for nine clubs triple-single.
The key to this pattern is making a high self throw so that
you have enough time to make the next pair of throws.
As juggler A, start with two clubs in your right hand and three clubs in your left hand. Your right hand makes lofty
straight double passes. Your left hand makes lofty single
self throws. Both hands throw at the same time. Start with
a right hand double pass and a left hand single self. An alternate start is to put three clubs in your right hand and two clubs
in your left hand. On your first pass, only make a double pass with your
right hand and do not make a self throw with your left hand. On every
following beat, throw both a double pass and a single self.
As juggler B, start with two clubs in your right hand and
two clubs in your left hand. Your right hand makes lofty
straight double passes. Your left hand makes lofty single
self throws. Both hands throw at the same time. Start with
a right hand double pass and a left hand single self. Make
your first pair of throw half way between your partner’s first
and second pair of throws."
)
# 49  7.2
Pattern.create!(
  title: "Triple-Single",
  num_jugglers: 2,
  num_clubs: 9,
  diagram_url: '/assets/7-2.png',
  body: "You may find nine club triple-single to be easier than
nine club double-single if you are very comfortable with
triple passes. This rhythm does not require a simultaneous
pair of throws. The tempo for nine club triple-single is
galloped, as in eight club two count with doubles or seven
club two count with singles.
As juggler A, start with two clubs in your right hand and
three clubs in your left hand. Your right hand throws a
lofty straight triple pass. Your left hand throws a lofty self. Start with a right hand pass and quickly follow it with a left
hand self. Pause for a moment and then throw your next
right hand pass. An alternate start is to put three clubs in your right hand and two clubs
in your left hand. After your first triple pass, skip the first self throw. After
that, throw a triple pass and follow it with a single self as usual.
As juggler B, start with two clubs in your right hand and
two clubs in your left hand. Your right hand throws a lofty
straight triple pass. Your left hand throws a lofty self. Start
with a right hand pass and quickly follow it with a left hand
self. Make your first pass just after your partner throws his
or her first self. Try and fit both your pass and your self in
the time between your partner’s left hand self and his or her
following right hand pass."
)
# 50  7.3
Pattern.create!(
  title: "Ultimates",
  num_jugglers: 2,
  num_clubs: 9,
  diagram_url: '/assets/7-3.png',
  body: "Nine club ultimates is the natural progression from 7
club three count and eight club double three count.
It is a visually spectacular rhythm with a lot of clubs flying
between you and your partner. It is also a fairly simple
rhythm; every throw is a lofty double pass. One juggler
makes crossing passes while the other makes straight
passes.
As juggler A, start with three clubs in your right hand
and two clubs in your left hand. All of your throws are lofty
crossing double passes. Start with a right hand pass to your
partner’s right hand.
As juggler B, start with two clubs in your right hand and
two clubs in your left hand. All of your throws are lofty
straight double passes. Start with a right hand pass to your
partner’s left hand. Make your first throw half way between your partner’s first two throws.
Nine club ultimtes is four hand siteswap 9"
)
# 51  8.1
Pattern.create!(
  title: "Ultimates",
  num_jugglers: 3,
  num_clubs: 8,
  # diagram_url: ,
  body: "Eight club ultimates with three people is a fun and relatively
easy rhythm for getting the feel of passing with three
people. Every throw is a crossing single pass to the juggler
on your left. Orient yourselves counter-clockwise in order:
juggler A, juggler B, juggler C.
As juggler A, start with two clubs in your right hand and
one club in your left hand. Start with a right hand pass
to juggler C’s right hand. As soon as juggler B’s first pass
is incoming to your left hand, make a left hand throw to
the left hand of juggler C. Continue to make a pass out of alternating hands to juggler C as juggler B sends clubs to
you.
As juggler B, start with one club in your right hand and
two clubs in your left hand. Start with a left hand pass to
juggler A’s left hand half way between juggler A’s first throw
and juggler C’s first throw. As soon as juggler C’s first pass
is incoming to your right hand, make a pass from your right
hand to juggler A’s right hand. Continue to make a pass out
of alternating hands to juggler A as juggler C sends clubs to
you.
As juggler C, start with one club in your right hand and
one club in your left hand. Juggler A will start with a pass
to your right hand. Respond to that pass with a right hand
pass to juggler B’s right hand. Do the same thing as the
next pass comes to your left hand.
Once you’ve gotten comfortable passing eight ultimates,
try a slight variation. Instead of making single passes,
throw joe passes instead. The rhythm will get faster but
you can practice putting a little bit of loft on your joes to
slow it down.
Eight club ultimates is six hand siteswap 8."
)
# 52  8.2
Pattern.create!(
  title: "9689",
  num_jugglers: 3,
  num_clubs: 8,
  # diagram_url: ,
  body: "9689 is a good pattern for incorporating the subtle differences
in throw height between a lofted joe and a self. Orient
yourselves counter-clockwise in order: juggler A, juggler B,
juggler C. As juggler A, start with two clubs in your right hand and
one club in your left hand. Your sequence of throws is self,
self, joe, hold. The joe is slightly lofty and crossing to juggler
C. Start with a right hand self. After your hold, juggler B
throws you a joe. Respond to it by making a right hand self
so that you can catch the club and restart the sequence.
As juggler B, start with one club in your right hand and
one club in your left hand. Your sequence of throws is self,
self, joe, hold. The joe is slight lofty and crossing to juggler
A. To start, wait for juggler C to throw a joe to your right
hand. Respond to it by making a right hand self so that you
can catch the club and pick up the sequence.
As juggler C, start with two clubs in your right hand and
one club in your left hand. Your sequence of throws is joe,
hold, self, self. The joe is slightly lofty and crossing to juggler
B. Start with a right hand joe to juggler B’s right hand.
Make your first throw a moment before juggler A makes his
or her second throw. Then wait for juggler A to throw a joe
to your right hand. Respond to it with a right hand self so
that your can catch the club. Make a left hand self and then
throw another right hand joe to restart the sequence.
Once you’re gotten comfortable with 9689, try throwing
quick single passes instead of joes. If that makes the
rhythm too fast, loft your self throws to slow down the whole
rhythm. Run the rhythm in the left handed variation by
switching left and right hands."
)
# 53  8.3
Pattern.create!(
  title: "96889",
  num_jugglers: 3,
  num_clubs: 8,
  # diagram_url: ,
  body: "96889 is very similar to 9689 but there is an additional
pass which makes the rhythm ambidextrous. Orient yourselves
counter-clockwise in order: juggler A, juggler B, juggler
C.
As juggler A, start with two clubs in your right hand and
one club in your left hand. Your sequence of throws is self,
joe, hold, self, joe. The joes are slightly lofty crossing joes to
juggler C. Start with a right hand self.
As juggler B, start with one club in your right hand and
one club in your left hand. Your sequence of throws is self,
joe, self, joe, hold. The joes are slightly lofty crossing joes to
juggler A. Start with a right hand self throw in response to
juggler C’s first joe to your right hand.
As juggler C, start with two clubs in your right hand and
one club in your left hand. Your sequence of throws is joe,
self, joe, hold, self. The joes are slightly lofty crossing joes
to juggler B. Start with a right hand joe to juggler B’s right
hand. Make your first throw just a moment before juggler A
makes his or her second throw."
)
# 54  8.4
Pattern.create!(
  title: "86C86",
  num_jugglers: 3,
  num_clubs: 8,
  # diagram_url: ,
  body: "Orient yourselves counter-clockwise in order: juggler A,
juggler B, juggler C.
As juggler A, start with two clubs in your right hand and
two clubs in your left hand. Your sequence of throws is pass,
pass, hold, hold, heff. The passes are quick single crossing
passes to juggler C. After the two passes, wait until you have a club incoming to one of your hands. Throw a heff from that
hand and catch the incoming club.
As juggler B, start with one club in your right hand and
one club in your left hand. Your sequence of throws is heff,
pass, pass, hold, hold, starting with the left. The passes are
quick single crossing passes to juggler A. Throw your first
heff from your left hand as a response to juggler C’s first
pass to your left hand. After the two passes, wait until juggler
C passes you a club; throw your next heff as a response.
As juggler C, start with one club in your right hand and
one club in your left hand. Your sequence of throws is heff,
pass, pass, hold, hold. The passes are quick single crossing
passes to juggler B. Throw your first heff from your right
hand as a response to juggler A’s first pass to your right
hand. After the two passes, wait until juggler A throws you
a club; throw your heff as a response."
)
# 55  8.5
Pattern.create!(
  title: "Three Person WhyNot",
  num_jugglers: 3,
  num_clubs: 8,
  # diagram_url: ,
  body: "Three person WhyNot is the same sequence of throws as
WhyNot except for the pass which must be made as a quick
pass or a lofty joe. Orient yourselves counter-clockwise in
order: juggler A, juggler B, juggler C.
As juggler A, start with two clubs in your right hand and
one club in your left hand. Your sequence of throws is self,
pass, heff, zip, pass. The passes are crossing single passes to
juggler C; they need to be a little bit quicker than your self
throws. Start with a right hand self. As juggler B, start with one club in your right hand and
one club in your left hand. Your sequence of throws is heff,
zip, pass, self, pass, starting with the left. The passes are
crossing single passes to juggler A; they need to be a little
bit quicker than your self throws. Start with a left hand heff
just a moment after juggler A’s first throw.
As juggler C, start with two clubs in your right hand and
one club in your left hand. Your sequence of throws is pass,
self, pass, heff, zip. The passes are crossing single passes
to juggler B; they need to be a little bit quicker than your
self throws. Start with a right hand pass half way between
juggler B’s first throw and juggler A’s second throw.
Three person WhyNot is six hand siteswap 9C883."
)
# 56  8.6
Pattern.create!(
  title: "Three Person NotWhy",
  num_jugglers: 3,
  num_clubs: 8,
  # diagram_url: ,
  body: "Three person NotWhy is the same sequence of throws as
NotWhy except for the pass which must be made as a quick
pass or a lofty joe. Orient yourselves counter-clockwise in
order: juggler A, juggler B, juggler C.
As juggler A, start with one club in your right hand and
two clubs in your left hand. Your sequence of throws is pass,
zip, self, pass, heff. The passes are crossing single passes to
juggler C; they need to be a little bit quicker than your self
throws. Start with a right hand pass.
As juggler B, start with one club in your right hand and
two clubs in your left hand. Your sequence of throws is self,
pass, heff, pass, zip, starting with the left. The passes are
crossing single passes to juggler A; they need to be a little bit quicker than your self throws. Start with a left hand
self. Make your first throw a moment after juggler A’s first
throw.
As juggler C, start with one club in your right hand and
one club in your left hand. Your sequence of throws is heff,
pass, zip, self, pass. The passes are crossing single passes
to juggler B; they need to be a little bit quicker than your
self throws. Start with a right hand heff. Make your first
throw half way between juggler B’s first throw and juggler
A’s second throw.
Individual jugglers can switch between WhyNot and
NotWhy, just like the two person versions. If you’re juggling
WhyNot as pass, self, pass, heff, zip you can switch to
NotWhy by juggling pass, heff, pass, zip, self.
Three person NotWhy is six hand siteswap 89C38."
)
# 57  8.7
Pattern.create!(
  title: "Three Person Maybe",
  num_jugglers: 3,
  num_clubs: 8,
  # diagram_url: ,
  body: "Three person Maybe is the same sequence of throws as
Maybe except for the pass which must be made as a quick
pass or a lofty joe. Orient yourselves counter-clockwise in
order: juggler A, juggler B, juggler C.
As juggler A, start with two clubs in your right hand and
two clubs in your left hand. Your sequence of throws is pass,
pass, self, zip, heff. The passes are crossing single passes to
juggler C; they need to be a little bit quicker than your self
throws. Start with a right hand pass.
As juggler B, start with one club in your right hand and
one club in your left hand. Your sequence of throws is self, zip, heff, pass, pass, starting with the left. The passes are
crossing single passes to juggler A; they need to be a little
bit quicker than your self throws. Start with a left hand
self. Make your first throw a moment after juggler A’s first
throw.
As juggler C, start with one club in your right hand and
one club in your left hand. Your sequence of throws is heff,
pass, pass, self, zip. The passes are crossing single passes
to juggler B; they need to be a little bit quicker than your
self throws. Start with a right hand heff. Make your first
throw half way between juggler B’s first throw and juggler
A’s second throw.
Three person Maybe is six hand siteswap 89C83."
)
# 58  9.1
Pattern.create!(
  title: "Passing From A Cascade",
  num_jugglers: 3,
  num_clubs: 9,
  # diagram_url: ,
  body: "Passing clubs with three people adds another level of
complexity. With two people, for any given pass you generally
have two choices: pass to your partner’s left hand or
right hand. With three people, for any given pass you have
four choices corresponding to your two partners’ four hands.
In addition to the new options, you have a physically wider
area you need to be able to pass to. The juggler on your left
and the juggler on your right are standing in two different
places and you must be able to make good passes to both of
those locations. Before diving into the complicated rhythms,
explore the different hands that you can throw to.
Start by orienting yourself and your partners in a triangle,
all facing the center of the triangle. With a club in
each hand, hold your arms out to your partners, pointing
the heads of your clubs at your partners; your clubs should
just touch. As you juggle, you may decide you are more comfortable
with a larger or smaller triangle, adjust as needed but try to keep your triangle even. No two jugglers should
be closer or further from each other than they are from the
third juggler.
There are two varieties of straight passes.
An outside pass is made from your left hand to the right
hand of the juggler to your left or it is made from your right
hand to the left hand of the juggler to your right. Outside
passes travel along the outside edges of the triangle formed
by you and your partners. You can all make right hand outside
passes at the same time in a four count or two count
rhythm. You can alternate right hand and left hand outside
passes in a three count or one count rhythm.
An inside pass is made from your left hand to the right
hand of the juggler on your right or it is made from your
right hand to the left hand of the juggler on your left. Inside
passes travel through the inside of the triangle formed by
you and your partners. You can all make right hand inside
passes at the same time in a four count or two count rhythm.
You can alternate right hand and left hand inside passes in
a three count or one count rhythm. When the three of you
make inside passes at the same time, the timing of your
throws is critical. You must throw at exactly the same time
in order to avoid collisions between your passes. The path
of each club crosses the paths of the other two clubs so if it
is ahead or behind, it will most likely collide with another
club.
There are also two varieties of crossing passes.
An extreme pass is made from your right hand to the
right hand of the juggler on your left or from your left hand
to the left hand of the juggler on your right.
An inside crossing pass is made from your right hand to
the right hand of the juggler on your right or from your left
hand to the left hand of the juggler on your left.
The three of you can juggle inside and outside passes in
the same timing as the rhythms in section 4.1. On a passing
beat, all three jugglers throws an inside pass or all three
jugglers throw an outside pass."
)
# 59  9.2
Pattern.create!(
  title: "Pass Pass Self",
  num_jugglers: 3,
  num_clubs: 9,
  # diagram_url: ,
  body: "Pass pass self is a slightly ambiguous name for this
rhythm. With three people you can all throw insides (or
all throw outsides) at the same time in a pass, pass, self
rhythm. This rhythm is more interesting. All three of you
are still doing the same sequence of throws as each other
but you are offset. The basic sequence is inside, inside,
self, outside, outside, self. On every pass, two jugglers pass
to each other; one juggler throws an inside pass and the
other throws an outside pass. The third juggler makes a
self throw. Orient yourselves clockwise in order: juggler A,
juggler B, juggler C.
As juggler A, start with two clubs in your right hand and
one club in your left hand. Your sequence of throws is inside,
self, outside, outside, self, inside. Start with a right hand
inside pass to juggler B. All of the passes are straight passes,
so you can remember the sequence as juggler-to-the-left, self,
juggler-to-the-right.
As juggler B, start with two clubs in your right hand
and one club in your left hand. Your sequence of throws
is outside, outside, self, inside, inside, self. Start with a right
hand outside pass to juggler A. All of the passes are straight
passes, so you can remember the sequence as juggler-to-theright,
juggler-to-the-left, self.
As juggler C, start with two clubs in your right hand and one club in your left hand. Your sequence of throws is self,
inside, inside, self, outside, outside. Start with a right hand
self. All of the passes are straight passes so you can remember
the sequence as self, juggler-to-the-right, juggler-to-theleft."
)
# 60  9.3
Pattern.create!(
  title: "A899",
  num_jugglers: 3,
  num_clubs: 9,
  # diagram_url: ,
  body: "A899 is a good first siteswap to explore with three people
and nine clubs. Everyone has a slightly lofty crossing single
pass and a lofty crossing joe, along with two self throws. Orient
yourselves counter-clockwise in order: juggler A, juggler
B, juggler C.
As juggler A, start with two clubs in your right hand and
one club in your left hand. Your sequence of throws is pass,
self, self, joe. The pass is a slightly lofty crossing right hand
pass to juggler B’s right hand. The joe is a lofty crossing left
hand joe to juggler C’s left hand. Start with a right hand
pass.
As juggler B, start with one club in your right hand and
two clubs in your left hand. Your sequence of throws is joe,
pass, self, self, starting with the left. The joe is a lofty crossing
left hand joe to juggler A’s left hand. The pass is a lofty
crossing right hand pass to juggler C’s right hand. Start
with a left hand joe. Make your first throw a moment after
juggler A makes his or her first throw.
As juggler C, start with two clubs in your right hand and
one club in your left hand. Your sequence of throws is self joe, pass, self. The joe is a lofty crossing left hand pass to
juggler B’s left hand. The pass is a slightly lofty crossing
right hand pass to juggler A’s right hand. Start with a right
hand self. Make your first throw half way between juggler
B’s first throw and juggler A’s second throw."
)
# 61  9.4
Pattern.create!(
  title: "A8999",
  num_jugglers: 3,
  num_clubs: 9,
  # diagram_url: ,
  body: "A8999 is just like A899, but this is an ambidextrous pattern.
Orient yourselves counter-clockwise in order: juggler
A, juggler B, juggler C.
As juggler A, start with two clubs in your right hand and
one club in your left hand. Your sequence of throws is pass,
self, joe, self, self. The joes are lofty and crossing and they always
go to juggler C. The passes are slightly lofty and crossing
and they always go to juggler B. Start with a right hand
pass.
As juggler B, start with one club in your right hand and
two clubs in your left hand. Your sequence of throws is joe,
self, self, pass, self, starting with the left. The joes are lofty
and crossing and they always go to juggler A. The passes
are slightly lofty and crossing and they always go to juggler
C. Start with a left hand joe. Make your first throw a moment
after juggler A makes his or her first pass to your right
hand. You should have enough time to make your first joe,
and then your first right hand self in time to catch juggler
A’s pass.
As juggler C, start with two clubs in your right hand
and one club in your left hand. Your sequence of throws is self, pass, self, joe, self. The joes are lofty and crossing and
they always go to juggler B. The passes are slightly lofty and
crossing and they always go to juggler A. Start with a right
hand self. Make your first throw half way between juggler
B’s first throw and juggler A’s second throw."
)
# 62  9.5
Pattern.create!(
  title: "A8",
  num_jugglers: 3,
  num_clubs: 9,
  # diagram_url: ,
  body: "A8 is just like A899 but without any self throws. Throw
lofty crossing joes with your left hand and lofty single passes
with your right hand. Orient yourselves counter-clockwise
in order: juggler A, juggler B, juggler C.
As juggler A, start with two clubs in your right hand and
one club in your left hand. Your sequence of throws is pass,
joe. The pass is a lofty crossing single pass from your right
hand to juggler B’s right hand. The joe is lofty and crossing
from your left hand to juggler C’s left hand. Start with a
right hand pass.
As juggler B, start with one club in your right hand and
two clubs in your left hand. Your sequence of throws is joe,
pass, starting with the left. The joe is lofty and crossing
from your left hand to juggler A’s left hand. The pass is a
lofty crossing single pass from your right hand to juggler
C’s right hand. Start with a left hand joe. Make your first
throw a moment after juggler A makes his or her first pass
to your right hand. You should have enough time to make
your first joe and then your first right hand self in time to catch juggler A’s first pass.
As juggler C, start with two clubs in your right hand and
one club in your left hand. Your sequence of throws is pass,
joe. The pass is a lofty crossing single pass from your right
hand to juggler A’s right hand. The joe is lofty and crossing
from your left hand to juggler B’s left hand. Start with a
right hand pass. Make your first throw half way between
juggler B’s first throw and juggler A’s second throw."
)
# 63  9.6
Pattern.create!(
  title: "89A8A",
  num_jugglers: 3,
  num_clubs: 9,
  # diagram_url: ,
  body: "89A8A is a cross between A8 and A8999. Every one
makes the same throws, but now every one throws two joes
in a row and two passes in a row, and there is a self every
fifth throw. Orient yourselves counter-clockwise in order:
juggler A, juggler B, juggler C.
As juggler A, start with two clubs in your right hand and
two clubs in your left hand. Your sequence of throws is joe,
joe, self, pass, pass. The joes are lofty and crossing to juggler
C. The passes are lofty crossing single passes to juggler B.
Start with a right hand joe to juggler C’ right hand.
As juggler B, start with one club in your right hand and
two clubs in your left hand. Your sequence of throws is self,
pass, pass, joe, joe, starting with the left. The passes are
lofty crossing single passes to juggler C. The joes are lofty
and crossing to juggler A. Start with a left hand self. Make
your first throw half way between juggler A’s first throw and
juggler C’s first throw.
As juggler C, start with one club in your right hand and one club in your left hand. Your sequence of throws is pass,
joe, joe, self, pass. The passes are lofty crossing single passes
to juggler A. The joes are lofty and crossing to juggler B.
Start with a right hand pass. Make your first throw in response
to juggler A’s first joe to your right hand.
89A8A is not trivial! You may have to spend some time
nailing down the throw timing and figuring out exactly
which throws are made in response to which club. Make
sure that your joes are faster than your self throws and
that your passes are loftier than your self throws."
)
# 64  9.7
Pattern.create!(
  title: "ADA39",
  num_jugglers: 3,
  num_clubs: 9,
  # diagram_url: ,
  body: "Orient yourselves clockwise in order: juggler A, juggler
B, juggler C.
As juggler A, start with one club in your right hand and
two clubs in your left hand. Your sequence of throws is single,
zip, double, self, single. The singles are crossing lofty
single passes to juggler B. The double is a straight lofty double
pass to juggler B. Start with a right hand pass to juggler
B’s right hand. When you do your first zip, you have two
clubs in your left hand; only zip one of those two clubs.
As juggler B, start with one club in your right hand and
two clubs in your left hand. Your sequence of throws is double,
self, single, single, zip, starting with the left. The singles
are crossing lofty single passes to juggler C. The double is a
straight lofty double pass to juggler C. Start with a left hand
double pass to juggler C’s right hand. Make your first throw
a moment after juggler A makes his or her first throw. As juggler C, start with two clubs in your right hand and
one club in your left hand. Your sequence of throws is single,
single, zip, double, self. The singles are crossing lofty single
passes to juggler A. The double is a straight lofty double
pass to juggler A. Start with a right hand pass to juggler A’s
right hand. Make your first throw halfway between juggler
B’s first throw and juggler A’s second throw."
)
# 65  9.8
Pattern.create!(
  title: "B9CA3",
  num_jugglers: 3,
  num_clubs: 9,
  # diagram_url: ,
  body: "B9CA3 is similar to three person maybe except instead of
throwing your passes as quick single passes, you alternate
between slightly lofty single passes and loftier single passes.
Orient yourselves clockwise in order: juggler A, juggler B,
juggler C.
As juggler A, start with two clubs in your right hand
and two clubs in your left hand. Your sequence of throws is
pass right, pass left, self, zip, heff. The passes to your right
are lofty straight single passes to juggler C. The passes to
your left are slightly lofty crossing single passes to juggler
B. Start with a right hand pass to your right to juggler C’s
left hand.
As juggler B, start with one club in your right hand and
one club in your left hand. Your sequence of throws is self,
zip, heff, pass right, pass left, starting with the left. The
passes to your right are lofty straight single passes to juggler
A. The passes to your left are slightly lofty crossing single
passes to juggler C. Start with a left hand self. Make
your first throw a moment after juggler A makes his or her first throw. Your first left hand heff should be a response to
juggler A’s pass to your left hand.
As juggler C, start with two clubs in your right hand
and one club in your left hand. Your sequence of throws is
heff, pass right, pass left, self, zip. The passes to your right
are lofty straight single passes to juggler B. The passes to
your left are slightly lofty crossing single passes to juggler
A. Start with a right hand heff. Make your first throw a moment
before juggler A makes his or her second throw. Your
second throw should be a response to juggler A’s first past to
your left hand."
)
# 66  9.9
Pattern.create!(
  title: "F8A3",
  num_jugglers: 3,
  num_clubs: 9,
  # diagram_url: ,
  body: "This rhythm combines a self triple throw with a
joe. Make sure the triple is high and the joe is low to
maximize your success with F8A3. Orient yourselves
counter-clockwise in order: juggler A, juggler B, juggler C.
As juggler A, start with one club in your right hand and
one club in your left hand. Your sequence of throws is triple,
zip, pass, joe. The triple is a triple self. The pass is a crossing
single pass from your right hand to juggler B’s right hand.
The joe is crossing from your left hand to juggler C’s left
hand. Start with a right hand triple and then a left hand
zip in time to catch juggler B’s first throw to your left hand.
As juggler B, start with one club in your right hand and
two clubs in your left hand. Your sequence of throws is joe, triple, zip, pass, starting with the left. The joe is crossing
from your left hand to juggler A’s left hand. The triple is
a triple self. The pass is a crossing single pass from your
right hand to juggler C’s right hand. Start with a left hand
joe to juggler A’s left. Make your first throw a moment after
juggler A makes his or her first throw.
As juggler C, start with two clubs in your right hand and
two clubs in your left hand. Your sequence of throws is pass,
joe, triple, zip. The pass is a crossing single pass from your
right hand to juggler A’s right hand. The joe is crossing from
your left hand to juggler B’s left hand. The triple is a triple
self. Start with a right hand pass to juggler A’s right hand.
Make your first throw a moment after juggler B makes his
or her first throw.
F8A3 has four throws so it is can be done right handed
or left handed. This is the right handed version; try it out
in the left handed version."
)
# 67  9.10
Pattern.create!(
  title: "F8A39",
  num_jugglers: 3,
  num_clubs: 9,
  # diagram_url: ,
  body: "F8A39 is very similar to F8A3, but there is an extra
self throw which makes this rhythm alternate sides. Orient
yourselves counter-clockwise in order: juggler A, juggler
B, juggler C.
As juggler A, start with one club in your right hand and
one club in your left hand. Your sequence of throws is triple,
zip, joe, self, pass. The triple is a triple self. The joe is crossing
to juggler C. The pass is a slightly lofty crossing single pass to juggler B. Start with a right hand triple and then a
left hand zip in time to catch juggler B’s first throw to your
left hand.
As juggler B, start with two clubs in your right hand and
two clubs in your left hand. Your sequence of throws is joe,
self, pass, triple, zip starting with your left. The joe is crossing
to juggler A. The pass is a slightly lofty crossing single
pass to juggler C. The triple is a triple self. Start with a left
hand joe to juggler A’s left hand. Make your first throw a
moment after juggler A makes his or her first throw.
As juggler C, start with two clubs in your right hand and
one club in your left hand. Your sequence of throws is pass,
triple, zip, joe, self. The pass is a slightly lofty crossing single
pass to juggler A. The triple is a triple self. The joe is
crossing to juggler B. Start with a right hand pass to juggler
A’s right hand. Make your first throw a moment after
juggler B makes his or her first throw."
)
# 68  10.1
Pattern.create!(
  title: "Four Count (Doubles)",
  num_jugglers: 3,
  num_clubs: 10,
  # diagram_url: ,
  body: "Ten clubs in four count with doubles makes an excellent
introduction to numbers club passing with three people.
Orient yourselves clockwise in order: juggler A, juggler
B, juggler C.
As juggler A, start with two clubs in your right hand and
two clubs in your left hand. Your sequence of throws is pass,
self, self, self. The pass is a right hand double pass to juggler
B’s left hand. Start with a right hand pass.
As juggler B, start with one club in your right hand and
two clubs in your left hand. Your sequence of throws is self,
pass, self, self, starting with the left. The pass is a right hand double pass to juggler C’s left hand. Start with a left
hand self. Make your first throw a moment after juggler A
makes his or her first throw. You can also start with two clubs in your right hand and one club in
your left hand. Skip the first left hand self and start with a right hand
pass a moment after juggler A makes his or her second throw.
As juggler C, start with two clubs in your right hand and
one club in your left hand. Your sequence of throws is self,
self, pass, self. The pass is a right hand double pass to juggler
A’s left hand. Start with a right hand self. Make your
first throw a moment before juggler A makes his or her second
throw. You can also start by skipping the first two self throws and starting
with a right hand pass a moment after juggler B’s first pass gets half way
to you.
If you have issues with collisions or space, throw your
passes deeper to make more room."
)
# 69  10.2
Pattern.create!(
  title: "Three Count (Doubles)",
  num_jugglers: 3,
  num_clubs: 10,
  # diagram_url: ,
  body: "Everyone starts at the same time with a right hand
throw. Every third throw is a crossing double pass. Orient
yourselves clockwise in order: juggler A, juggler B, juggler
C.
As juggler A, start with two clubs in your right hand and two clubs in your left hand. Your sequence of throws is pass,
self, self. The pass is a crossing double pass to juggler B.
Start with a right hand pass to juggler B’s right hand.
As juggler B, start with two clubs in your right hand and
one club in your left hand. Your sequence of throws is self,
pass, self. The pass is a crossing double pass to juggler C.
Start with a right hand self. Make your first throw as juggler
A makes his or her first throw.
As juggler C, start with two clubs in your right hand and
one club in your left hand. Your sequence of throws is self,
self, pass. The pass is a crossing double pass to juggler A.
Start with a right hand self. Make your first throw as juggler
A makes his or her first throw."
)
# 70  10.3
Pattern.create!(
  title: "Two Count (Singles)",
  num_jugglers: 3,
  num_clubs: 10,
  # diagram_url: ,
  body: "Ten clubs in two count with singles is a quick, fun,
rhythm, with lots of clubs flying through the air. All of the
passes are lofty straight right hand single passes. Orient
yourselves counter-clockwise in order: juggler A, juggler B,
juggler C.
As juggler A, start with two clubs in your right hand and
two clubs in your left hand. Your sequence of throws is pass,
self. The pass is a lofty straight single pass to juggler C.
Start with a right hand pass to juggler C’s left hand.
As juggler B, start with one club in your right hand and two clubs in your left hand. Your sequence of throws is self,
pass, starting with the left. The pass is a lofty straight single
pass to juggler A. Start with a left hand self. Make your
first throw a moment after juggler A makes his or her first
throw. Alternatively, you can start with two clubs in your
right hand and one club in your left hand and skip the first
self throw. Make your first pass from your right hand just a
moment after juggler A makes his or her first left hand self
throw.
As juggler C, start with two clubs in your right hand and
one club in your left hand. Your sequence of throws is pass,
self. The pass is a lofty straight single pass to juggler B.
Start with a right hand pass to juggler B’s left hand. Make
your first throw a moment before juggler A makes his or her
second throw.
Ten club two count is six hand siteswap B9."
)
# 71  10.4
Pattern.create!(
  title: "Ultimates",
  num_jugglers: 3,
  num_clubs: 10,
  # diagram_url: ,
  body: "Everyone throws lofty crossing single passes to the juggler
on his or her left. Orient yourselves clockwise in order:
juggler A, juggler B, juggler C.
As juggler A, start with two clubs in your right hand
and two clubs in your left hand. Throw lofty crossing single
passes to juggler B. Start with a right hand pass to juggler
B’s right hand. As juggler B, start with one club in your right hand and
two clubs in your left hand. Throw lofty crossing single
passes to juggler C. Start with a left hand pass to juggler
C’s left hand. Make your first throw a moment after juggler
A makes his or her first throw. Make your second throw
in time to catch the first pass that juggler A makes to your
right hand.
As juggler C, start with two clubs in your right hand
and one club in your left hand. Throw lofty crossing single
passes to juggler A. Start with a right hand pass to juggler
A’s right hand. Make your first throw halfway between juggler
B’s first throw and juggler A’s second throw. Make your
second throw in time to catch the first pass that juggler B
makes to your left hand.
If this rhythm feels too fast just make your passes loftier
and slow it down.
Ten club ultimates is six hand siteswap A."
)
# 72  10.5
Pattern.create!(
  title: "Rotating Ten Club Feed",
  num_jugglers: 3,
  num_clubs: 10,
  # diagram_url: ,
  body: "This rhythm is a ten club feed in singles while rotating
the feeder as frequently as possible. This is a right handed
rhythm. Every left hand throw is a self. The descriptions
below are right hand counting; they only describe what to do
with your right hand. Orient yourselves clockwise in order:
juggler A, juggler B, juggler C.
As juggler A, start with two clubs in your right hand and two clubs in your left hand. Your sequence of throws is single,
single, self, double. The singles are straight lofty single
passes to juggler C’s left hand. The double is a straight lofty
double pass to juggler B’s left hand. Start with a right hand
pass.
As juggler B, start with one club in your right hand and
two clubs in your left hand. Your sequence of throws is self,
double, single, single, starting with the left. The singles are
straight, lofty single passes juggler A’s left hand. The double
is a straight lofty double pass to juggler C’s left hand. Start
with a left hand self. Make your first throw a moment after
juggler A makes his or her first throw. Start this rhythm with a left hand self. The indicated sequence of
throws starts with the following right hand self.
As juggler C, start with two clubs in your right hand and
one club in your left hand. Your sequence of throws is double,
self, single, single. The singles are straight, lofty single
passes to juggler B’s left hand. The double is a straight lofty
double pass to juggler A’s left hand. Start with a right hand
double pass to juggler A. Make your first throw a moment
before juggler A makes his or her second throw.
The rotating ten club feed is six hand siteswap
B9D999B9."
)
# 73  10.6
Pattern.create!(
  title: "C99AA",
  num_jugglers: 3,
  num_clubs: 10,
  # diagram_url: ,
  body: "C99AA is similar to 96889 except the passes are lofty and
there is a heff instead of a hold. Orient yourselves clockwise
in order: juggler A, juggler B, juggler C. As juggler A, start with two clubs in your right hand and
two clubs in your left hand. Your sequence of throws is heff,
pass, self, pass, self. The passes are lofty crossing single
passes to juggler B. Start with a right hand heff.
As juggler B, start with one club in your right hand and
two clubs in your left hand. Your sequence of throws is self,
pass, self, heff, pass, starting with the left. The passes are
lofty crossing single passes to juggler C. Start with a left
hand self. Make your first throw a moment after juggler A
makes his or her first throw.
As juggler C, start with two clubs in your right hand and
one club in your left hand. Your sequence of throws is self,
heff, pass, self, pass. The passes are lofty crossing single
passes to juggler A. Start with a right hand self. Make your
first throw halfway between juggler B’s first throw and juggler
A’s second throw."
)
# 74  10.7
Pattern.create!(
  title: "B9CA8",
  num_jugglers: 3,
  num_clubs: 10,
  # diagram_url: ,
  body: "B9CA8 is very similar to B9CA3 with a quick single pass
instead of a zip. Orient yourselves clockwise in order: juggler
A, juggler B, juggler C.
As juggler A, start with two clubs in your right hand and
two clubs in your left hand. Your sequence of throws is lofty
pass, pass, self, joe, heff. The lofty pass is a lofty straight single
pass to juggler C. The passes are crossing single passes
to juggler B. The joe is crossing to juggler C. Start with a
right hand double pass to juggler C’s left hand.
As juggler B, start with one club in your right hand and two clubs in your left hand. Your sequence of throws is self,
joe, heff, lofty pass, pass, starting with the left. The joe is
crossing to juggler A. The lofty pass is a lofty straight single
pass to juggler A. The passes are crossing single passes to
juggler C. Start with a left hand self. Make your first throw
a moment after juggler A makes his or her first throw.
As juggler C, start with two clubs in your right hand and
one club in your left hand. Your sequence of throws is heff,
lofty pass, pass, self, joe. The lofty pass is a lofty straight single
pass to juggler B. The passes are crossing single passes
to juggler A. The joe is crossing to juggler B. Start with a
right hand heff. Make your first throw halfway between
juggler B’s first throw and juggler A’s second throw. Your
second throw is a response to juggler A’s first pass to your
left hand."
)
# 75  11.1
Pattern.create!(
  title: "Two Count (Doubles)",
  num_jugglers: 3,
  num_clubs: 11,
  # diagram_url: ,
  body: "Passing eleven clubs in two count with doubles is the
natural step up from ten clubs in four count. Orient yourselves
clockwise in order: juggler A, juggler B, juggler C.
As juggler A, start with two clubs in your right hand and
two clubs in your left hand. Your sequence of throws is pass,
self. The pass is a straight double pass to juggler B. Start
with a right hand pass to juggler B’s left hand.
As juggler B, start with one club in your right hand and
two clubs in your left hand. Your sequence of throws is self pass, starting with the left. The pass is a straight double
pass to juggler C. Start with a left hand self. Make your
first throw a moment after juggler A makes his or her first
throw. Alternately, start with two clubs in your right hand
and one club in your left hand and skip the first self throw.
As juggler C, start with two clubs in your right hand and
two clubs in your left hand. Your sequence of throws is pass,
self. The pass is a straight double pass to juggler A. Start
with a right hand pass to juggler A’s left hand. Make your
first throw a moment before juggler A makes his or her second
throw.
Keep your passes a little bit lofty to even out the timing
and throw your passes a little bit deep to avoid collisions.
Two count in doubles with eleven clubs is six hand siteswap
D9."
)
# 76  11.2
Pattern.create!(
  title: "Three Count (Triples)",
  num_jugglers: 3,
  num_clubs: 11,
  # diagram_url: ,
  body: "Everyone starts at the same time with right hand
throws. Orient yourselves counter-clockwise in order:
juggler A, juggler B, juggler C.
As juggler A, start with two clubs in your right hand and
two clubs in your left hand. Your sequence of throws is pass,
self, self. The pass is a straight triple pass to juggler C. Start
with a right hand triple pass to the left hand of juggler C. As juggler B, start with three clubs in your right hand
and one club in your left hand. Your sequence of throws is
self, pass, self. The pass is a straight triple pass to juggler
A. Start with a right hand self. You can also start with two
clubs in your right hand and two clubs in your left and skip
the first self throw. Your first throw would then be a left
hand triple to juggler A’s right hand thrown at the same
time as jugglers A and C make their first left hand throws.
As juggler C, start with two clubs in your right hand and
one club in your left hand. Your sequence of throws is self,
self, pass. The pass is a straight triple pass to juggler B.
Start with a right hand self."
)
# 77  11.3
Pattern.create!(
  title: "Double Three Count (Doubles)",
  num_jugglers: 3,
  num_clubs: 11,
  # diagram_url: ,
  body: "Everyone starts at the same time with right hand
throws. Orient yourselves clockwise in order: juggler A,
juggler B, juggler C.
As juggler A, start with two clubs in your right hand and
two clubs in your left hand. Your sequence of throws is pass,
pass, self. The passes are crossing double passes to juggler
B. Start with a right hand pass to juggler B’s right hand.
As juggler B, start with two clubs in your right hand and
one club in your left hand. Your sequence of throws is self,
pass, pass. The passes are crossing double passes to juggler
C. Start with a right hand self. As juggler C, start with two clubs in your right hand and
two clubs in your left hand. Your sequence of throws is pass,
self, pass. The passes are crossing double passes to juggler
A. Start with a right hand pass to juggler A’s right hand."
)
# 78  11.4
Pattern.create!(
  title: "Ultimates",
  num_jugglers: 3,
  num_clubs: 11,
  # diagram_url: ,
  body: "Everyone throws very lofty straight single passes. Orient
yourselves counter-clockwise in order: juggler A, juggler
B, juggler C.
As juggler A, start with two clubs in your right hand
and two clubs in your left hand. Throw lofty straight single
passes to juggler C. Start with a right hand pass juggler
C’s left hand.
As juggler B, start with two clubs in your right hand
and two clubs in your left hand. Throw lofty straight single
passes to juggler A. Start with a left hand pass to juggler A’s
right hand. Make your first throw a moment after juggler A
makes his or her first throw.
As juggler C, start with two clubs in your right hand
and one club in your left hand. Throw lofty straight single
passes to juggler B. Start with a right hand pass to juggler
B’s left hand. Make your first throw a moment before juggler
A makes his or her second throw."
)
# 79  11.5.1
Pattern.create!(
  title: "Six Count Popcorn",
  num_jugglers: 3,
  num_clubs: 11,
  # diagram_url: ,
  body: "Six count Popcorn with eleven clubs is very similar to the
seven club variety except all left hand throws are self throws
and the pass is a triple pass. The sequence of throws indicated
is right hand counting; all left hand throws are single
self throws. Every starts at the same time with a right hand
throw. Orient yourselves clockwise in order: juggler A, juggler
B, juggler C.
As juggler A, start with two clubs in your right hand and
two clubs in your left hand. Your sequence of throws is triple
self, triple pass, self. The triple pass is straight to juggler B.
Start with a right hand triple self.
As juggler B, start with two clubs in your right hand and
two clubs in your left hand. Your sequence of throws is triple
pass, self, triple self. The triple pass is straight to juggler C.
Start with a right hand triple pass to juggler C’s left hand.
As juggler C, start with two clubs in your right hand and
one club in your left hand. Your sequence of throws is self,
triple self, triple pass. The triple pass is straight to juggler
A. Start with a right hand self."
)
# 80  11.5.2
Pattern.create!(
  title: "Five Count Popcorn",
  num_jugglers: 3,
  num_clubs: 11,
  # diagram_url: ,
  body: "Five count Popcorn with eleven clubs will feel very similar
to five count Popcorn with seven clubs except the passes
are double passes. Orient yourselves clockwise in order: juggler
A, juggler B, juggler C.
As juggler A, start with two clubs in your right hand
and two clubs in your left hand. Your sequence of throws
is triple, self, pass, self, self. The triple is a triple self. The
pass is a straight double pass to juggler B. Start with a right
hand triple self.
As juggler B, start with two clubs in your right hand and
two clubs in your left hand. Your sequence of throws is pass,
self, self, triple, self, starting with the left. The pass is a
straight double pass to juggler C. The triple is a triple self.
Start with a left hand double pass to juggler C’s right hand.
Make your first throw a moment after juggler A makes his
or her first throw.
As juggler C, start with two clubs in your right hand and
one club in your left hand. Your sequence of throws is self,
triple, self, pass, self. The triple is a triple self. The pass is
a straight double pass to juggler A. Start with a right hand
self. Make your first throw halfway between juggler B’s first
throw and juggler A’s second throw.
Five count Popcorn with eleven clubs is six hand siteswap
FD999."
)
# 81  11.5.3
Pattern.create!(
  title: "Four Count Popcorn",
  num_jugglers: 3,
  num_clubs: 11,
  # diagram_url: ,
  body: "Eleven club four count Popcorn is similar to seven club
four count Popcorn except the pass is a very lofty single. Orient
yourselves counter-clockwise in order: juggler A, juggler
B, juggler C.
As juggler A, start with two clubs in your right hand
and two clubs in your left hand. Your sequence of throws
is triple, self, pass, self. The triple is a right hand triple self.
The pass is a very lofty straight single pass from your right
hand to juggler C’s left hand. Start with a right hand triple
self.
As juggler B, start with one club in your right hand and
two clubs in your left hand. Your sequence of throws is self,
triple, self, pass, starting with the left. The triple is a right
hand triple self. The pass is a very lofty straight single pass
from your right hand to juggler A’s left hand. Start with a
left hand self. Make your first throw a moment after juggler
A makes his or her first throw.
As juggler C, start with two clubs in your right hand and
two clubs in your left hand. Your sequence of throws is pass,
self, triple, self. The pass is a very lofty straight single pass
from your right hand to juggler B’s left hand. The triple is
a right hand triple self. Start with a right hand pass to juggler
B’s left hand. Make your first throw halfway between
juggler B’s first throw and juggler A’s second throw.
Four count Popcorn is six hand siteswap F9B9."
)
# 82  12.1
Pattern.create!(
  title: "Two Count (Doubles)",
  num_jugglers: 3,
  num_clubs: 12,
  # diagram_url: ,
  body: "Twelve club two count in doubles is identical to eight club
two count in doubles. With three people, pass to a different
person than passes to you. Everyone does the same thing
at the same time. Orient yourselves counter-clockwise in
order: juggler A, juggler B, juggler C.
Start with two clubs in your right hand and two clubs in
your left hand. Your sequence of throws is pass, self, pause.
The pass is a lofty straight double pass from your right hand
to the left hand of the juggler on your left. The self is a lofty single self from your left hand to your right hand. The
time between the pass and the self is about half the amount
of time that you normally have between two throws. The
pause makes up for the difference in time. This is a galloped
tempo."
)
# 83  12.2
Pattern.create!(
  title: "Two Count (Triples)",
  num_jugglers: 3,
  num_clubs: 12,
  # diagram_url: ,
  body: "Twelve clubs in two count with triples is identical to
eight clubs in two count with triples. With three people,
pass to a different person than passes to you. Everyone
does the same thing at the same time. Orient yourselves
counter-clockwise in order: juggler A, juggler B, juggler C.
Start with two clubs in your right hand and two clubs in
your left hand. Your sequence of throws is pass, self. The
pass is a straight triple pass from your right hand to the left
hand of the juggler on your left. The self is a left hand single
self. Start with a right hand pass."
)
# 84  12.3
Pattern.create!(
  title: "Singles",
  num_jugglers: 3,
  num_clubs: 12,
  # diagram_url: ,
  body: "Twelve club singles is identical to eight clubs in singles.
With three people, pass to a different person than passes to
you. Everyone does the same thing at the same time. Orient
yourselves counter-clockwise in order: juggler A, juggler B,
juggler C.
Start with two clubs in your right hand and two clubs
in your left hand. Your right hand throws a straight lofty
single pass to the juggler on your left. Your left hand throws
a lofty self. On every beat, make a right hand pass and a left
hand self at the same time. Your pass and your self should
be lofty enough for you to have the time and space to make
another pair of throws before those clubs land."
)
# 85  12.4
Pattern.create!(
  title: "Ultimates",
  num_jugglers: 3,
  num_clubs: 12,
  # diagram_url: ,
  body: "Everyone does the same thing at the same time. Orient
yourselves clockwise in order: juggler A, juggler B, juggler
C.
Start with two clubs in your right hand and two clubs in
your left hand. Throw crossing double passes to the juggler
on your left. Start with a right hand pass to the right hand
of the juggler on your left."
)
# 86  12.5
Pattern.create!(
  title: "Triple Four Count",
  num_jugglers: 3,
  num_clubs: 12,
  # diagram_url: ,
  body: "Triple four count uses double passes and single selves in
a pass, pass, pass, self sequence. Orient yourselves counterclockwise
in order: juggler A, juggler B, juggler C.
As juggler A, start with two clubs in your right hand and
two clubs in your left hand. Your sequence of throws is pass,
self, pass, pass. The passes are straight lofty double passes
to juggler B. The self is a left hand single self. Start with a
right hand pass to juggler B’s left hand.
As juggler B, start with two clubs in your right hand
and two clubs in your left hand. Your sequence of throws
is pass, pass, self, pass, starting with the left. The passes
are straight lofty double passes to juggler C. The self is a
left hand single self. Start with a left hand pass to juggler
C’s right hand. Make your first pass a moment after juggler
A makes his or her first throw.
As juggler C, start with two clubs in your right hand and two clubs in your left hand. Your sequence of throws is pass,
pass, pass, self. The passes are straight lofty double passes
to juggler A. The self is a left hand single self. Start with a
right hand pass to juggler A’s left hand. Make your first pass
a moment before juggler A makes his or her second throw.
Triple four count is six hand siteswap DDD9."
)
# 87  13.1
Pattern.create!(
  title: "Ultimates",
  num_jugglers: 3,
  num_clubs: 13,
  # diagram_url: ,
  body: "Orient yourselves counter-clockwise in order: juggler A,
juggler B, juggler C.
As juggler A, start with three clubs in your right hand
and two clubs in your left hand. Your throws are lofty
straight double passes to juggler B. Start with a right hand
pass to juggler B’s left hand.
As juggler B, start with two clubs in your right hand and
two clubs in your left hand. Your throws are lofty straight
double passes to juggler C. Start with a left hand pass to
juggler C’s right hand. Make your first throw a moment
after juggler A makes his or her first throw. As juggler C, start with two clubs in your right hand and
two clubs in your left hand. Your throws are lofty straight
double passes to juggler A. Start with a right hand pass to
juggler A’s left hand. Make your first throw half way between
juggler B’s first throw and juggler A’s second throw.
Thirteen club ultimates is six hand siteswap D."
)
# 88  13.2
Pattern.create!(
  title: "Double-Single",
  num_jugglers: 3,
  num_clubs: 13,
  # diagram_url: ,
  body: "Passing thirteen clubs in double-singles requires simultaneous
throws from your right and left hands. You may notice that the causal diagram indicates heavily galloped
but non-simultaneous throws. I describe the rhythm using simultaneous
throws but you may choose to pass thirteen club double-singles with
a heavy gallop. Orient
yourselves counter-clockwise in order: juggler A, juggler B,
juggler C.
As juggler A, start with two clubs in your right hand and
three clubs in your left hand. Your right hand throws a lofty
double pass to juggler B’s left hand. Your left hand throws a
lofty self. Both hands throw at the same time. Start with a
right hand double pass and a left hand single self. An alternate start is to put three clubs in your right hand and two
clubs in your left hand. On the first beat, make a double pass with your
right hand and do not make a self throw with your left hand. On every
following beat, throw both a double pass and a single self.
As juggler B, start with two clubs in your right hand and
two clubs in your left hand. Your right hand throws a lofty double pass to juggler C’s left hand. Your left hand throws
a lofty self. Both hands throw at the same time. Start with
a right hand double pass and a left hand single self. Make
your first pair of throws a moment after juggler A makes his
or her first pair of throws.
As juggler C, start with two clubs in your right hand and
two clubs in your left hand. Your right hand throws a lofty
double pass to juggler A’s left hand. Your left hand throws
a lofty self. Both hands throw at the same time. Start with
a right hand double pass and a left hand single self. Make
your first pair of throws a moment before juggler A makes
his or her second pair of throws."
)
# 89  13.1
# Pattern.create!(
#   title: "",
#   num_jugglers: 3,
#   num_clubs: 13,
  # diagram_url: ,
#   body: ""
# )




# chapter 1
PreReq.create!(parent_id: 1, child_id: 2)
PreReq.create!(parent_id: 2, child_id: 3)
PreReq.create!(parent_id: 2, child_id: 4)
PreReq.create!(parent_id: 1, child_id: 5)

# chapter 2
PreReq.create!(parent_id: 4, child_id: 6)
PreReq.create!(parent_id: 2, child_id: 7)
PreReq.create!(parent_id: 7, child_id: 8)
PreReq.create!(parent_id: 5, child_id: 8)

# chapter 3
PreReq.create!(parent_id: 9, child_id: 10)
PreReq.create!(parent_id: 1, child_id: 11)
PreReq.create!(parent_id: 9, child_id: 11)
PreReq.create!(parent_id: 10, child_id: 12)
PreReq.create!(parent_id: 12, child_id: 13)
PreReq.create!(parent_id: 18, child_id: 13)

# chapter 4
PreReq.create!(parent_id: 1, child_id: 14)
PreReq.create!(parent_id: 9, child_id: 14)
PreReq.create!(parent_id: 1, child_id: 15)
PreReq.create!(parent_id: 10, child_id: 15)
PreReq.create!(parent_id: 11, child_id: 15)
PreReq.create!(parent_id: 15, child_id: 16)
PreReq.create!(parent_id: 15, child_id: 17)
PreReq.create!(parent_id: 16, child_id: 18)
PreReq.create!(parent_id: 17, child_id: 18)
PreReq.create!(parent_id: 18, child_id: 19)
PreReq.create!(parent_id: 4, child_id: 20)
PreReq.create!(parent_id: 12, child_id: 20)
PreReq.create!(parent_id: 18, child_id: 20)
PreReq.create!(parent_id: 13, child_id: 21)
PreReq.create!(parent_id: 20, child_id: 21)
PreReq.create!(parent_id: 21, child_id: 22)
PreReq.create!(parent_id: 21, child_id: 23)
PreReq.create!(parent_id: 13, child_id: 24)
PreReq.create!(parent_id: 32, child_id: 24)
PreReq.create!(parent_id: 30, child_id: 25)
PreReq.create!(parent_id: 28, child_id: 25)
PreReq.create!(parent_id: 25, child_id: 26)
PreReq.create!(parent_id: 24, child_id: 27)
PreReq.create!(parent_id: 31, child_id: 27)

# chapter 5
PreReq.create!(parent_id: 17, child_id: 29)
PreReq.create!(parent_id: 17, child_id: 30)
PreReq.create!(parent_id: 29, child_id: 30)
PreReq.create!(parent_id: 16, child_id: 31)
PreReq.create!(parent_id: 29, child_id: 31)
PreReq.create!(parent_id: 19, child_id: 32)
PreReq.create!(parent_id: 30, child_id: 32)
PreReq.create!(parent_id: 29, child_id: 33)
PreReq.create!(parent_id: 5, child_id: 34)
PreReq.create!(parent_id: 29, child_id: 34)
PreReq.create!(parent_id: 34, child_id: 35)
PreReq.create!(parent_id: 8, child_id: 36)
PreReq.create!(parent_id: 17, child_id: 36)
PreReq.create!(parent_id: 21, child_id: 37)
PreReq.create!(parent_id: 22, child_id: 37)
PreReq.create!(parent_id: 30, child_id: 38)
PreReq.create!(parent_id: 31, child_id: 38)
PreReq.create!(parent_id: 4, child_id: 39)
PreReq.create!(parent_id: 26, child_id: 39)
PreReq.create!(parent_id: 27, child_id: 40)
PreReq.create!(parent_id: 39, child_id: 40)
PreReq.create!(parent_id: 27, child_id: 41)
PreReq.create!(parent_id: 31, child_id: 41)
PreReq.create!(parent_id: 26, child_id: 42)
PreReq.create!(parent_id: 27, child_id: 42)

# chapter 6
PreReq.create!(parent_id: 4, child_id: 43)
PreReq.create!(parent_id: 29, child_id: 43)
PreReq.create!(parent_id: 30, child_id: 43)
PreReq.create!(parent_id: 33, child_id: 44)
PreReq.create!(parent_id: 43, child_id: 44)
PreReq.create!(parent_id: 30, child_id: 45)
PreReq.create!(parent_id: 43, child_id: 45)
PreReq.create!(parent_id: 31, child_id: 46)
PreReq.create!(parent_id: 43, child_id: 46)
PreReq.create!(parent_id: 40, child_id: 47)
PreReq.create!(parent_id: 42, child_id: 47)
PreReq.create!(parent_id: 46, child_id: 47)

# chapter 7
PreReq.create!(parent_id: 45, child_id: 48)
PreReq.create!(parent_id: 43, child_id: 49)
PreReq.create!(parent_id: 44, child_id: 49)
PreReq.create!(parent_id: 46, child_id: 50)
PreReq.create!(parent_id: 48, child_id: 50)

# chapter 8
PreReq.create!(parent_id: 19, child_id: 51)
PreReq.create!(parent_id: 51, child_id: 52)
PreReq.create!(parent_id: 52, child_id: 53)
PreReq.create!(parent_id: 23, child_id: 54)
PreReq.create!(parent_id: 53, child_id: 54)
PreReq.create!(parent_id: 21, child_id: 55)
PreReq.create!(parent_id: 51, child_id: 55)
PreReq.create!(parent_id: 22, child_id: 56)
PreReq.create!(parent_id: 51, child_id: 56)
PreReq.create!(parent_id: 23, child_id: 57)
PreReq.create!(parent_id: 51, child_id: 57)

# chapter 9
PreReq.create!(parent_id: 14, child_id: 58)
PreReq.create!(parent_id: 18, child_id: 59)
PreReq.create!(parent_id: 58, child_id: 59)
PreReq.create!(parent_id: 51, child_id: 60)
PreReq.create!(parent_id: 60, child_id: 61)
PreReq.create!(parent_id: 26, child_id: 62)
PreReq.create!(parent_id: 60, child_id: 62)
PreReq.create!(parent_id: 61, child_id: 63)
PreReq.create!(parent_id: 62, child_id: 63)
PreReq.create!(parent_id: 27, child_id: 64)
PreReq.create!(parent_id: 55, child_id: 64)
PreReq.create!(parent_id: 57, child_id: 65)
PreReq.create!(parent_id: 63, child_id: 65)
PreReq.create!(parent_id: 26, child_id: 66)
PreReq.create!(parent_id: 34, child_id: 66)
PreReq.create!(parent_id: 55, child_id: 66)
PreReq.create!(parent_id: 63, child_id: 66)
PreReq.create!(parent_id: 66, child_id: 67)


# chapter 10
PreReq.create!(parent_id: 29, child_id: 68)
PreReq.create!(parent_id: 31, child_id: 69)
PreReq.create!(parent_id: 68, child_id: 69)
PreReq.create!(parent_id: 30, child_id: 70)
PreReq.create!(parent_id: 32, child_id: 71)
PreReq.create!(parent_id: 51, child_id: 71)
PreReq.create!(parent_id: 68, child_id: 72)
PreReq.create!(parent_id: 21, child_id: 73)
PreReq.create!(parent_id: 53, child_id: 73)
PreReq.create!(parent_id: 42, child_id: 74)
PreReq.create!(parent_id: 65, child_id: 74)

# chapter 11
PreReq.create!(parent_id: 29, child_id: 75)
PreReq.create!(parent_id: 68, child_id: 75)
PreReq.create!(parent_id: 70, child_id: 75)
PreReq.create!(parent_id: 31, child_id: 76)
PreReq.create!(parent_id: 44, child_id: 76)
PreReq.create!(parent_id: 46, child_id: 77)
PreReq.create!(parent_id: 71, child_id: 78)
PreReq.create!(parent_id: 33, child_id: 79)
PreReq.create!(parent_id: 34, child_id: 79)
PreReq.create!(parent_id: 35, child_id: 80)
PreReq.create!(parent_id: 68, child_id: 80)
PreReq.create!(parent_id: 36, child_id: 81)

# chapter 12
PreReq.create!(parent_id: 43, child_id: 82)
PreReq.create!(parent_id: 44, child_id: 83)
PreReq.create!(parent_id: 45, child_id: 84)
PreReq.create!(parent_id: 78, child_id: 85)
PreReq.create!(parent_id: 50, child_id: 86)

# chapter 13
PreReq.create!(parent_id: 50, child_id: 87)
PreReq.create!(parent_id: 85, child_id: 87)
PreReq.create!(parent_id: 48, child_id: 88)
PreReq.create!(parent_id: 49, child_id: 88)
