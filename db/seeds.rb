User.create(username: 'pipit', password: 'password')
User.create(username: 'Guest', password: 'password')

100.times do
  begin
    User.create(username: Faker::Internet.user_name, password: 'password', email: Faker::Internet.safe_email)
  rescue
    retry
  end
end

numUsers = User.all.length
50.times do
  begin
    Following.create(follower_id: rand(numUsers) + 1, followee_id: rand(numUsers) + 1)
  rescue
    retry
  end
end
# 1  1.1
Pattern.create(
  title: 'Cascade',
  num_jugglers: 1,
  num_clubs: 3,
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
Pattern.create(
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
Pattern.create(
  title: "423",
  num_jugglers: 1,
  num_clubs: 3,
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
Pattern.create(
  title: "441",
  num_jugglers: 1,
  num_clubs: 3,
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
Pattern.create(
  title: "531",
  num_jugglers: 1,
  num_clubs: 3,
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
Pattern.create(
  title: "Fountain",
  num_jugglers: 1,
  num_clubs: 4,
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
Pattern.create(
  title: "Half-Shower (Doubles)",
  num_jugglers: 1,
  num_clubs: 4,
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
Pattern.create(
  title: "Half-Shower (Triples)",
  num_jugglers: 1,
  num_clubs: 4,
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
Pattern.create(
  title: "Passing a Club",
  num_jugglers: 2,
  num_clubs: 1,
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
Pattern.create(
  title: "Ultimates (5 Club)",
  num_jugglers: 2,
  num_clubs: 5,
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
Pattern.create(
  title: "Two Count",
  num_jugglers: 2,
  num_clubs: 5,
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
Pattern.create(
  title: "672",
  num_jugglers: 2,
  num_clubs: 5,
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
Pattern.create(
  title: "Parsnip",
  num_jugglers: 2,
  num_clubs: 5,
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
Pattern.create(
  title: "Passing From a Cascade",
  num_jugglers: 2,
  num_clubs: 6,
  body: "Start by facing each other and juggling a three club cascade at the
        same time and speed. Make right hand throws at the same time and make
        left hand throws at the same time. On a passing beat, your right hand
        passes a club to your partner’s left hand and your partner’s right hand
        passes to your left hand. The hole that you create in your cascade by
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
Pattern.create(
  title: "Four Count",
  num_jugglers: 2,
  num_clubs: 6,
  body: "The first rhythm that most jugglers
        learn when starting to pass clubs is four count, also known as every
        others, since every other right hand throw is a passing beat. It is
        called four count because every fourth throw is a passing beat. Starting
        with a right-hand pass, you and your partner both juggle right pass,
        left self, right self, left self, right pass, left self, right self,
        left self."
)
# 16  4.1.2
Pattern.create(
  title: "Three Count",
  num_jugglers: 2,
  num_clubs: 6,
  body: "Before attempting three count, you should be comfortable making passes with your left hand.
Three count is popular among jugglers who wish to pass
with both their right and left hands. Three count is sometimes
referred to as a Waltz because it has three beats per
cycle. Starting with a right-hand pass, you and your partner
both juggle right pass, left self, right self, left pass, right self,
left self."
)
# 17  4.1.3
Pattern.create(
  title: "Two Count",
  num_jugglers: 2,
  num_clubs: 6,
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
Pattern.create(
  title: "Double Three Count",
  num_jugglers: 2,
  num_clubs: 6,
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
Pattern.create(
  title: "Ultimates (6 Club)",
  num_jugglers: 2,
  num_clubs: 6,
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
Pattern.create(
  title: "78474",
  num_jugglers: 2,
  num_clubs: 6,
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
Pattern.create(
  title: "WhyNot",
  num_jugglers: 2,
  num_clubs: 6,
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
Pattern.create(
  title: "NotWhy",
  num_jugglers: 2,
  num_clubs: 6,
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
Pattern.create(
  title: "Maybe",
  num_jugglers: 2,
  num_clubs: 6,
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
Pattern.create(
  title: "77772",
  num_jugglers: 2,
  num_clubs: 6,
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
Pattern.create(
  title: "75666",
  num_jugglers: 2,
  num_clubs: 6,
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
Pattern.create(
  title: "756",
  num_jugglers: 2,
  num_clubs: 6,
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
# 27  4.4
Pattern.create(
  title: "972",
  num_jugglers: 2,
  num_clubs: 6,
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
# 28  4.4
Pattern.create(
  title: "Joe",
  num_jugglers: 2,
  num_clubs: 1,
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
# 29  4.4
# Pattern.create(
#   title: "",
#   num_jugglers: 2,
#   num_clubs: 6,
#   body: ""
# )


PreReq.create(parent_id: 1, child_id: 2)
PreReq.create(parent_id: 2, child_id: 3)
PreReq.create(parent_id: 2, child_id: 4)
PreReq.create(parent_id: 1, child_id: 5)

PreReq.create(parent_id: 4, child_id: 6)
PreReq.create(parent_id: 2, child_id: 7)
PreReq.create(parent_id: 7, child_id: 8)
PreReq.create(parent_id: 5, child_id: 8)

PreReq.create(parent_id: 9, child_id: 10)
PreReq.create(parent_id: 1, child_id: 11)
PreReq.create(parent_id: 9, child_id: 11)
PreReq.create(parent_id: 10, child_id: 12)
PreReq.create(parent_id: 12, child_id: 13)
PreReq.create(parent_id: 18, child_id: 13)

PreReq.create(parent_id: 1, child_id: 14)
PreReq.create(parent_id: 9, child_id: 14)
PreReq.create(parent_id: 1, child_id: 15)
PreReq.create(parent_id: 10, child_id: 15)
PreReq.create(parent_id: 11, child_id: 15)
PreReq.create(parent_id: 15, child_id: 16)
PreReq.create(parent_id: 15, child_id: 17)
PreReq.create(parent_id: 16, child_id: 18)
PreReq.create(parent_id: 17, child_id: 18)
PreReq.create(parent_id: 18, child_id: 19)
PreReq.create(parent_id: 4, child_id: 20)
PreReq.create(parent_id: 12, child_id: 20)
PreReq.create(parent_id: 18, child_id: 20)
PreReq.create(parent_id: 13, child_id: 21)
PreReq.create(parent_id: 20, child_id: 21)
PreReq.create(parent_id: 21, child_id: 22)
PreReq.create(parent_id: 21, child_id: 23)
PreReq.create(parent_id: 13, child_id: 24)
# PreReq.create(parent_id: (5.4), child_id: 24)
# PreReq.create(parent_id: (5.2), child_id: 25)
PreReq.create(parent_id: 28, child_id: 25)
PreReq.create(parent_id: 25, child_id: 26)
PreReq.create(parent_id: 24, child_id: 27)
# PreReq.create(parent_id: (5.3), child_id: 27)
