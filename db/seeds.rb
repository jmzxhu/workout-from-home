user_one = User.create(email: "Bodybuilder123@email.com", password: "123456", screen_name: "Bodybuilder123")
user_two = User.create(email: "dwaynejohnson@email.com", password: "123456", screen_name: "TheRock")
user_three = User.create(email: "Crossfitguy@email.com", password: "123456", screen_name: "IloveCrossfit")

workout_one = Workout.create(title: "Push-ups", body: "chest", category: "body weight", reps: 10, sets: 5, time: "15 minutes", instructions: "1. Get down on all fours, 2. placing your hands slightly wider than your shoulders. 3. Straighten your arms and legs. 4. Lower your body until your chest nearly touches the floor. 5. Pause, then push yourself back up. 6. Repeat.", difficulty: 1, image: "https://cimg3.ibsrv.net/cimg/www.fitday.com/693x350_85-1/503/26girlpush-108503.jpg")

Workout.create(title: "crunches", body: "abdominal", category: "body weight", reps: 10, sets: 5, time: "15 minutes", instructions: "1. Lie down on your back.
2. Bend your legs and stabilize your lower body.
3. Cross your hands to opposite shoulders, or place them behind your ears without pulling on your neck.
4. Lift your head and shoulder blades from the ground. Exhale as you rise.
5. Lower, returning to your starting point. Inhale as you lower.", difficulty: 2, image: "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/news/featured_images/crunch-628x363-1445437801.JPG?resize=980:*")

Workout.create(title: "squats", body: "legs", category: "body weight", reps: 10, sets: 5, time: "15 minutes", instructions: "1. Stand facing forward with your chest up.
2. Place your feet shoulder-width apart or slightly wider. Extend your hands straight out in front of you to help keep your balance. You can also hold your hands at chest level or place them behind your head.
3. Bend at your knees and hips, sticking your butt out like you're sitting into an imaginary chair. Keep your chest lifted and your spine neutral, and do not let your lower back round.
4. Squat down as low as you can, keeping your head and chest lifted. Keep your knees over your ankles and press your weight back into your heels.
5. Keep your body tight, and push through your heels to bring yourself back to the starting position. This is one rep.", difficulty: 1, image: "https://cdn2.coachmag.co.uk/sites/coachmag/files/styles/16x9_860/public/2019/06/unweighted-squat-challenge.jpg?itok=DDOKZiH4&timestamp=1560891428")

Workout.create(title: "plank", body: "abdominal", category: "body weight", reps: 1, sets: 5, time: "1 minute each set", instructions: "1. Get in the pushup position, only put your forearms on the ground instead of your hands. Your elbows should line up directly underneath your shoulders. Toes on the ground.
2. Squeeze your glutes and tighten your abdominals.
3. Keep a neutral neck and spine.
4. Create a straight, strong line from head to toes – a plank, if you will.
5. Hold that position.", difficulty: 2, image: "https://media.self.com/photos/5d41cebd8dbcaa00089d40cc/master/w_1200%2Cc_limit/forearm-plank-crystal.jpg")

Workout.create(title: "Lunges", body: "legs", category: "body weight", instructions: "1. Stand tall with feet hip-width apart. Engage your core.

2. Take a big step forward with right leg. Start to shift your weight forward so heel hits the floor first.

3. Lower your body until right thigh is parallel to the floor and right shin is vertical. It’s OK if knee shifts forward a little as long as it doesn’t go past right toe. If mobility allows, lightly tap left knee to the floor while keeping weight in right heel.

4. Press into right heel to drive back up to starting position.

5. Repeat on the other side.", reps: 10, sets: 5, time: "15 minutes", difficulty: 2, image: "https://www.t-nation.com/system/publishing/articles/10006718/original/The-Bodyweight-Lunge-Challenge.jpg?1537811817")

Workout.create(title: "Plank raise tap crunch", body: "shoulders", category: "body weight", reps: 10, sets: 5, time: "15 minutes", instructions: "1. Start in a straight arm plank position with your shoulders stacked above your hands and your feet hip-width apart.
2. Extend your right arm forward, then place it back down into the plank.
3. Extend your right arm to the side, then place it back down into the plank.
4. Keep your body in a straight line as you reach your opposite (left) arm under your body, pull your right leg toward your core, and tap your right foot with your left hand.
5. Return to the plank position.
6. Do all of your reps, and then repeat on your opposite side.", difficulty: 3, image: "https://media1.popsugar-assets.com/files/thumbor/608qynueYNtGlVsZpNNjSpscRsQ/fit-in/1024x1024/filters:format_auto-!!-:strip_icc-!!-/2017/06/14/784/n/1922729/4b0aa10159417724bd23c1.78911403_Plank-Shoulder-Tap/i/Plank-Shoulder-Tap.jpg")

Comment.create(content:"This is by far the best exercise!", workout: workout_one, user: user_one)

Comment.create(content:"I still do this everyday, highly recommended!", workout: workout_one, user: user_two)

Comment.create(content:"I incorporate this into all my WOD!", workout: workout_one, user: user_three)
