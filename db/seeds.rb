user_one = User.create(email: "Bodybuilder123@email.com", password: "123456", screen_name: "Bodybuilder123", zip_code: "33101")
user_two = User.create(email: "dwaynejohnson@email.com", password: "123456", screen_name: "The Rock", zip_code: "90001")
user_three = User.create(email: "Crossfitguy@email.com", password: "123456", screen_name: "I love Crossfit", zip_code: "77001")
user_admin = User.create(email: "JamesAdmin@email.com", password: "123456", screen_name: "JamesAdmin", role: "admin", zip_code: "02135")


workout_one = Workout.create(title: "Push-ups", body: "chest", category: "body weight", reps: 10, sets: 5, time: "9 minutes", instructions: "1. Get down on all fours.
2. placing your hands slightly wider than your shoulders.
3. Straighten your arms and legs.
4. Lower your body until your chest nearly touches the floor.
5. Pause, then push yourself back up.
6. Repeat.", difficulty: 1, image: "https://cimg3.ibsrv.net/cimg/www.fitday.com/693x350_85-1/503/26girlpush-108503.jpg")
Comment.create(content:"I've been doing this exercise since I was a teenager and still do it everyday!", workout: workout_one, user: user_one)
Comment.create(content:"I used to do 500 pushups a day when I was training for the WWE.", workout: workout_one, user: user_two)
Comment.create(content:"This is a great workout. If this is too easy for you, I recommend doing it slowly.", workout: workout_one, user: user_three)

workout_two = Workout.create(title: "Crunches", body: "abdominal", category: "body weight", reps: 10, sets: 5, time: "10 minutes", instructions: "1. Lie down on your back.
2. Bend your legs and stabilize your lower body.
3. Cross your hands to opposite shoulders, or place them behind your ears without pulling on your neck.
4. Lift your head and shoulder blades from the ground. Exhale as you rise.
5. Lower, returning to your starting point. Inhale as you lower.", difficulty: 2, image: "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/news/featured_images/crunch-628x363-1445437801.JPG?resize=980:*")
Comment.create(content:"I love doing crunches after a nice hard workout.", workout: workout_two, user: user_one)
Comment.create(content:"This is a great exercise.", workout: workout_two, user: user_two)
Comment.create(content:"I rather do cardio.", workout: workout_two, user: user_three)

workout_three = Workout.create(title: "Squats", body: "legs", category: "body weight", reps: 10, sets: 5, time: "10 minutes", instructions: "1. Stand facing forward with your chest up.
2. Place your feet shoulder-width apart or slightly wider. Extend your hands straight out in front of you to help keep your balance. You can also hold your hands at chest level or place them behind your head.
3. Bend at your knees and hips, sticking your butt out like you're sitting into an imaginary chair. Keep your chest lifted and your spine neutral, and do not let your lower back round.
4. Squat down as low as you can, keeping your head and chest lifted. Keep your knees over your ankles and press your weight back into your heels.
5. Keep your body tight, and push through your heels to bring yourself back to the starting position. This is one rep.", difficulty: 2, image: "https://cdn2.coachmag.co.uk/sites/coachmag/files/styles/16x9_860/public/2019/06/unweighted-squat-challenge.jpg?itok=DDOKZiH4&timestamp=1560891428")
Comment.create(content:"This is a great exercise to do while at home. Highly recommend!", workout: workout_three, user: user_one)
Comment.create(content:"I used to do about 300 hundred a day when I was still in the WWE. The more it burns, the more effective!", workout: workout_three, user: user_two)
Comment.create(content:"This is an essential exercise and is in at least one of my WODs each week!", workout: workout_three, user: user_three)

workout_four = Workout.create(title: "Plank", body: "abdominal", category: "body weight", reps: 1, sets: 5, time: "1 minute each set", instructions: "1. Get in the pushup position, only put your forearms on the ground instead of your hands. Your elbows should line up directly underneath your shoulders. Toes on the ground.
2. Squeeze your glutes and tighten your abdominals.
3. Keep a neutral neck and spine.
4. Create a straight, strong line from head to toes – a plank, if you will.
5. Hold that position.", difficulty: 2, image: "https://www.silversneakers.com/wp-content/uploads/2019/08/SSBlog_PlankVariation_700x525.jpg")
Comment.create(content:"Great workout for legs at home!", workout: workout_four, user: user_one)
Comment.create(content:"I usually like to hold a heavy medicine ball over my head while I do this to feel the extra burn!", workout: workout_four, user: user_two)
Comment.create(content:"I do enough cardio to not have to do these! Gotta love crossfit!", workout: workout_four, user: user_three)

workout_five = Workout.create(title: "Lunges", body: "legs", category: "body weight", instructions: "1. Stand tall with feet hip-width apart. Engage your core.
2. Take a big step forward with right leg. Start to shift your weight forward so heel hits the floor first.
3. Lower your body until right thigh is parallel to the floor and right shin is vertical. It’s OK if knee shifts forward a little as long as it doesn’t go past right toe. If mobility allows, lightly tap left knee to the floor while keeping weight in right heel.
4. Press into right heel to drive back up to starting position.
5. Repeat on the other side.", reps: 12, sets: 5, time: "18 minutes", difficulty: 2, image: "https://www.t-nation.com/system/publishing/articles/10006718/original/The-Bodyweight-Lunge-Challenge.jpg?1537811817")
Comment.create(content:"Great workout for legs at home!", workout: workout_five, user: user_one)
Comment.create(content:"I usually like to hold a heavy medicine ball over my head while I do this to feel the extra burn!", workout: workout_five, user: user_two)
Comment.create(content:"I incorporate this exercise into all my WODs!", workout: workout_five, user: user_three)

workout_six = Workout.create(title: "Plank raise tap crunch", body: "shoulders", category: "body weight", reps: 10, sets: 5, time: "15 minutes", instructions: "1. Start in a straight arm plank position with your shoulders stacked above your hands and your feet hip-width apart.
2. Extend your right arm forward, then place it back down into the plank.
3. Extend your right arm to the side, then place it back down into the plank.
4. Keep your body in a straight line as you reach your opposite (left) arm under your body, pull your right leg toward your core, and tap your right foot with your left hand.
5. Return to the plank position.
6. Do all of your reps, and then repeat on your opposite side.", difficulty: 3, image: "https://media1.popsugar-assets.com/files/thumbor/608qynueYNtGlVsZpNNjSpscRsQ/fit-in/1024x1024/filters:format_auto-!!-:strip_icc-!!-/2017/06/14/784/n/1922729/4b0aa10159417724bd23c1.78911403_Plank-Shoulder-Tap/i/Plank-Shoulder-Tap.jpg")
Comment.create(content:"This is by far the best exercise!", workout: workout_six, user: user_one)
Comment.create(content:"I still do this everyday, highly recommended!", workout: workout_six, user: user_two)
Comment.create(content:"Not a big fan of planks. I'm a burpee kinda guy.", workout: workout_six, user: user_three)

workout_seven = Workout.create(title: "Burpee", body: "legs", category: "body weight", reps: 10, sets: 5, time: "25 minutes", instructions: "1. Begin in a squat position with hands on the floor, slightly wider than shoulder width.
2. Kick feet back to the starting push-up position.
3. Immediately return feet to the squat position.
4. Jump up as high as possible from the squat, and drop back down to the starting position.
5. Repeat the exercise, moving as fast as possible.", difficulty: 3, image: "https://themaclife.com/wp-content/uploads/2019/10/burpees2.png")
Comment.create(content:"I prefer to lift weights but this is a great cardio that burns a lot of calories.", workout: workout_seven, user: user_one)
Comment.create(content:"I rather do my own stunts than do burpees!", workout: workout_seven, user: user_two)
Comment.create(content:"IMO, this is the most effective exercise. I love it!", workout: workout_seven, user: user_three)

workout_eight = Workout.create(title: "Jumping Jacks", body: "legs", category: "body weight", reps: 30, sets: 3, time: "15 minutes", instructions: "1. Stand upright with your legs together, arms at your sides.
2. Bend your knees slightly, and jump into the air.
3. As you jump, spread your legs to be about shoulder-width apart. Stretch your arms out and over your head.
4 .Jump back to starting position.
5. Repeat.", difficulty: 3, image: "https://cdn1.coachmag.co.uk/sites/coachmag/files/styles/16x9_746/public/2018/08/jumping-jacks.jpg?itok=H3LNmECR&timestamp=1534248088")
Comment.create(content:"This is a good warmup to get the blood flowing!", workout: workout_eight, user: user_one)
Comment.create(content:"This exercise is great!", workout: workout_eight, user: user_two)
Comment.create(content:"I agreed, great exercise!", workout: workout_eight, user: user_three)
