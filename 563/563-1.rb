p gets.split(/[^…]+/).inject(0){|m,i| m<i.length ? i.length : m}

