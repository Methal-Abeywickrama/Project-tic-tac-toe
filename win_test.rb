module WinTest
  def check_for_win(icon)
    case
    when @spots[:spot1] == icon && @spots[:spot2] == icon && @spots[:spot3] == icon
      true
    when @spots[:spot4] == icon && @spots[:spot5] == icon && @spots[:spot6] == icon
      true
    when @spots[:spot7] == icon && @spots[:spot8] == icon && @spots[:spot9] == icon
      true
    when @spots[:spot1] == icon && @spots[:spot4] == icon && @spots[:spot7] == icon
      true
    when @spots[:spot2] == icon && @spots[:spot5] == icon && @spots[:spot8] == icon
      true
    when @spots[:spot3] == icon && @spots[:spot6] == icon && @spots[:spot9] == icon
      true
    when @spots[:spot1] == icon && @spots[:spot5] == icon && @spots[:spot9] == icon
      true
    when @spots[:spot3] == icon && @spots[:spot5] == icon && @spots[:spot7] == icon
      true
    else
      false
    end
  end
end