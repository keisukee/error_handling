class AssertionError < StandardError
end

def _assert expr
  return if expr
  ex = AssertionError.new("assertion failed")
  ex.set_backtrace(caller())
  raise ex  # 本当はここで例外が発生してるけど
end

def main
  _assert 1+1 == 3   # あたかもここで発生したかの
end                  # ように偽装している

main()