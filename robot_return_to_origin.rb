# There is a robot starting at position (0, 0), the origin, on a 2D plane. Given a sequence of its moves, judge if this robot ends up at (0, 0) after it completes its moves.

# The move sequence is represented by a string, and the character moves[i] represents its ith move. Valid moves are R (right), L (left), U (up), and D (down). If the robot returns to the origin after it finishes all of its moves, return true. Otherwise, return false.

# Note: The way that the robot is "facing" is irrelevant. "R" will always make the robot move to the right once, "L" will always make it move left, etc. Also, assume that the magnitude of the robot's movement is the same for each move.

# set coordinates to (0, 0)
# if x axis values change, modify value x
# if y axis values change, modify value y
# if coordinates still at (0, 0), return true

def judge_circle(moves)
  coordinates = [0, 0]

  i = 0

  until i == moves.length
    case moves[i]
    when "U"
      coordinates[1] += 1
    when "D"
      coordinates[1] -= 1
    when "L"
      coordinates[0] -= 1
    when "R"
      coordinates[0] += 1
    end

    i += 1
  end

  coordinates == [0, 0]
end

example_one = "UD"

judge_circle(example_one)

# Output: true

example_two = "LL"

judge_circle(example_two)

# Output: false