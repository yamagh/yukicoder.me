M, D = gets.split

def get_dp(s)
    dp = []
    # dp[0] = 1
    size = 0
    #puts "---------------"
    s.each_char{|ch|
        dp2 = []
        (0..9).each{|i|
            (dp.size).downto(0).each{|j|
                dp2[j+i] = dp2[j+i].to_i + dp[j].to_i
                puts "i=#{i}, j=#{j} dp2[#{j+i}]=#{dp2[j+i]}"
            }
        }
        num = ch.ord - '0'.ord
        #puts "num=#{num}"
        (0..num-1).each{|j|
            dp2[j+size] = dp2[j+size].to_i + 1
            puts "j=#{j} size=#{size} dp2[j+size]=#{dp2[j+size]}"
        }
        dp = dp2
        size += num
    }
    dp[size] += 1
    return dp
end
dp1 = get_dp(M)
dp2 = get_dp(D)
total = 0
(1..dp1.size).each{|i|
    total += dp1[i].to_i * dp2[i].to_i
    #puts "total=#{total} i=#{i}, dp1[i]=#{dp1[i]}, dp2[i]=#{dp2[i]}"
}
puts total % 1000000009

p dp1
p dp2
#[1, 1, 1, 0, 0, 0, 0, 0, 0, 0]
#[1, 1, 1, 1, 0, 0, 0, 0, 0, 0]

