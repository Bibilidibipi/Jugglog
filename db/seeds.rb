User.create(username: 'pipit', password: 'password')
100.times do
  begin
    User.create(username: Faker::Internet.user_name, password: 'password')
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

Pattern.create(
  title: 'Cascade',
  num_jugglers: 1,
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
        to repeat it to juggle a three-club cascade.")
Pattern.create(
  title: 'Doubles',
  num_jugglers: 1,
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
Pattern.create(
  title: "423",
  num_jugglers: 1,
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
Pattern.create(
  title: "441",
  num_jugglers: 1,
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
Pattern.create(
  title: "531",
  num_jugglers: 1,
  body: "531 is siteswap notation describing a solo juggling rhythm with three
        clubs. The first throw is a 5, or a triple self. Just like the double
        self, the triple self goes from one hand to the other, but it is thrown
        high enough to make three revolutions before landing in your other hand.
        You already know how to do a 3, it is a single self just like you use
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
Pattern.create(
  title: "Fountain",
  num_jugglers: 1,
  body: "Before attempting a fountain, you should be comfortable with 441. The
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
Pattern.create(
  title: "Half-Shower (Doubles)",
  num_jugglers: 1,
  body: "Before attempting to juggle a half-shower with doubles, you should be
        comfortable with three club doubles. Another popular way to juggle four
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
Pattern.create(
  title: "Half-Shower (Triples)",
  num_jugglers: 1,
  body: "Before attempting to juggle a half-shower with triples, you should be
        comfortable juggling a half-shower with doubles and 531. The half-shower
        with triples is similar to the half-shower with doubles; instead of
        throwing a double for the high throw, use a triple. The longer flight
        time of the triple means that you juggle this pattern at a steady and
        even tempo instead of the galloped tempo of the half-shower with
        doubles. Start with two clubs in each hand. Throw a right hand triple
        followed by a left hand single and repeat. Make sure that your triples
        are high enough that you do not feel rushed to make your left hand
        throw. The tempo should be even and relaxed."
)

PreReq.create(parent_id: 1, child_id: 2)
PreReq.create(parent_id: 2, child_id: 3)
PreReq.create(parent_id: 2, child_id: 4)
PreReq.create(parent_id: 1, child_id: 5)

PreReq.create(parent_id: 4, child_id: 6)
PreReq.create(parent_id: 2, child_id: 7)
PreReq.create(parent_id: 7, child_id: 8)
PreReq.create(parent_id: 5, child_id: 8)
