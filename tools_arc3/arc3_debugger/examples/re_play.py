import arc_agi
from arcengine import GameAction
arc = arc_agi.Arcade()
# arc = arc_agi.Arcade(arc_api_key="your-api-key-here")
env = arc.make("ls20", render_mode="terminal")

# See the actions you can take, take one, and check your scorecard:

print(env.action_space)
obs = env.step(GameAction.ACTION1)
print(arc.get_scorecard())